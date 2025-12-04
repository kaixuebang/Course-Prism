#!/usr/bin/env python3
"""
导入失败课程的脚本 - 处理含有"2024级"前缀的课程名称
"""
import os
import sys
import django
import csv
import random
import re
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


def clean_course_name(course_name):
    """清理课程名称，去除"2024级(上)"等前缀"""
    # 去除"2024级(上) "、"2024级(下) "等前缀
    cleaned = re.sub(r'^\d{4}级\([上下]\)\s*', '', course_name)
    # 去除多个斜杠分隔的教师名中的多余信息
    return cleaned.strip()


def clean_teacher_name(teacher_name):
    """清理教师姓名，处理多个教师的情况"""
    # 如果有多个教师用斜杠分隔，只取第一个
    if '/' in teacher_name:
        teacher_name = teacher_name.split('/')[0]
    return teacher_name.strip()


def build_course_index():
    """构建课程索引以提高查询效率"""
    print("正在构建课程索引...")
    course_index = {}
    teacher_index = {}
    name_index = {}
    
    # 构建精确匹配索引
    for course in Course.objects.select_related('main_teacher').all():
        course_name = course.name
        teacher_name = course.main_teacher.name
        
        # 课程名 + 教师名的精确匹配
        key = f"{course_name}|{teacher_name}"
        course_index[key] = course
        
        # 只按课程名索引，用于后续匹配
        if course_name not in teacher_index:
            teacher_index[course_name] = []
        teacher_index[course_name].append(course)
        
        # 按课程名建立索引（用于模糊匹配）
        name_index[course_name.lower()] = course
    
    print(f"构建完成，索引了 {len(course_index)} 个精确匹配项")
    return course_index, teacher_index, name_index


def find_matching_course(course_name, teacher_name, course_index, teacher_index, name_index):
    """在现有课程中查找匹配的课程（增强版）"""
    # 清理课程名和教师名
    cleaned_course_name = clean_course_name(course_name)
    cleaned_teacher_name = clean_teacher_name(teacher_name)
    
    # 首先尝试清理后的精确匹配
    exact_key = f"{cleaned_course_name}|{cleaned_teacher_name}"
    if exact_key in course_index:
        return course_index[exact_key]
    
    # 尝试原始的精确匹配
    original_key = f"{course_name}|{teacher_name}"
    if original_key in course_index:
        return course_index[original_key]
    
    # 尝试只匹配清理后的课程名
    if cleaned_course_name in teacher_index:
        courses = teacher_index[cleaned_course_name]
        if len(courses) == 1:
            return courses[0]
        
        # 如果有多个相同课程名，尝试匹配教师名
        best_match = None
        best_similarity = 0
        for course in courses:
            sim = similarity(course.main_teacher.name, cleaned_teacher_name)
            if sim > best_similarity:
                best_similarity = sim
                best_match = course
        
        # 如果相似度大于0.6，认为是匹配的
        if best_similarity > 0.6:
            return best_match
        else:
            # 否则返回第一个匹配的课程
            return courses[0]
    
    # 尝试原始课程名匹配
    if course_name in teacher_index:
        courses = teacher_index[course_name]
        if len(courses) == 1:
            return courses[0]
        
        best_match = None
        best_similarity = 0
        for course in courses:
            sim = similarity(course.main_teacher.name, teacher_name)
            if sim > best_similarity:
                best_similarity = sim
                best_match = course
        
        if best_similarity > 0.6:
            return best_match
        else:
            return courses[0]
    
    # 最后尝试模糊匹配课程名
    cleaned_lower = cleaned_course_name.lower()
    best_match = None
    best_similarity = 0
    
    for existing_name, course in name_index.items():
        sim = similarity(existing_name, cleaned_lower)
        if sim > best_similarity:
            best_similarity = sim
            best_match = course
    
    # 如果相似度大于0.8，认为是匹配的
    if best_similarity > 0.8:
        return best_match
    
    return None


def generate_rating_from_content(content):
    """根据评价内容生成评分 (1-5)"""
    positive_words = ['好', '强推', '推荐', '不错', '很好', '棒', '优秀', '给分高', '巨高', '巨好', '无脑冲', 'yyds']
    negative_words = ['不好', '差', '烂', '垃圾', '难', '严格', '给分低', '坑', '别选']
    
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


def import_failed_reviews():
    """导入之前失败的评价数据"""
    csv_file_path = '/opt/jcourse/data/merged_course_reviews.csv'
    
    # 获取测试用户
    test_users = list(User.objects.filter(username__startswith='test_user_'))
    if not test_users:
        print("没有找到测试用户")
        return
    
    print(f"找到 {len(test_users)} 个测试用户")
    
    # 构建课程索引
    course_index, teacher_index, name_index = build_course_index()
    
    # 获取现有评价数据（用Set来快速查重）
    existing_review_signatures = set()
    for review in Review.objects.select_related('course', 'course__main_teacher').all():
        signature = f"{review.course.id}|{review.comment[:50]}"
        existing_review_signatures.add(signature)
    
    print(f"现有评价数量: {len(existing_review_signatures)}")
    
    # 获取默认学期
    default_semester = get_default_semester()
    
    imported_count = 0
    skipped_count = 0
    error_count = 0
    not_found_count = 0
    
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
                
                # 查找匹配的课程
                course = find_matching_course(course_name, teacher_name, course_index, teacher_index, name_index)
                if not course:
                    print(f"仍未找到匹配课程: {course_name} - {teacher_name}")
                    not_found_count += 1
                    continue
                
                # 快速重复检查
                signature = f"{course.id}|{review_content[:50]}"
                if signature in existing_review_signatures:
                    skipped_count += 1
                    continue
                
                # 随机选择用户
                user = random.choice(test_users)
                
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
                existing_review_signatures.add(signature)
                
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
    
    print(f"\n补充导入完成:")
    print(f"新成功导入: {imported_count} 条")
    print(f"跳过重复: {skipped_count} 条") 
    print(f"仍未找到课程: {not_found_count} 条")
    print(f"处理错误: {error_count} 条")
    print(f"当前总评价数: {Review.objects.count()} 条")


if __name__ == '__main__':
    print("开始补充导入之前失败的课程评价数据...")
    import_failed_reviews()
    print("补充导入完成！")