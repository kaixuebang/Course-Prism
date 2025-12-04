from django.db.models import F
from django.utils.decorators import method_decorator
from django.views.decorators.cache import cache_page
from django.views.decorators.vary import vary_on_headers
from rest_framework import viewsets, status
from rest_framework.request import Request
from rest_framework.response import Response
from rest_framework.views import APIView

from jcourse_api.models import *
from jcourse_api.repository import get_semesters
from jcourse_api.serializers import SemesterSerializer, CategorySerializer, DepartmentSerializer


class SemesterViewSet(viewsets.ReadOnlyModelViewSet):
    queryset = get_semesters()
    serializer_class = SemesterSerializer
    pagination_class = None

    # Cache for 5 minutes as semesters don't change frequently
    @method_decorator(cache_page(300))
    @method_decorator(vary_on_headers('User-Agent', 'Accept-Language'))
    def dispatch(self, request: Request, *args, **kwargs):
        return super().dispatch(request, *args, **kwargs)


class CourseFilterView(APIView):

    # Cache for 10 minutes as course filters are relatively stable
    @method_decorator(cache_page(600))
    @method_decorator(vary_on_headers('User-Agent'))
    def get(self, request: Request):
        categories = Category.objects.annotate(count=Count('course')).filter(count__gt=0)
        category_serializer = CategorySerializer(categories, many=True)
        departments = Department.objects.annotate(count=Count('course')).filter(count__gt=0)
        department_serializer = DepartmentSerializer(departments, many=True)
        return Response({'categories': category_serializer.data, 'departments': department_serializer.data},
                        status=status.HTTP_200_OK)


class ReviewFilterView(APIView):

    # Cache for 2 minutes for review filters as they change more frequently
    @method_decorator(cache_page(120))
    @method_decorator(vary_on_headers('User-Agent'))
    def get(self, request: Request):
        course_id = request.query_params.get('course_id')
        reviews = Review.objects.select_related("semester")
        if course_id:
            reviews = reviews.filter(course__id=course_id)
        semesters = reviews.values('semester') \
            .annotate(count=Count('semester'), name=F("semester__name"), id=F("semester__id"), avg=Avg('rating')) \
            .filter(count__gt=0).values("id", "name", "count", "avg").order_by(F('name').desc())
        ratings = reviews.values('rating').annotate(count=Count('rating')).filter(count__gt=0).order_by(
            F('rating').desc())
        return Response({'semesters': semesters, 'ratings': ratings},
                        status=status.HTTP_200_OK)
