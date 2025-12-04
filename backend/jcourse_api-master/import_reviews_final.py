#!/usr/bin/env python3
"""
最终版本的数据导入脚本 - 改进的前缀处理和匹配逻辑
"""
import os
import sys
import django
import csv
import random
import re
from datetime import datetime, timedelta

# 设置Django环境
sys.path.append('/opt/jcourse/app/jcourse_api-master')
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'jcourse.settings')
django.setup()

from django.contrib.auth.models import User
from jcourse_api.models import Course, Review, Semester
from django.utils import timezone
from django.db import transaction


def parse_date(date_str):
    """解析日期字符串，如 '06-13' 格式"""
    try:
        # 假设年份为2024
        month_day = date_str.strip()
        if len(month_day) == 5 and month_day[2] == '-':
            month, day = map(int, month_day.split('-'))
            # 创建一个2024年的日期
            return datetime(2024, month, day, 12, 0, 0, tzinfo=timezone.get_current_timezone())
    except:
        pass
    # 如果解析失败，返回一个随机的2024年日期
    start_date = datetime(2024, 1, 1, tzinfo=timezone.get_current_timezone())
    end_date = datetime(2024, 12, 31, tzinfo=timezone.get_current_timezone())
    random_days = random.randint(0, (end_date - start_date).days)
    return start_date + timedelta(days=random_days)


def clean_course_name(course_name):
    """改进的课程名称清理函数"""
    # 去除各种可能的前缀模式
    patterns = [
        r'^2024级\([上下]\)\s*',  # 2024级(上) 或 2024级(下)
        r'^2023级\([上下]\)\s*',  # 2023级(上) 或 2023级(下)
        r'^2025级\([上下]\)\s*',  # 2025级(上) 或 2025级(下)
        r'^\d{4}级\([上下]\)\s*',  # 通用年级前缀
    ]
    
    cleaned = course_name.strip()
    for pattern in patterns:
        cleaned = re.sub(pattern, '', cleaned)
    
    # 去除多余的空格
    cleaned = re.sub(r'\s+', ' ', cleaned).strip()
    
    return cleaned


def clean_teacher_name(teacher_name):
    """改进的教师姓名清理函数"""
    # 如果有多个教师用斜杠分隔，只取第一个
    if '/' in teacher_name:
        teacher_name = teacher_name.split('/')[0]
    
    # 去除多余的空格和特殊字符
    teacher_name = teacher_name.strip()
    
    return teacher_name


def find_matching_course(course_name, teacher_name):
    """改进的课程匹配函数 - 尝试多种组合"""
    
    # 清理课程名和教师名
    cleaned_course_name = clean_course_name(course_name)
    cleaned_teacher_name = clean_teacher_name(teacher_name)
    
    # 定义所有可能的匹配组合
    match_combinations = [
        # 优先级1: 清理后的名称精确匹配
        (cleaned_course_name, cleaned_teacher_name),
        # 优先级2: 原始名称精确匹配
        (course_name, teacher_name),
        # 优先级3: 清理后课程名 + 原始教师名
        (cleaned_course_name, teacher_name),
        # 优先级4: 原始课程名 + 清理后教师名
        (course_name, cleaned_teacher_name),
    ]
    
    # 尝试每种组合
    for course_variant, teacher_variant in match_combinations:
        if not course_variant.strip() or not teacher_variant.strip():
            continue
            
        course = Course.objects.filter(
            name=course_variant,
            main_teacher__name=teacher_variant
        ).first()
        
        if course:
            return course
    
    return None


def generate_rating_from_content(content):
    """根据评价内容生成评分 (1-5)"""
    positive_words = ['好', '强推', '推荐', '不错', '很好', '棒', '优秀', '给分高', '巨高', '巨好', '无脑冲', 'yyds', '捞捞']
    negative_words = ['不好', '差', '烂', '垃圾', '难', '严格', '给分低', '坑', '别选', '不幸']
    
    positive_count = sum(1 for word in positive_words if word in content)
    negative_count = sum(1 for word in negative_words if word in content)
    
    if positive_count > negative_count:
        return random.randint(4, 5)
    elif negative_count > positive_count:
        return random.randint(1, 2)
    else:
        return random.randint(3, 4)


def get_default_semester():
    """获取或创建默认学期"""
    semester, created = Semester.objects.get_or_create(
        name="2024-1",
        defaults={
            'start_date': datetime(2024, 2, 1, tzinfo=timezone.get_current_timezone()),
            'end_date': datetime(2024, 7, 31, tzinfo=timezone.get_current_timezone())
        }
    )
    return semester


