# 完整网站应用部署指南

## 项目结构
```
git/
├── frontend/              # 前端应用 (Next.js)
│   └── jcourse-master/
│       ├── src/          # 源代码
│       ├── public/       # 静态资源
│       ├── package.json  # 依赖配置
│       └── ...          # 配置文件
├── backend/              # 后端API (Django)
│   └── jcourse_api-master/
│       ├── jcourse_api/  # Django应用
│       ├── jcourse/      # 数据库模型
│       ├── requirements.txt # Python依赖
│       └── ...          # 配置文件
├── data/                 # 学生评价数据
│   ├── *.csv            # 评价数据文件
│   └── *.py             # 数据处理脚本
├── original-data/        # 原始数据（课表等）
│   ├── 课表数据/        # 课表CSV文件
│   ├── merged_course_reviews.csv
│   └── *.sql            # 数据库备份
├── configs/              # 配置文件
├── ssl/                  # SSL证书
├── media/                # 用户上传的媒体文件
├── full_database_backup.sql    # 完整数据库备份（结构+数据）
├── full_database_data.sql      # 仅数据库数据
└── DEPLOYMENT.md        # 本文件
```

## 部署步骤

### 1. 环境准备
```bash
# 安装Node.js (前端)
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
apt-get install -y nodejs

# 安装Python (后端)
apt-get install -y python3 python3-pip python3-venv

# 安装数据库 (PostgreSQL推荐)
apt-get install -y postgresql postgresql-contrib
```

### 2. 前端部署
```bash
cd git/frontend/jcourse-master

# 安装依赖
npm install

# 环境配置
cp .env.local.example .env.local
# 编辑.env.local文件，配置API地址等

# 构建应用
npm run build

# 启动开发服务器
npm run dev
# 或生产环境
npm start
```

### 3. 后端部署
```bash
cd git/backend/jcourse_api-master

# 创建虚拟环境
python3 -m venv venv
source venv/bin/activate

# 安装依赖
pip install -r requirements.txt

# 环境配置
cp .env.example .env
# 编辑.env文件，配置数据库等

# 数据库迁移
python manage.py migrate

# 收集静态文件
python manage.py collectstatic

# 启动开发服务器
python manage.py runserver
# 或生产环境 (使用gunicorn等)
```

### 4. 完整数据库恢复（包含用户数据和评价数据）
```bash
# 创建数据库
sudo -u postgres createdb jcourse
sudo -u postgres createuser jcourse
sudo -u postgres psql -c "ALTER USER jcourse WITH PASSWORD 'jcourse';"
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE jcourse TO jcourse;"

# 恢复完整数据库（包含所有用户数据、评价数据等）
psql -U jcourse -d jcourse -h localhost < full_database_backup.sql

# 或者分步恢复：
# 1. 先恢复表结构
# psql -U jcourse -d jcourse -h localhost < original-data/current_database_backup.sql
# 2. 再恢复数据
# psql -U jcourse -d jcourse -h localhost < full_database_data.sql

# 验证数据恢复
psql -U jcourse -d jcourse -h localhost -c "SELECT COUNT(*) FROM auth_user;"
psql -U jcourse -d jcourse -h localhost -c "SELECT COUNT(*) FROM jcourse_api_review;"
```

### 5. 媒体文件恢复
```bash
# 复制用户上传的媒体文件
sudo cp -r git/media/* /path/to/your/django/media/folder/

# 或配置Django的MEDIA_ROOT指向git/media/
```

### 6. 课表和学生评价数据导入（备用）
```bash
# 如果需要重新导入原始数据而不是使用数据库备份
cd git/data
python import_to_database.py

# 导入课表数据
# 参考 original-data/课表数据/ 中的CSV文件
```

### 5. Nginx配置 (生产环境)
```nginx
# 前端代理
server {
    listen 80;
    server_name your-domain.com;

    location / {
        proxy_pass http://localhost:3000;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_cache_bypass $http_upgrade;
    }
}

# 后端API代理
server {
    listen 80;
    server_name api.your-domain.com;

    location / {
        proxy_pass http://localhost:8000;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
    }
}
```

### 6. SSL配置 (使用Let's Encrypt)
```bash
# 安装certbot
apt-get install -y certbot python3-certbot-nginx

# 获取证书
certbot --nginx -d your-domain.com -d api.your-domain.com

# 或使用提供的SSL证书
# 将git/ssl/中的证书配置到Nginx
```

## 依赖说明
- 前端依赖已移除，需通过 `npm install` 重新安装
- 后端Python依赖已移除，需通过 `pip install -r requirements.txt` 重新安装
- 数据库依赖需单独安装配置

## 数据文件说明
1. **课表数据**: `original-data/课表数据/` - 三个学期的课表CSV
2. **学生评价**: `data/` - 多个CSV文件和导入脚本
3. **数据库备份**: `original-data/*.sql` - 完整数据库备份

## 故障排除
1. **前端构建失败**: 检查Node.js版本和依赖
2. **后端启动失败**: 检查Python版本、虚拟环境和数据库连接
3. **数据导入失败**: 检查数据库权限和CSV文件格式
4. **跨域问题**: 配置正确的CORS设置和代理

## 联系方式
如需进一步协助，请参考原始文档或联系系统管理员。