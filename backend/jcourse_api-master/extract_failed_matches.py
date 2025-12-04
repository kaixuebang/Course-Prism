#!/usr/bin/env python3
"""
提取所有未能匹配的课程数据
"""
import os
import sys
import django
import csv
import re

# 设置Django环境
sys.path.append('/opt/jcourse/app/jcourse_api-master')
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'jcourse.settings')
django.setup()

from jcourse_api.models import Course, Review, Semester
from django.utils import timezone
from django.db import transaction


def clean_course_name(course_name):
    """清理课程名称，去除"2024级(上)"等前缀"""
    cleaned = re.sub(r'^\d{4}级\([上下]\)\s*', '', course_name)
    return cleaned.strip()


def clean_teacher_name(teacher_name):
    """清理教师姓名，处理多个教师的情况"""
    if '/' in teacher_name:
        teacher_name = teacher_name.split('/')[0]
    return teacher_name.strip()


def find_exact_matching_course(course_name, teacher_name):
    """精确匹配课程名称和教师姓名"""
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


def extract_failed_matches():
    """提取所有未能匹配的课程数据"""
    csv_file_path = '/opt/jcourse/data/merged_course_reviews.csv'
    
    failed_matches = []
    successful_matches = []
    
    with open(csv_file_path, 'r', encoding='utf-8') as csvfile:
        reader = csv.DictReader(csvfile)
        
        for i, row in enumerate(reader):
            course_name = row['Course'].strip()
            teacher_name = row['Professor'].strip()
            review_content = row['ReviewContent'].strip()
            
            # 跳过空内容
            if not course_name or not teacher_name or not review_content:
                continue
            
            # 尝试匹配课程
            course = find_exact_matching_course(course_name, teacher_name)
            
            match_info = {
                'original_course': course_name,
                'original_teacher': teacher_name,
                'cleaned_course': clean_course_name(course_name),
                'cleaned_teacher': clean_teacher_name(teacher_name),
                'review_content': review_content[:50] + '...'
            }
            
            if not course:
                failed_matches.append(match_info)
            else:
                match_info['matched_course'] = course.name
                match_info['matched_teacher'] = course.main_teacher.name
                successful_matches.append(match_info)
    
    print("=" * 80)
    print(f"未能匹配的课程数据 (共 {len(failed_matches)} 条)")
    print("=" * 80)
    
    for i, match in enumerate(failed_matches, 1):
        print(f"{i:3d}. 原始课程名: {match['original_course']}")
        print(f"     原始教师名: {match['original_teacher']}")
        print(f"     清理后课程名: {match['cleaned_course']}")
        print(f"     清理后教师名: {match['cleaned_teacher']}")
        print(f"     评价内容: {match['review_content']}")
        print()
    
    print("=" * 80)
    print(f"成功匹配的课程数据 (共 {len(successful_matches)} 条)")
    print("=" * 80)
    
    # 显示前10个成功匹配的例子
    for i, match in enumerate(successful_matches[:10], 1):
        print(f"{i:3d}. 原始: {match['original_course']} - {match['original_teacher']}")
        print(f"     匹配到: {match['matched_course']} - {match['matched_teacher']}")
        print()
    
    if len(successful_matches) > 10:
        print(f"     ... 还有 {len(successful_matches) - 10} 条成功匹配的记录")
    
    print(f"\n总结:")
    print(f"成功匹配: {len(successful_matches)} 条")
    print(f"匹配失败: {len(failed_matches)} 条")
    print(f"匹配成功率: {len(successful_matches)/(len(successful_matches)+len(failed_matches))*100:.1f}%")


if __name__ == '__main__':
    extract_failed_matches()