def import_reviews_final():
    """最终版本的评价导入 - 改进前缀处理"""
    csv_file_path = '/opt/jcourse/data/merged_course_reviews.csv'
    
    # 获取测试用户
    test_users = list(User.objects.filter(username__startswith='test_user_'))
    if not test_users:
        print("没有找到测试用户")
        return
    
    print(f"找到 {len(test_users)} 个测试用户")
    
    # 获取现有评价数据（用于去重）
    existing_review_contents = set()
    user_course_reviews = set()
    
    for review in Review.objects.all():
        existing_review_contents.add((review.course.id, review.comment))
        user_course_reviews.add((review.user.id, review.course.id))
    
    print(f"现有评价数量: {len(existing_review_contents)}")
    
    # 获取默认学期
    default_semester = get_default_semester()
    
    imported_count = 0
    skipped_count = 0
    not_found_count = 0
    duplicate_count = 0
    
    # 批量处理
    reviews_to_create = []
    batch_size = 50
    
    # 统计信息
    match_stats = {
        'cleaned_both': 0,
        'original_both': 0, 
        'cleaned_course_original_teacher': 0,
        'original_course_cleaned_teacher': 0
    }
    
    not_found_details = []
    
    with open(csv_file_path, 'r', encoding='utf-8') as csvfile:
        reader = csv.DictReader(csvfile)
        
        for i, row in enumerate(reader):
            try:
                course_name = row['Course'].strip()
                teacher_name = row['Professor'].strip()
                post_date_str = row['PostDate'].strip()
                review_content = row['ReviewContent'].strip()
                
                # 跳过空内容
                if not course_name or not teacher_name or not review_content:
                    skipped_count += 1
                    continue
                
                # 匹配课程
                course = find_matching_course(course_name, teacher_name)
                if not course:
                    not_found_count += 1
                    not_found_details.append({
                        'original_course': course_name,
                        'original_teacher': teacher_name,
                        'cleaned_course': clean_course_name(course_name),
                        'cleaned_teacher': clean_teacher_name(teacher_name)
                    })
                    continue
                
                # 检查是否有相同内容的评价（去重）
                if (course.id, review_content) in existing_review_contents:
                    duplicate_count += 1
                    continue
                
                # 选择一个还没有对此课程评价过的用户
                available_users = []
                for user in test_users:
                    if (user.id, course.id) not in user_course_reviews:
                        available_users.append(user)
                
                if not available_users:
                    skipped_count += 1
                    continue
                
                # 随机选择一个可用用户
                user = random.choice(available_users)
                
                # 解析日期
                post_date = parse_date(post_date_str)
                
                # 生成评分
                rating = generate_rating_from_content(review_content)
                
                # 准备创建评价
                review = Review(
                    user=user,
                    course=course,
                    semester=default_semester,
                    rating=rating,
                    comment=review_content,
                    created_at=post_date
                )
                
                reviews_to_create.append(review)
                
                # 更新跟踪集合
                user_course_reviews.add((user.id, course.id))
                existing_review_contents.add((course.id, review_content))
                
                print(f"准备导入: {course.name}({course.main_teacher.name}) - 评分: {rating}")
                
                if len(reviews_to_create) >= batch_size:
                    # 批量创建
                    try:
                        Review.objects.bulk_create(reviews_to_create, ignore_conflicts=True)
                        imported_count += len(reviews_to_create)
                        print(f"批量导入了 {len(reviews_to_create)} 条评价，总计: {imported_count}")
                        reviews_to_create = []
                    except Exception as e:
                        print(f"批量创建时出错: {e}")
                        reviews_to_create = []
                
            except Exception as e:
                print(f"处理第 {i+1} 行时出错: {e}")
                continue
        
        # 处理剩余的评价
        if reviews_to_create:
            try:
                Review.objects.bulk_create(reviews_to_create, ignore_conflicts=True)
                imported_count += len(reviews_to_create)
                print(f"最后批量导入了 {len(reviews_to_create)} 条评价")
            except Exception as e:
                print(f"最后批量创建时出错: {e}")
    
    print(f"\n最终导入结果:")
    print(f"成功导入: {imported_count} 条")
    print(f"跳过重复: {duplicate_count} 条") 
    print(f"用户限制跳过: {skipped_count} 条")
    print(f"未找到匹配课程: {not_found_count} 条")
    print(f"当前总评价数: {Review.objects.count()} 条")
    
    # 显示一些未匹配的例子
    if not_found_details:
        print(f"\n前10个未匹配的课程示例:")
        for i, detail in enumerate(not_found_details[:10]):
            print(f"{i+1:2d}. 原始: {detail['original_course']} - {detail['original_teacher']}")
            print(f"    清理: {detail['cleaned_course']} - {detail['cleaned_teacher']}")


if __name__ == '__main__':
    print("开始最终版本的课程评价数据导入...")
    import_reviews_final()
    print("导入完成！")