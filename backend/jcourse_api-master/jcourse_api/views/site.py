from django.contrib.auth.models import User
from django.db.models import Count, F
from django.db.models.functions import TruncDate, Floor
from django.utils.decorators import method_decorator
from django.utils import timezone
from django.views.decorators.cache import cache_page
from rest_framework import viewsets, status
from rest_framework.decorators import api_view, permission_classes
from rest_framework.permissions import IsAdminUser
from rest_framework.request import Request
from rest_framework.response import Response
from rest_framework.views import APIView

from jcourse_api.models import Review, Course
from jcourse_api.models.site import VisitorStatistics
from jcourse_api.repository import get_announcements
from jcourse_api.serializers import AnnouncementSerializer


class AnnouncementViewSet(viewsets.ReadOnlyModelViewSet):
    queryset = get_announcements()
    serializer_class = AnnouncementSerializer
    pagination_class = None


class StatisticView(APIView):

    @method_decorator(cache_page(60))
    def get(self, request: Request):
        today = timezone.now().date()
        
        # 原有统计数据
        user_join_time = User.objects.values(date=TruncDate("date_joined")).annotate(
            count=Count("id")).order_by("date")
        review_create_time = Review.objects.values(date=TruncDate("created_at")).annotate(
            count=Count("id")).order_by("date")
        course_review_count_dist = Course.objects.filter(review_count__gt=0).values(value=F("review_count")).annotate(
            count=Count("value")).order_by("value")
        course_review_avg_dist = Course.objects.filter(review_avg__gt=0).values(value=Floor("review_avg")).annotate(
            count=Count("value")).order_by("value")
        review_rating_dist = Review.objects.values(value=F("rating")).annotate(
            count=Count("value")).order_by("value")
        
        # 访问统计数据
        # 今日访问量
        today_visitors = VisitorStatistics.objects.filter(visit_date=today).count()
        
        # 过去7天访问统计
        visitor_daily_stats = VisitorStatistics.objects.values(date=F('visit_date')).annotate(
            count=Count('id')
        ).order_by('date')  # 所有天数据
        
        # 地理分布统计
        country_distribution = VisitorStatistics.objects.exclude(
            country__isnull=True
        ).exclude(country='').values(
            name=F('country')
        ).annotate(count=Count('id')).order_by('-count')[:10]  # 前10个国家
        
        city_distribution = VisitorStatistics.objects.exclude(
            city__isnull=True
        ).exclude(city='').values(
            name=F('city')
        ).annotate(count=Count('id')).order_by('-count')[:10]  # 前10个城市
        
        # 总访问量统计
        total_visitors = VisitorStatistics.objects.count()
        
        return Response({
            'course_count': Course.objects.count(),
            'course_with_review_count': Course.objects.filter(review_count__gt=0).count(),
            'user_count': User.objects.count(),
            'review_count': Review.objects.count(),
            'user_join_time': user_join_time,
            'review_create_time': review_create_time,
            'course_review_count_dist': course_review_count_dist,
            'course_review_avg_dist': course_review_avg_dist,
            'review_rating_dist': review_rating_dist,
            
            # 新增访问统计数据
            'today_visitors': today_visitors,
            'total_visitors': total_visitors,
            'visitor_daily_stats': visitor_daily_stats,
            'country_distribution': country_distribution,
            'city_distribution': city_distribution,
        }, status=status.HTTP_200_OK)


@api_view(['GET'])
@permission_classes([IsAdminUser])
def debug_info(request):
    user_agent = request.META.get('HTTP_USER_AGENT', '')
    xff = request.META.get('HTTP_X_FORWARDED_FOR')
    remote_addr = request.META.get('REMOTE_ADDR')
    return Response({'HTTP_USER_AGENT': user_agent,
                     'HTTP_X_FORWARDED_FOR': xff,
                     'REMOTE_ADDR': remote_addr},
                    status=status.HTTP_200_OK)