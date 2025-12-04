import requests
from django.utils import timezone
from django.utils.deprecation import MiddlewareMixin
from django.db import transaction
from jcourse_api.models.site import VisitorStatistics


class VisitorTrackingMiddleware(MiddlewareMixin):
    """
    访问统计中间件
    记录每日独立访客的IP地址和地理位置信息
    """
    
    def process_request(self, request):
        # 只记录前端页面访问，跳过API请求和静态文件
        if (request.path.startswith('/api/') or 
            request.path.startswith('/admin/') or
            request.path.startswith('/static/') or
            request.path.startswith('/media/') or
            request.path.startswith('/_next/')):
            return None
            
        # 获取客户端IP地址
        ip_address = self.get_client_ip(request)
        
        if ip_address and self.should_track_ip(ip_address):
            # 异步处理访问统计，避免影响页面响应速度
            self.track_visitor(ip_address, request.META.get('HTTP_USER_AGENT', ''))
            
        return None
    
    def get_client_ip(self, request):
        """获取客户端真实IP地址"""
        x_forwarded_for = request.META.get('HTTP_X_FORWARDED_FOR')
        if x_forwarded_for:
            ip = x_forwarded_for.split(',')[0].strip()
        else:
            ip = request.META.get('REMOTE_ADDR')
        return ip
    
    def should_track_ip(self, ip_address):
        """判断是否需要跟踪此IP（排除本地IP和内网IP）"""
        if not ip_address:
            return False
        
        # 排除本地和内网IP
        local_ips = ['127.0.0.1', '::1', 'localhost']
        if ip_address in local_ips:
            return False
            
        # 排除内网IP段
        if (ip_address.startswith('192.168.') or 
            ip_address.startswith('10.') or 
            ip_address.startswith('172.')):
            return False
            
        return True
    
    def track_visitor(self, ip_address, user_agent):
        """记录访客信息"""
        try:
            today = timezone.now().date()
            
            # 检查今天是否已记录此IP
            if VisitorStatistics.objects.filter(
                visit_date=today, 
                ip_address=ip_address
            ).exists():
                return
            
            # 获取地理位置信息
            location_info = self.get_location_info(ip_address)
            
            # 创建访问记录
            with transaction.atomic():
                VisitorStatistics.objects.create(
                    visit_date=today,
                    ip_address=ip_address,
                    country=location_info.get('country'),
                    region=location_info.get('region'),
                    city=location_info.get('city'),
                    user_agent=user_agent
                )
                
        except Exception as e:
            # 静默处理错误，不影响正常访问
            print(f"访问统计记录失败: {str(e)}")
    
    def get_location_info(self, ip_address):
        """
        获取IP地理位置信息
        使用免费的IP地理位置API服务
        """
        location_info = {'country': None, 'region': None, 'city': None}
        
        try:
            # 使用免费的ipapi.co服务
            response = requests.get(
                f'http://ipapi.co/{ip_address}/json/',
                timeout=3
            )
            if response.status_code == 200:
                data = response.json()
                location_info = {
                    'country': data.get('country_name'),
                    'region': data.get('region'),
                    'city': data.get('city')
                }
        except Exception as e:
            # 如果地理位置获取失败，尝试备用服务
            try:
                response = requests.get(
                    f'http://ip-api.com/json/{ip_address}?lang=zh-CN',
                    timeout=3
                )
                if response.status_code == 200:
                    data = response.json()
                    if data.get('status') == 'success':
                        location_info = {
                            'country': data.get('country'),
                            'region': data.get('regionName'),
                            'city': data.get('city')
                        }
            except Exception:
                # 地理位置获取完全失败时，使用默认值
                pass
        
        return location_info