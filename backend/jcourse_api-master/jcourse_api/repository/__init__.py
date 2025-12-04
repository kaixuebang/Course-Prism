from django.db.models import Subquery, OuterRef, Q

from jcourse_api.models import *


def get_semesters():
    return Semester.objects.all()


def get_announcements():
    return Announcement.objects.filter(available=True)


def get_course_list_queryset(user: User):
    return Course.objects.select_related('main_teacher').prefetch_related('categories', 'department')


def get_search_course_queryset(q: str, user: User):
    from django.db.models import F, Case, When, IntegerField
    
    courses = get_course_list_queryset(user)
    if q == '':
        return courses.none()
    
    courses = courses.filter(
        Q(code__icontains=q) | Q(name__icontains=q) | Q(main_teacher__name__icontains=q) |
        Q(main_teacher__pinyin__iexact=q) | Q(main_teacher__abbr_pinyin__icontains=q))
    
    # 添加排序：优先展示有评价的课程
    # 1. 有评价的课程排在前面（review_count > 0）
    # 2. 在有评价的课程中，按评价数量降序排列
    # 3. 在评价数量相同的情况下，按平均评分降序排列
    # 4. 没有评价的课程排在最后，按课程名排序
    courses = courses.annotate(
        has_reviews=Case(
            When(review_count__gt=0, then=1),
            default=0,
            output_field=IntegerField()
        )
    ).order_by(
        '-has_reviews',  # 有评价的排在前面
        F('review_count').desc(nulls_last=True),  # 评价数量降序
        F('review_avg').desc(nulls_last=True),    # 平均评分降序
        'name'  # 最后按课程名排序
    )
    
    return courses


def get_reviews(user: User):
    # Optimize with select_related and prefetch_related to avoid N+1 queries
    reviews = Review.objects.select_related(
        'course', 
        'course__main_teacher', 
        'course__department',
        'semester',
        'user'
    ).prefetch_related(
        'course__categories'
    )
    
    if not user.is_authenticated:
        return reviews
    
    # Use a more efficient subquery for user reactions
    my_reaction = ReviewReaction.objects.filter(
        user=user, 
        review_id=OuterRef('pk')
    ).values('reaction')
    
    return reviews.annotate(my_reaction=Subquery(my_reaction[:1]))


def get_enrolled_courses(user: User):
    if not user.is_authenticated:
        return EnrollCourse.objects.none()
    return EnrollCourse.objects.filter(user=user).values('semester_id', 'course_id')


def get_my_reviewed(user: User):
    if not user.is_authenticated:
        return Review.objects.none()
    return Review.objects.filter(user=user).values('course_id', 'semester_id', 'id')
