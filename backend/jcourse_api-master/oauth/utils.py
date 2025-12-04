import hashlib
import secrets
import string
from typing import Optional

from authlib.integrations.django_client import OAuth
from django.contrib.auth import login
from django.contrib.auth.models import User
from django.core.cache import cache

import utils.mail
from utils.tencent_email import send_login_verify_email, send_password_reset_email
from jcourse import settings
from jcourse.settings import HASH_SALT, EMAIL_VERIFICATION_TIMEOUT, EMAIL_VERIFICATION_MAX_TIMES
from oauth.models import UserProfile

oauth = OAuth()
oauth.register(
    name='jaccount',
    client_id=settings.AUTHLIB_OAUTH_CLIENTS['jaccount']['client_id'],
    client_secret=settings.AUTHLIB_OAUTH_CLIENTS['jaccount']['client_secret'],
    access_token_url='https://jaccount.sjtu.edu.cn/oauth2/token',
    authorize_url='https://jaccount.sjtu.edu.cn/oauth2/authorize',
    api_base_url='https://api.sjtu.edu.cn/',
    client_kwargs={"scope": "basic"}
)
jaccount = oauth.jaccount


def hash_username(username: str):
    return hashlib.blake2b((username + HASH_SALT).encode('ascii'), digest_size=16).hexdigest()


def generate_code(length: int = 6):
    code = ''.join(secrets.choice(string.digits) for _ in range(length))
    return code


def build_email_auth_cache_key(account: str):
    return f"email_auth_code_{account}"


def build_email_auth_times_cache_key(account: str):
    return f"email_auth_times_{account}"


def auth_store_email_code(account: str, code: str):
    cache.set(build_email_auth_cache_key(account), code, EMAIL_VERIFICATION_TIMEOUT * 60)


def auth_get_email_code(account: str):
    return cache.get(build_email_auth_cache_key(account))


def build_login_attempt_cache_key(ip: str, identifier: str):
    """构建登录尝试缓存键：IP + 用户标识符"""
    return f"login_attempt_{ip}_{identifier}"


def login_attempt_verify_times(ip: str, identifier: str, max_attempts: int = 5, timeout_minutes: int = 30):
    """验证登录尝试次数限制 - 基于IP和用户标识符双重验证"""
    times_key = build_login_attempt_cache_key(ip, identifier)
    times = cache.get(times_key, 0)
    
    if times >= max_attempts:
        return False
    
    # 增加尝试次数并设置过期时间
    cache.set(times_key, times + 1, timeout_minutes * 60)
    return True


def clean_login_attempt(ip: str, identifier: str):
    """清除登录尝试次数记录"""
    cache.delete(build_login_attempt_cache_key(ip, identifier))


def get_client_ip(request):
    """获取客户端真实IP地址"""
    x_forwarded_for = request.META.get('HTTP_X_FORWARDED_FOR')
    if x_forwarded_for:
        ip = x_forwarded_for.split(',')[0].strip()
    else:
        ip = request.META.get('REMOTE_ADDR', '127.0.0.1')
    return ip


def auth_get_email_tries(account: str):
    return cache.get(build_email_auth_times_cache_key(account))


def auth_verify_times(account: str):
    times_key = build_email_auth_times_cache_key(account)
    times = cache.get_or_set(times_key, 0, EMAIL_VERIFICATION_TIMEOUT * 60)
    cache.incr(times_key)
    return times < EMAIL_VERIFICATION_MAX_TIMES


def auth_verify_email_code(account: str, code: str):
    account = account.strip().lower()
    code = code.strip()
    return code == cache.get(build_email_auth_cache_key(account))


def clean_email_code(account: str):
    cache.delete_many([build_email_auth_cache_key(account), build_email_auth_times_cache_key(account)])


