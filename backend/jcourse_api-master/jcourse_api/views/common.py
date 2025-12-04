from rest_framework.decorators import api_view
from rest_framework.response import Response

from ad.repository import get_promotions
from ad.serializers import PromotionSerializer
from jcourse_api.repository import *
from jcourse_api.serializers import *
from jcourse_api.models import TeamMember, Contributor


# one request for all common info (announcements, semesters, enrolled courses, reviewed courses, user, promotions)
@api_view(['GET'])
def get_common_info(request):
    user = request.user
    announcements = get_announcements()
    semesters = get_semesters()
    enrolled_courses = get_enrolled_courses(user)
    my_reviews = get_my_reviewed(user)
    promotions = get_promotions()

    return Response({"user": UserSerializer(user).data,
                     "announcements": AnnouncementSerializer(announcements, many=True).data,
                     "semesters": SemesterSerializer(semesters, many=True).data,
                     "enrolled_courses": enrolled_courses,
                     "my_reviews": my_reviews,
                     "promotions": PromotionSerializer(promotions, many=True).data
                     })


@api_view(['GET'])
def get_about_data(request):
    """获取关于页面数据"""
    team_members = TeamMember.objects.filter(is_active=True).order_by('order', 'name')
    contributors = Contributor.objects.filter(is_active=True).order_by('-contributions', 'name')
    
    return Response({
        "team_members": TeamMemberSerializer(team_members, many=True, context={'request': request}).data,
        "contributors": ContributorSerializer(contributors, many=True).data
    })
