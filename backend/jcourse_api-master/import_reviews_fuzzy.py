#!/usr/bin/env python3
"""
模糊匹配导入脚本 - 正确处理前缀和课程名称模糊匹配
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
        month_day = date_str.strip()
        if len(month_day) == 5 and month_day[2] == '-':
            month, day = map(int, month_day.split('-'))
            return datetime(2024, month, day, 12, 0, 0, tzinfo=timezone.get_current_timezone())
    except:
        pass
    start_date = datetime(2024, 1, 1, tzinfo=timezone.get_current_timezone())
    end_date = datetime(2024, 12, 31, tzinfo=timezone.get_current_timezone())
    random_days = random.randint(0, (end_date - start_date).days)
    return start_date + timedelta(days=random_days)


def clean_course_name(course_name):
    """清理课程名称 - 正确去除2024级前缀"""
    cleaned = course_name.strip()
    
    # 去除2024级(上)、2024级(下)等前缀
    patterns = [
        r'^2024级\(上\)\s+',
        r'^2024级\(下\)\s+', 
        r'^2023级\(上\)\s+',
        r'^2023级\(下\)\s+',
        r'^\d{4}级\([上下]\)\s+',
    ]
    
    for pattern in patterns:
        cleaned = re.sub(pattern, '', cleaned)
    
    return cleaned.strip()


def clean_teacher_name(teacher_name):
    """清理教师姓名"""
    if '/' in teacher_name:
        teacher_name = teacher_name.split('/')[0]
    return teacher_name.strip()


def extract_base_course_name(course_name):
    """提取基础课程名称，去除I、II、III等后缀"""
    # 去除罗马数字后缀
    patterns = [
        r'[IⅠ]+$',      # 去除末尾的 I 或 Ⅰ
        r'[IⅠⅡⅢⅣ]+$',  # 去除末尾的罗马数字
        r'\\d+$',        # 去除末尾的阿拉伯数字
    ]
    
    base_name = course_name.strip()
    for pattern in patterns:
        base_name = re.sub(pattern, '', base_name).strip()
    
    return base_name


def find_fuzzy_matching_courses(course_name, teacher_name):
    """模糊匹配课程 - 找到所有符合条件的课程"""
    
    # 清理输入
    cleaned_course = clean_course_name(course_name)
    cleaned_teacher = clean_teacher_name(teacher_name)
    
    print(f"原始: {course_name} - {teacher_name}")
    print(f"清理后: {cleaned_course} - {cleaned_teacher}")
    
    matching_courses = []
    
    # 策略1: 精确匹配清理后的名称
    exact_matches = Course.objects.filter(
        name=cleaned_course,
        main_teacher__name=cleaned_teacher
    )
    matching_courses.extend(exact_matches)
    
    if matching_courses:
        print(f"精确匹配找到 {len(matching_courses)} 门课程")
        return matching_courses
    
    # 策略2: 基础课程名 + 教师名的模糊匹配
    base_course_name = extract_base_course_name(cleaned_course)
    print(f"基础课程名: {base_course_name}")
    
    # 查找所有以基础课程名开头且教师匹配的课程
    fuzzy_matches = Course.objects.filter(
        name__startswith=base_course_name,
        main_teacher__name=cleaned_teacher
    )
    
    # 进一步筛选：确保是相同的基础课程
    for course in fuzzy_matches:
        course_base = extract_base_course_name(course.name)
        if course_base == base_course_name:
            matching_courses.append(course)
    
    if matching_courses:
        print(f"模糊匹配找到 {len(matching_courses)} 门课程:")
        for course in matching_courses:
            print(f"  - {course.name} ({course.main_teacher.name})")
        return matching_courses
    
    # 策略3: 更宽泛的包含匹配
    contains_matches = Course.objects.filter(
        name__icontains=base_course_name,
        main_teacher__name=cleaned_teacher
    )
    
    for course in contains_matches:
        if base_course_name in course.name:
            matching_courses.append(course)
    
    if matching_courses:
        print(f"包含匹配找到 {len(matching_courses)} 门课程:")
        for course in matching_courses:
            print(f"  - {course.name} ({course.main_teacher.name})")
    else:
        print("未找到匹配课程")
    
    return matching_courses


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


def import_reviews_fuzzy():
    """模糊匹配导入评价"""
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
    multiple_match_count = 0
    
    reviews_to_create = []
    batch_size = 50
    
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
                
                print(f"\\n处理第{i+1}行:")
                
                # 模糊匹配课程
                matching_courses = find_fuzzy_matching_courses(course_name, teacher_name)
                if not matching_courses:
                    not_found_count += 1
                    not_found_details.append({
                        'original_course': course_name,
                        'original_teacher': teacher_name,
                        'cleaned_course': clean_course_name(course_name),
                        'cleaned_teacher': clean_teacher_name(teacher_name)
                    })
                    continue
                
                # 对每个匹配的课程都创建评价
                created_for_this_review = 0
                for course in matching_courses:
                    # 检查是否有相同内容的评价（去重）
                    if (course.id, review_content) in existing_review_contents:
                        print(f"  跳过重复评价: {course.name}")
                        duplicate_count += 1
                        continue
                    
                    # 选择一个还没有对此课程评价过的用户
                    available_users = []
                    for user in test_users:
                        if (user.id, course.id) not in user_course_reviews:
                            available_users.append(user)
                    
                    if not available_users:
                        print(f"  所有用户都已评价过: {course.name}")
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
                    
                    created_for_this_review += 1
                    print(f"  准备导入到: {course.name}({course.main_teacher.name}) - 评分: {rating} - 用户: {user.username}")
                
                if created_for_this_review > 1:
                    multiple_match_count += 1
                    print(f"  该评价匹配到{created_for_this_review}门课程")
                
                imported_count += created_for_this_review
                
                if len(reviews_to_create) >= batch_size:
                    # 批量创建
                    try:
                        Review.objects.bulk_create(reviews_to_create, ignore_conflicts=True)
                        print(f"\\n批量导入了 {len(reviews_to_create)} 条评价")
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
                print(f"\\n最后批量导入了 {len(reviews_to_create)} 条评价")
            except Exception as e:
                print(f"最后批量创建时出错: {e}")
    
    print(f"\\n模糊匹配导入结果:")
    print(f"成功导入: {imported_count} 条")
    print(f"跳过重复: {duplicate_count} 条")
    print(f"用户限制跳过: {skipped_count} 条") 
    print(f"未找到匹配课程: {not_found_count} 条")
    print(f"多课程匹配: {multiple_match_count} 条评价匹配到多门课程")
    print(f"当前总评价数: {Review.objects.count()} 条")
    
    # 显示未匹配的示例
    if not_found_details:
        print(f"\\n前10个未匹配的课程示例:")
        for i, detail in enumerate(not_found_details[:10]):
            print(f"{i+1:2d}. 原始: {detail['original_course']} - {detail['original_teacher']}")
            print(f"    清理: {detail['cleaned_course']} - {detail['cleaned_teacher']}")


if __name__ == '__main__':
    print("开始模糊匹配导入课程评价数据...")
    import_reviews_fuzzy()
    print("模糊导入完成！")