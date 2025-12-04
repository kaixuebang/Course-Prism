from jcourse import settings
from rest_framework.permissions import SAFE_METHODS, BasePermission


class CustomBasePermission(BasePermission):

    def has_permission(self, request, view):
        if settings.BENCHMARK:
            return True
        return bool(request.user and request.user.is_authenticated)


class IsOwnerOrAdminOrReadOnly(BasePermission):
    message = '您只能修改自己发表的内容。'

    def has_permission(self, request, view):
        if settings.BENCHMARK:
            return True
        # 允许未登录用户读取数据
        if request.method in SAFE_METHODS:
            return True
        # 写操作需要登录
        return bool(request.user and request.user.is_authenticated)

    def has_object_permission(self, request, view, obj):
        # 读取操作允许所有人
        if request.method in SAFE_METHODS:
            return True
        # 写操作需要是所有者或管理员
        return request.user and request.user.is_authenticated and (obj.user == request.user or request.user.is_staff)


class IsAdminOrReadOnly(CustomBasePermission):
    message = '当前仅管理员可以发表和修改内容。'

    def has_permission(self, request, view):
        if request.method in SAFE_METHODS:
            return True
        return request.user and request.user.is_staff
