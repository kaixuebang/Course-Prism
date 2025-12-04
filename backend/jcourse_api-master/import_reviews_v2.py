#!/usr/bin/env python3
"""
数据导入脚本 - 将课程评价数据导入到评课社区现有课程中
"""
import os
import sys
import django
import csv
import random
from datetime import datetime, timedelta
from difflib import SequenceMatcher

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


def similarity(a, b):
    """计算两个字符串的相似度"""
    return SequenceMatcher(None, a, b).ratio()


def find_matching_course(course_name, teacher_name):
    """在现有课程中查找匹配的课程"""
    # 首先尝试精确匹配课程名和教师名
    courses = Course.objects.filter(name=course_name, main_teacher__name=teacher_name)
    if courses.exists():
        return courses.first()
    
    # 如果没有精确匹配，尝试只匹配课程名
    courses = Course.objects.filter(name=course_name)
    if courses.exists():
        # 如果有多个相同课程名，尝试匹配教师名
        best_match = None
        best_similarity = 0
        for course in courses:
            sim = similarity(course.main_teacher.name, teacher_name)
            if sim > best_similarity:
                best_similarity = sim
                best_match = course
        
        # 如果相似度大于0.6，认为是匹配的
        if best_similarity > 0.6:
            return best_match
        else:
            # 否则返回第一个匹配的课程
            return courses.first()
    
    # 如果课程名也不匹配，尝试模糊匹配课程名
    all_courses = Course.objects.all()
    best_match = None
    best_similarity = 0
    
    for course in all_courses:
        # 计算课程名相似度
        course_sim = similarity(course.name, course_name)
        # 计算教师名相似度
        teacher_sim = similarity(course.main_teacher.name, teacher_name)
        # 综合相似度，课程名权重更高
        total_sim = course_sim * 0.7 + teacher_sim * 0.3
        
        if total_sim > best_similarity:
            best_similarity = total_sim
            best_match = course
    
    # 如果综合相似度大于0.5，认为是匹配的
    if best_similarity > 0.5:
        return best_match
    
    return None


def generate_rating_from_content(content):
    """根据评价内容生成评分 (1-5)"""
    positive_words = ['好', '强推', '推荐', '不错', '很好', '棒', '优秀', '给分高', '巨高', '巨好', '无脑冲']
    negative_words = ['不好', '差', '烂', '垃圾', '难', '严格', '给分低', '坑', '别选']
    
    positive_count = sum(1 for word in positive_words if word in content)
    negative_count = sum(1 for word in negative_words if word in content)
    
    if positive_count > negative_count:
        return random.randint(4, 5)
    elif negative_count > positive_count:
        return random.randint(1, 2)
    else:
        return random.randint(3, 4)


def check_duplicate(course, comment, existing_reviews):
    """检查是否为重复评价"""
    # 检查相同课程的相似评价内容
    for review in existing_reviews:
        if (review.course == course and 
            similarity(review.comment, comment) > 0.85):
            return True
    return False


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


def import_reviews():
    """导入评价数据到现有课程"""
    csv_file_path = '/opt/jcourse/data/merged_course_reviews.csv'
    
    # 获取测试用户
    test_users = list(User.objects.filter(username__startswith='test_user_'))
    if not test_users:
        print("没有找到测试用户，请先创建测试用户")
        return
    
    print(f"找到 {len(test_users)} 个测试用户")
    
    # 获取现有评价用于重复检查
    existing_reviews = list(Review.objects.all())
    print(f"现有评价数量: {len(existing_reviews)}")
    
    # 获取默认学期
    default_semester = get_default_semester()
    
    imported_count = 0
    skipped_count = 0
    error_count = 0
    not_found_count = 0
    
    with open(csv_file_path, 'r', encoding='utf-8') as csvfile:
        reader = csv.DictReader(csvfile)
        
        with transaction.atomic():
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
                    
                    # 查找匹配的课程
                    course = find_matching_course(course_name, teacher_name)
                    if not course:
                        print(f"未找到匹配课程: {course_name} - {teacher_name}")
                        not_found_count += 1
                        continue
                    
                    # 检查重复
                    if check_duplicate(course, review_content, existing_reviews):
                        print(f"跳过重复评价: {course.name} - {course.main_teacher.name}")
                        skipped_count += 1
                        continue
                    
                    # 随机选择用户
                    user = random.choice(test_users)
                    
                    # 检查该用户是否已经对此课程评价过
                    if Review.objects.filter(user=user, course=course).exists():
                        # 尝试其他用户
                        available_users = [u for u in test_users if not Review.objects.filter(user=u, course=course).exists()]
                        if available_users:
                            user = random.choice(available_users)
                        else:
                            print(f"所有用户都已对课程 {course.name} 评价过，跳过")
                            skipped_count += 1
                            continue
                    
                    # 解析日期
                    post_date = parse_date(post_date_str)
                    
                    # 生成评分
                    rating = generate_rating_from_content(review_content)
                    
                    # 创建评价
                    review = Review.objects.create(
                        user=user,
                        course=course,
                        semester=default_semester,
                        rating=rating,
                        comment=review_content,
                        created_at=post_date
                    )
                    
                    imported_count += 1
                    existing_reviews.append(review)  # 添加到现有评价列表中
                    
                    print(f"成功导入: {course.name} ({course.main_teacher.name}) - 评分: {rating}")
                    
                    if imported_count % 20 == 0:
                        print(f"已导入 {imported_count} 条评价...")
                    
                except Exception as e:
                    print(f"处理第 {i+1} 行时出错: {e}")
                    error_count += 1
                    continue
    
    print(f"\n导入完成:")
    print(f"成功导入: {imported_count} 条")
    print(f"跳过重复: {skipped_count} 条") 
    print(f"未找到课程: {not_found_count} 条")
    print(f"处理错误: {error_count} 条")
    print(f"总评价数: {Review.objects.count()} 条")


if __name__ == '__main__':
    print("开始导入课程评价数据到现有课程...")
    import_reviews()
    print("导入完成！")