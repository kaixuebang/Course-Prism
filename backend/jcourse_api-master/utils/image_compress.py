import os
from io import BytesIO
from PIL import Image
from django.core.files.base import ContentFile
from django.core.files.storage import default_storage


def compress_image(image_file, quality=85, max_width=400, max_height=400):
    """
    压缩图片
    :param image_file: 图片文件
    :param quality: 压缩质量 (1-100)
    :param max_width: 最大宽度
    :param max_height: 最大高度
    :return: 压缩后的文件
    """
    try:
        # 打开图片
        img = Image.open(image_file)
        
        # 转换为RGB模式（处理RGBA、P模式等）
        if img.mode in ('RGBA', 'LA', 'P'):
            # 创建白色背景
            background = Image.new('RGB', img.size, (255, 255, 255))
            if img.mode == 'P':
                img = img.convert('RGBA')
            background.paste(img, mask=img.split()[-1] if img.mode == 'RGBA' else None)
            img = background
        elif img.mode != 'RGB':
            img = img.convert('RGB')
        
        # 获取原始尺寸
        original_width, original_height = img.size
        
        # 计算新尺寸（保持比例）
        if original_width > max_width or original_height > max_height:
            ratio = min(max_width / original_width, max_height / original_height)
            new_width = int(original_width * ratio)
            new_height = int(original_height * ratio)
            img = img.resize((new_width, new_height), Image.Resampling.LANCZOS)
        
        # 压缩图片
        output = BytesIO()
        img.save(output, format='JPEG', quality=quality, optimize=True)
        output.seek(0)
        
        # 创建新的文件名
        name, ext = os.path.splitext(image_file.name)
        compressed_name = f"{name}_compressed.jpg"
        
        return ContentFile(output.read(), name=compressed_name)
        
    except Exception as e:
        print(f"图片压缩失败: {str(e)}")
        return image_file  # 返回原文件