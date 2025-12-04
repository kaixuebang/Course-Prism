import json
from tencentcloud.common import credential
from tencentcloud.common.profile.client_profile import ClientProfile
from tencentcloud.common.profile.http_profile import HttpProfile
from tencentcloud.ses.v20201002 import ses_client, models
from django.conf import settings


class TencentEmailSender:
    """腾讯云邮件发送服务"""
    
    def __init__(self):
        self.secret_id = getattr(settings, 'TENCENT_SECRET_ID', '')
        self.secret_key = getattr(settings, 'TENCENT_SECRET_KEY', '')
        self.region = getattr(settings, 'TENCENT_EMAIL_REGION', 'ap-hongkong')
        self.from_email = getattr(settings, 'EMAIL_HOST_USER', 'email@swufe.chat')
        
        # 模板ID映射
        self.template_ids = {
            'login_verify': 34221,      # 邮箱验证登录模板
            'password_reset': 34222     # 密码重置验证模板  
        }
    
    def _get_client(self):
        """获取腾讯云SES客户端"""
        cred = credential.Credential(self.secret_id, self.secret_key)
        
        http_profile = HttpProfile()
        http_profile.endpoint = "ses.tencentcloudapi.com"
        
        client_profile = ClientProfile()
        client_profile.httpProfile = http_profile
        
        client = ses_client.SesClient(cred, self.region, client_profile)
        return client
    
    def send_template_email(self, template_type: str, recipient: str, template_data: dict, subject: str = ""):
        """
        发送模板邮件
        
        Args:
            template_type: 模板类型 ('login_verify' 或 'password_reset')
            recipient: 收件人邮箱
            template_data: 模板变量数据，如 {'code': '123456', 'timeout': '10'}
            subject: 邮件主题
        
        Returns:
            bool: 发送成功返回True，失败返回False
        """
        try:
            if template_type not in self.template_ids:
                print(f"不支持的模板类型: {template_type}")
                return False
                
            client = self._get_client()
            
            req = models.SendEmailRequest()
            params = {
                "FromEmailAddress": f"西南财经大学选课社区 <{self.from_email}>",
                "Destination": [recipient],
                "Template": {
                    "TemplateID": self.template_ids[template_type],
                    "TemplateData": json.dumps(template_data)
                },
                "Subject": subject or self._get_default_subject(template_type)
            }
            
            req.from_json_string(json.dumps(params))
            resp = client.SendEmail(req)
            
            print(f"腾讯云邮件发送成功: {resp.to_json_string()}")
            return True
            
        except Exception as e:
            print(f"腾讯云邮件发送失败: {str(e)}")
            return False
    
    def _get_default_subject(self, template_type: str) -> str:
        """获取默认邮件主题"""
        subjects = {
            'login_verify': '西南财经大学选课社区 - 邮箱验证码',
            'password_reset': '西南财经大学选课社区 - 密码重置验证码'
        }
        return subjects.get(template_type, '西南财经大学选课社区验证码')


# 全局实例
tencent_email_sender = TencentEmailSender()


def send_login_verify_email(email: str, code: str, timeout: int = 10) -> bool:
    """
    发送登录验证码邮件
    
    Args:
        email: 收件人邮箱
        code: 验证码
        timeout: 超时时间(分钟)
    
    Returns:
        bool: 发送成功返回True
    """
    template_data = {
        'code': code,
        'timeout': str(timeout)
    }
    return tencent_email_sender.send_template_email('login_verify', email, template_data)


def send_password_reset_email(email: str, code: str, timeout: int = 10) -> bool:
    """
    发送密码重置验证码邮件
    
    Args:
        email: 收件人邮箱
        code: 验证码
        timeout: 超时时间(分钟)
    
    Returns:
        bool: 发送成功返回True
    """
    template_data = {
        'code': code,
        'timeout': str(timeout)
    }
    return tencent_email_sender.send_template_email('password_reset', email, template_data)