#!/usr/bin/env python3
"""
分析未匹配数据的原因
"""
import os
import sys
import django
import csv
import re
from collections import defaultdict

# 设置Django环境
sys.path.append('/opt/jcourse/app/jcourse_api-master')
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'jcourse.settings')
django.setup()

from jcourse_api.models import Course


def clean_course_name(course_name):
    """清理课程名称，去除"2024级(上)"等前缀"""
    cleaned = re.sub(r'^\d{4}级\([上下]\)\s*', '', course_name)
    return cleaned.strip()


def clean_teacher_name(teacher_name):
    """清理教师姓名，处理多个教师的情况"""
    if '/' in teacher_name:
        teacher_name = teacher_name.split('/')[0]
    return teacher_name.strip()


def analyze_failed_matches():
    """分析未匹配数据的原因"""
    csv_file_path = '/opt/jcourse/data/merged_course_reviews.csv'
    
    # 按类别分组未匹配数据
    categories = defaultdict(list)
    
    # 获取所有现有课程名称和教师姓名
    all_courses = set()
    all_teachers = set()
    course_teacher_pairs = set()
    
    for course in Course.objects.select_related('main_teacher').all():
        all_courses.add(course.name)
        all_teachers.add(course.main_teacher.name)
        course_teacher_pairs.add((course.name, course.main_teacher.name))
    
    with open(csv_file_path, 'r', encoding='utf-8') as csvfile:
        reader = csv.DictReader(csvfile)
        
        for row in reader:
            course_name = row['Course'].strip()
            teacher_name = row['Professor'].strip()
            
            if not course_name or not teacher_name:
                continue
            
            cleaned_course = clean_course_name(course_name)
            cleaned_teacher = clean_teacher_name(teacher_name)
            
            # 检查各种匹配情况
            found_match = False
            
            # 检查精确匹配
            for original_course, original_teacher in [(course_name, teacher_name), 
                                                    (cleaned_course, cleaned_teacher),
                                                    (cleaned_course, teacher_name),
                                                    (course_name, cleaned_teacher)]:
                if (original_course, original_teacher) in course_teacher_pairs:
                    found_match = True
                    break
            
            if not found_match:
                # 分析失败原因
                course_exists = cleaned_course in all_courses or course_name in all_courses
                teacher_exists = cleaned_teacher in all_teachers or teacher_name in all_teachers
                
                if not course_exists and not teacher_exists:
                    categories['课程和教师都不存在'].append((course_name, teacher_name))
                elif not course_exists:
                    categories['课程不存在'].append((course_name, teacher_name))
                elif not teacher_exists:
                    categories['教师不存在'].append((course_name, teacher_name))
                else:
                    categories['课程和教师分别存在但组合不存在'].append((course_name, teacher_name))
    
    print("=" * 80)
    print("未匹配数据分析")
    print("=" * 80)
    
    total_failed = sum(len(items) for items in categories.values())
    
    for category, items in categories.items():
        print(f"\n{category} ({len(items)} 条):")
        print("-" * 50)
        
        # 显示每个类别的前10个例子
        for i, (course, teacher) in enumerate(items[:10]):
            print(f"{i+1:2d}. {course} - {teacher}")
        
        if len(items) > 10:
            print(f"    ... 还有 {len(items) - 10} 条")
        
        # 对于课程不存在的情况，尝试找相似的课程名
        if '课程不存在' in category:
            print("    可能的相似课程:")
            unique_courses = set()
            for course, teacher in items[:5]:  # 只分析前5个
                cleaned = clean_course_name(course)
                similar_courses = [c for c in all_courses if cleaned.lower() in c.lower() or c.lower() in cleaned.lower()]
                for sim_course in similar_courses[:3]:  # 每个最多显示3个相似的
                    unique_courses.add(sim_course)
            
            for sim_course in sorted(unique_courses)[:10]:  # 最多显示10个
                print(f"      - {sim_course}")
    
    print(f"\n总计未匹配: {total_failed} 条")


if __name__ == '__main__':
    analyze_failed_matches()