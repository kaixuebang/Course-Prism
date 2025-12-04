#!/usr/bin/env python3
"""
修复课程评价统计数据
"""
import os
import sys
import django

# 设置Django环境
sys.path.append('/opt/jcourse/app/jcourse_api-master')
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'jcourse.settings')
django.setup()

from jcourse_api.models import Course, Review
from django.db.models import Count, Avg
from django.db import transaction


def fix_review_counts():
    """修复所有课程的评价统计数据"""
    
    print("开始修复课程评价统计数据...")
    
    # 统计需要修复的课程
    problem_courses = []
    total_courses = 0
    
    print("正在检查所有课程...")
    
    for course in Course.objects.all():
        total_courses += 1
        
        # 计算实际的评价统计
        review_stats = Review.objects.filter(course=course).aggregate(
            count=Count('id'),
            avg_rating=Avg('rating')
        )
        
        actual_count = review_stats['count'] or 0
        actual_avg = review_stats['avg_rating']
        
        stored_count = course.review_count or 0
        stored_avg = course.review_avg
        
        # 检查是否需要修复
        needs_fix = False
        if actual_count != stored_count:
            needs_fix = True
        
        if actual_avg != stored_avg:
            # 对于浮点数，允许小的误差
            if actual_avg is None and stored_avg is not None:
                needs_fix = True
            elif actual_avg is not None and stored_avg is None:
                needs_fix = True
            elif actual_avg is not None and stored_avg is not None:
                if abs(actual_avg - stored_avg) > 0.001:
                    needs_fix = True
        
        if needs_fix:
            problem_courses.append({
                'course': course,
                'actual_count': actual_count,
                'stored_count': stored_count,
                'actual_avg': actual_avg,
                'stored_avg': stored_avg
            })
    
    print(f"检查完成，共 {total_courses} 门课程")
    print(f"发现 {len(problem_courses)} 门课程需要修复统计数据")
    
    if not problem_courses:
        print("所有课程统计数据正确，无需修复")
        return
    
    # 批量修复
    print("\n开始批量修复...")
    fixed_count = 0
    
    with transaction.atomic():
        for i, prob in enumerate(problem_courses):
            course = prob['course']
            
            # 更新统计数据
            course.review_count = prob['actual_count']
            course.review_avg = prob['actual_avg']
            course.save(update_fields=['review_count', 'review_avg'])
            
            fixed_count += 1
            
            print(f"修复 {fixed_count}/{len(problem_courses)}: {course.name}({course.main_teacher.name})")
            print(f"  评价数: {prob['stored_count']} → {prob['actual_count']}")
            if prob['actual_avg'] is not None:
                avg_str = f"{prob['actual_avg']:.2f}" if prob['actual_avg'] else "None"
                old_avg_str = f"{prob['stored_avg']:.2f}" if prob['stored_avg'] else "None"
                print(f"  平均分: {old_avg_str} → {avg_str}")
            
            # 每100个显示一次进度
            if fixed_count % 100 == 0:
                print(f"已修复 {fixed_count} 门课程...")
    
    print(f"\n修复完成！共修复 {fixed_count} 门课程的统计数据")
    
    # 验证修复结果
    print("\n验证修复结果...")
    remaining_problems = 0
    
    for course in Course.objects.filter(id__in=[p['course'].id for p in problem_courses]):
        actual_count = Review.objects.filter(course=course).count()
        if actual_count != course.review_count:
            remaining_problems += 1
    
    if remaining_problems == 0:
        print("✅ 验证通过！所有课程统计数据现已正确")
    else:
        print(f"❌ 仍有 {remaining_problems} 门课程存在问题")


if __name__ == '__main__':
    fix_review_counts()