def send_code_email(email: str, code: str):
    """发送登录验证码邮件（使用腾讯云模板）"""
    try:
        # 使用腾讯云模板发送邮件
        return send_login_verify_email(email, code, EMAIL_VERIFICATION_TIMEOUT)
    except Exception as e:
        print(f"腾讯云邮件发送失败，尝试SMTP: {str(e)}")
        # 备用SMTP发送
        email_title = "西南财经大学选课社区 - 邮箱验证码"
        email_body = f"尊敬的用户：\n\n" \
                     f"您正在西南财经大学选课社区进行邮箱验证登录操作。\n\n" \
                     f"为保障账户安全，请在{EMAIL_VERIFICATION_TIMEOUT}分钟内使用以下验证码完成身份验证：\n\n" \
                     f"验证码：{code}\n\n" \
                     f"选课社区是专为西南财经大学学生提供课程评价和选课参考的官方平台，帮助同学们更好地了解课程信息和教师评价。\n\n" \
                     f"如非本人操作，请忽略此邮件并及时修改密码。\n\n" \
                     f"西南财经大学选课社区\n" \
                     f"技术支持邮箱：harrycn@88.com"
        return send_mail(email_title, email_body, email)


def get_or_create_user(account: str):
    lower = account.lower()
    former_username = hash_username(account)
    username = hash_username(lower)

    # 查找旧号存在情况
    user = User.objects.filter(username=former_username)
    if not user.exists():  # 如果旧号不存在，建新号
        user, _ = User.objects.get_or_create(username=username)
        return user
    # 如果旧号存在，查找新号存在情况
    user = User.objects.filter(username=username)
    if user.exists():  # 如果新号存在，直接返回新号（未合并旧号，可以管理员操作）
        return user.first()
    # 如果新号不存在，把修改旧号用户名为新用户名
    user = User.objects.get(username=former_username)
    user.username = username
    user.save()
    return user


def login_with(request, account: str, user_type: Optional[str] = None):
    user = get_or_create_user(account)
    if user_type:
        UserProfile.objects.update_or_create(user=user, defaults={'user_type': user_type, 'lowercase': True})
    else:
        UserProfile.objects.update_or_create(user=user, defaults={'lowercase': True})
    login(request, user)


def build_email_reset_cache_key(account: str):
    return f"email_reset_code_{account}"


def reset_store_email_code(account: str, code: str):
    cache.set(build_email_reset_cache_key(account), code, EMAIL_VERIFICATION_TIMEOUT * 60)


def reset_send_code_email(email: str, code: str):
    """发送密码重置验证码邮件（使用腾讯云模板）"""
    try:
        # 使用腾讯云模板发送邮件
        return send_password_reset_email(email, code, EMAIL_VERIFICATION_TIMEOUT)
    except Exception as e:
        print(f"腾讯云邮件发送失败，尝试SMTP: {str(e)}")
        # 备用SMTP发送
        email_title = "西南财经大学选课社区 - 密码重置验证码"
        email_body = f"尊敬的用户：\n\n" \
                     f"您正在西南财经大学选课社区申请重置账户密码。\n\n" \
                     f"为确保账户安全，请在{EMAIL_VERIFICATION_TIMEOUT}分钟内使用以下验证码完成密码重置：\n\n" \
                     f"验证码：{code}\n\n" \
                     f"选课社区致力于为西南财经大学学生提供真实可靠的课程评价信息，保护每位用户的账户安全是我们的重要职责。\n\n" \
                     f"如非本人操作，请立即联系客服并检查账户安全。\n\n" \
                     f"西南财经大学选课社区\n" \
                     f"技术支持邮箱：harrycn@88.com"
        return send_mail(email_title, email_body, email)

def send_mail(title, body, recipient):
    if settings.TESTING or settings.BENCHMARK:
        return True

    sender = settings.EMAIL_HOST_USER
    pwd = settings.EMAIL_HOST_PASSWORD
    host = settings.EMAIL_HOST
    port = settings.EMAIL_PORT
    use_ssl = settings.EMAIL_USE_SSL
    try:
        utils.mail.send_mail_inner(sender, sender, pwd, [recipient], title, body, host, port, use_ssl)
    except Exception as e:
        return False
    return True


def reset_verify_email_code(account: str, code: str):
    account = account.strip().lower()
    code = code.strip()
    return code == cache.get(build_email_reset_cache_key(account))


def reset_get_email_code(account: str):
    return cache.get(build_email_reset_cache_key(account))


def reset_clean_email_code(account: str):
    cache.delete_many([build_email_reset_cache_key(account)])


def get_user_profile(user: User):
    profile, _ = UserProfile.objects.get_or_create(user=user)
    return profile
