#!/usr/bin/env python3
"""
正确的数据导入脚本 - 精确匹配课程名称和教师姓名
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
    """清理课程名称，去除"2024级(上)"等前缀"""
    # 去除"2024级(上) "、"2024级(下) "等前缀
    cleaned = re.sub(r'^\d{4}级\([上下]\)\s*', '', course_name)
    return cleaned.strip()


def clean_teacher_name(teacher_name):
    """清理教师姓名，处理多个教师的情况"""
    # 如果有多个教师用斜杠分隔，只取第一个
    if '/' in teacher_name:
        teacher_name = teacher_name.split('/')[0]
    return teacher_name.strip()


def find_exact_matching_course(course_name, teacher_name):
    """精确匹配课程名称和教师姓名"""
    # 清理课程名和教师名
    cleaned_course_name = clean_course_name(course_name)
    cleaned_teacher_name = clean_teacher_name(teacher_name)
    
    # 首先尝试精确匹配清理后的名称
    course = Course.objects.filter(
        name=cleaned_course_name,
        main_teacher__name=cleaned_teacher_name
    ).first()
    
    if course:
        return course
    
    # 如果清理后没找到，尝试原始名称
    course = Course.objects.filter(
        name=course_name,
        main_teacher__name=teacher_name
    ).first()
    
    if course:
        return course
    
    # 尝试清理后的课程名配原始教师名
    course = Course.objects.filter(
        name=cleaned_course_name,
        main_teacher__name=teacher_name
    ).first()
    
    if course:
        return course
    
    # 尝试原始课程名配清理后的教师名
    course = Course.objects.filter(
        name=course_name,
        main_teacher__name=cleaned_teacher_name
    ).first()
    
    return course


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


def import_reviews_correctly():
    """正确导入评价数据 - 只进行精确匹配"""
    csv_file_path = '/opt/jcourse/data/merged_course_reviews.csv'
    
    # 获取测试用户
    test_users = list(User.objects.filter(username__startswith='test_user_'))
    if not test_users:
        print("没有找到测试用户")
        return
    
    print(f"找到 {len(test_users)} 个测试用户")
    
    # 获取现有评价数据（用于去重）
    existing_reviews = list(Review.objects.all())
    print(f"现有评价数量: {len(existing_reviews)}")
    
    # 获取默认学期
    default_semester = get_default_semester()
    
    imported_count = 0
    skipped_count = 0
    error_count = 0
    not_found_count = 0
    duplicate_count = 0
    
    # 用于跟踪用户在每门课程的评价情况
    user_course_reviews = {}
    for review in existing_reviews:
        key = (review.user.id, review.course.id)
        user_course_reviews[key] = True
    
    # 批量处理
    reviews_to_create = []
    batch_size = 50
    
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
                
                # 精确匹配课程
                course = find_exact_matching_course(course_name, teacher_name)
                if not course:
                    print(f"未找到精确匹配课程: {course_name} - {teacher_name}")
                    not_found_count += 1
                    continue
                
                # 检查是否有相同内容的评价（简单去重）
                duplicate_found = False
                for existing_review in existing_reviews:
                    if (existing_review.course.id == course.id and 
                        existing_review.comment == review_content):
                        duplicate_found = True
                        break
                
                if duplicate_found:
                    duplicate_count += 1
                    continue
                
                # 选择一个还没有对此课程评价过的用户
                available_users = []
                for user in test_users:
                    key = (user.id, course.id)
                    if key not in user_course_reviews:
                        available_users.append(user)
                
                if not available_users:
                    print(f"所有测试用户都已对课程 {course.name}({course.main_teacher.name}) 评价过，跳过")
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
                
                # 标记该用户已对此课程评价过
                user_course_reviews[(user.id, course.id)] = True
                
                # 添加到已存在评价列表中以便后续去重
                existing_reviews.append(review)
                
                print(f"准备导入: {course.name}({course.main_teacher.name}) - 评分: {rating} - 用户: {user.username}")
                
                if len(reviews_to_create) >= batch_size:
                    # 批量创建
                    try:
                        Review.objects.bulk_create(reviews_to_create, ignore_conflicts=True)
                        imported_count += len(reviews_to_create)
                        print(f"批量导入了 {len(reviews_to_create)} 条评价，总计: {imported_count}")
                        reviews_to_create = []
                    except Exception as e:
                        print(f"批量创建时出错: {e}")
                        error_count += len(reviews_to_create)
                        reviews_to_create = []
                
            except Exception as e:
                print(f"处理第 {i+1} 行时出错: {e}")
                error_count += 1
                continue
        
        # 处理剩余的评价
        if reviews_to_create:
            try:
                Review.objects.bulk_create(reviews_to_create, ignore_conflicts=True)
                imported_count += len(reviews_to_create)
                print(f"最后批量导入了 {len(reviews_to_create)} 条评价")
            except Exception as e:
                print(f"最后批量创建时出错: {e}")
                error_count += len(reviews_to_create)
    
    print(f"\n正确导入完成:")
    print(f"成功导入: {imported_count} 条")
    print(f"跳过重复: {duplicate_count} 条")
    print(f"用户限制跳过: {skipped_count} 条")
    print(f"未找到精确匹配课程: {not_found_count} 条")
    print(f"处理错误: {error_count} 条")
    print(f"当前总评价数: {Review.objects.count()} 条")


if __name__ == '__main__':
    print("开始正确导入课程评价数据（精确匹配课程名称和教师姓名）...")
    import_reviews_correctly()
    print("正确导入完成！")