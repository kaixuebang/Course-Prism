# Course-Prism - 凯学邦课程评价社区

西南财经大学（SWUFE）课程评价社区平台，学生可以搜索课程、查看/撰写评价、关注课程、查看课程统计信息。

## 目录

- [项目概述](#项目概述)
- [技术栈](#技术栈)
- [Docker 容器化部署（推荐）](#docker-容器化部署推荐)
- [快速开始](#快速开始)
- [服务器部署指南](#服务器部署指南)
- [数据迁移指南](#数据迁移指南)
- [项目结构](#项目结构)
- [常用命令](#常用命令)

## 项目概述

凯学邦（Course-Prism）是一个现代化的课程评价社区平台，提供以下功能：

- 📚 课程搜索与浏览
- ✍️ 课程评价撰写与查看
- ⭐ 课程收藏与关注
- 📊 课程统计与数据分析
- 👨‍🏫 教师评价系统
- 🔔 通知提醒功能
- 📈 访客统计

## 技术栈

**前端:**
- Next.js 16.1.6 (Pages Router)
- React 19.2.4
- Ant Design 6.1.0
- TypeScript 5.7.0
- SWR 2.3.0 (数据获取)
- Axios 1.7.0 (HTTP 客户端)
- Recharts 2.15.0 (图表)

**后端:**
- Django 6.0.2
- Django REST Framework 3.16.1
- PostgreSQL 16 (Docker)
- Redis 5.2.0 (缓存)
- Huey 2.5.2 (任务队列)
- Gunicorn 23.0.0 / Uvicorn 0.32.0

## Docker 容器化部署（推荐）

使用 Docker 容器化部署是最简单快速的方式，提供：
- ✅ 环境一致性 - 开发、测试、生产环境完全相同
- ✅ 一键部署 - 5分钟内完成部署
- ✅ 易于迁移 - 支持任何云服务器
- ✅ 简化运维 - 自动化备份、恢复、更新

### 快速开始（Docker）

#### 前置要求

- Docker 20.10+
- Docker Compose 2.0+ 或 `docker compose` 插件
- 至少 2GB 可用内存
- 至少 5GB 可用磁盘空间

#### 一键部署

1. **克隆项目**
   ```bash
   git clone https://github.com/kaixuebang/Course-Prism.git
   cd Course-Prism
   ```

2. **配置环境变量**
   ```bash
   cp .env.example .env
   nano .env  # 编辑配置
   ```

   必须修改的配置项：
   ```bash
   SECRET_KEY=your-super-secret-key-here  # 生成随机密钥
   POSTGRES_PASSWORD=your-secure-password  # 数据库密码
   ALLOWED_HOSTS=your-domain.com,www.your-domain.com  # 你的域名
   CSRF_TRUSTED_ORIGINS=https://your-domain.com  # 你的域名（带协议）
   ```

3. **一键部署**
   ```bash
   chmod +x deploy.sh
   ./deploy.sh
   ```

4. **访问应用**
   - 前端: http://localhost
   - 后端 API: http://localhost/api/
   - Django Admin: http://localhost/admin/

#### Docker Compose 命令

```bash
# 启动所有服务
docker-compose up -d

# 查看日志
docker-compose logs -f

# 查看特定服务日志
docker-compose logs -f backend
docker-compose logs -f frontend

# 停止服务
docker-compose down

# 重启服务
docker-compose restart

# 重新构建并启动
docker-compose up -d --build

# 进入容器
docker-compose exec backend bash
docker-compose exec frontend sh
```

#### 数据管理

```bash
# 备份数据库
./backup.sh

# 恢复数据库
./restore.sh backups/db_backup_20260215_120000.sql

# 运行迁移
docker-compose exec backend python manage.py migrate

# 创建超级用户
docker-compose exec backend python manage.py createsuperuser

# 收集静态文件
docker-compose exec backend python manage.py collectstatic --noinput
```

#### 开发环境

使用开发环境配置（支持热重载）：

```bash
# 启动开发环境
docker-compose -f docker-compose.dev.yml up -d

# 查看日志
docker-compose -f docker-compose.dev.yml logs -f

# 停止开发环境
docker-compose -f docker-compose.dev.yml down
```

开发环境特点：
- 代码热重载（修改即生效）
- 数据库和 Redis 端口暴露到主机
- 使用 Django runserver 而非 Gunicorn

访问地址：
- 前端: http://localhost:3000
- 后端: http://localhost:8000
- PostgreSQL: localhost:5432
- Redis: localhost:6379

#### 详细文档

完整的 Docker 部署文档请参考 [DOCKER.md](DOCKER.md)，包含：
- 架构说明
- 服务配置详解
- 网络和卷管理
- SSL 证书配置
- 故障排除
- 性能优化

---

## 快速开始

### 前置要求

- Node.js 18+ 和 Yarn（推荐 Node.js 20+）
- Python 3.9+（推荐 Python 3.11+）
- Docker 和 Docker Compose（用于 PostgreSQL）
- Redis (可选，用于缓存)

### 本地开发

#### 1. 克隆仓库

```bash
git clone https://github.com/kaixuebang/Course-Prism.git
cd Course-Prism
```

#### 2. 启动 PostgreSQL 和 Redis (Docker)

**推荐使用 Docker Compose：**
```bash
# 在项目根目录，启动数据库和 Redis
docker-compose up -d

# 验证容器运行
docker-compose ps

# 查看日志
docker-compose logs -f
```

**或手动启动 PostgreSQL 容器：**
```bash
docker run -d \
  --name jcourse-postgres \
  -e POSTGRES_DB=jcourse \
  -e POSTGRES_USER=jcourse \
  -e POSTGRES_PASSWORD=jcourse \
  -p 5432:5432 \
  postgres:16

# 验证容器运行
docker ps | grep jcourse-postgres
```

#### 3. 后端设置

```bash
cd backend/jcourse_api-master

# 创建虚拟环境
python3 -m venv venv
source venv/bin/activate  # Windows: venv\Scripts\activate

# 安装依赖
pip install -r requirements.txt

# 配置环境变量
cp ../../configs/backend.env.template .env
# 编辑 .env 文件，设置数据库密码等

# 运行迁移
python manage.py migrate

# 创建超级用户
python manage.py createsuperuser

# 启动开发服务器
python manage.py runserver
```

#### 4. 前端设置

```bash
cd frontend/jcourse-master

# 安装依赖
yarn install

# 配置环境变量
cp ../../configs/frontend.env.template .env.local
# 编辑 .env.local，确保包含以下两行：
# NEXT_PUBLIC_REMOTE_URL=http://localhost:8000
# REMOTE_URL=http://localhost:8000

# 启动开发服务器
yarn dev
```

访问 http://localhost:3000 查看应用。

## 服务器部署指南

### 1. 服务器环境准备

```bash
# 更新系统
sudo apt update && sudo apt upgrade -y

# 安装基础依赖
sudo apt install -y git curl wget build-essential

# 安装 Node.js 18
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs

# 安装 Yarn
npm install -g yarn

# 安装 Python 3 和 pip
sudo apt install -y python3 python3-pip python3-venv

# 安装 Docker 和 Docker Compose
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# 安装 Redis (可选)
sudo apt install -y redis-server

# 安装 Nginx
sudo apt install -y nginx
```

### 2. 克隆项目到服务器

```bash
cd /var/www  # 或其他合适的目录
sudo git clone https://github.com/kaixuebang/Course-Prism.git
sudo chown -R $USER:$USER Course-Prism
cd Course-Prism
```

### 3. 数据库设置（使用 Docker）

```bash
# 启动 PostgreSQL 容器
docker run -d \
  --name jcourse-postgres \
  --restart unless-stopped \
  -e POSTGRES_DB=jcourse \
  -e POSTGRES_USER=jcourse \
  -e POSTGRES_PASSWORD=your_secure_password \
  -p 5432:5432 \
  -v jcourse-db-data:/var/lib/postgresql/data \
  postgres:16

# 验证容器运行
docker ps | grep jcourse-postgres

# 查看日志
docker logs jcourse-postgres
```

**或者使用传统方式安装 PostgreSQL：**
```bash
# 安装 PostgreSQL
sudo apt install -y postgresql postgresql-contrib

# 切换到 postgres 用户
sudo -u postgres psql

# 在 PostgreSQL shell 中执行：
CREATE DATABASE jcourse;
CREATE USER jcourse WITH PASSWORD 'your_secure_password';
ALTER USER jcourse WITH SUPERUSER;
GRANT ALL PRIVILEGES ON DATABASE jcourse TO jcourse;
\q
```

### 4. 后端部署

```bash
cd backend/jcourse_api-master

# 创建虚拟环境
python3 -m venv venv
source venv/bin/activate

# 安装依赖
pip install -r requirements.txt
pip install gunicorn  # 生产环境 WSGI 服务器

# 配置环境变量
nano .env
```

**.env 配置示例：**
```bash
DEBUG=False
SECRET_KEY=your-very-long-random-secret-key-here
DATABASE_URL=postgres://jcourse:your_secure_password@localhost:5432/jcourse
POSTGRES_PASSWORD=your_secure_password
POSTGRES_HOST=localhost
POSTGRES_PORT=5432
ALLOWED_HOSTS=your-domain.com,www.your-domain.com,server-ip
CSRF_TRUSTED_ORIGINS=https://your-domain.com,https://www.your-domain.com
REDIS_HOST=localhost  # 如果使用 Redis
```

```bash
# 运行迁移
python manage.py migrate

# 收集静态文件
python manage.py collectstatic --noinput

# 创建管理员账户
python manage.py createsuperuser
```

### 5. 前端部署

```bash
cd ../../frontend/jcourse-master

# 安装依赖
yarn install

# 配置环境变量
nano .env.local
```

**.env.local 配置示例：**
```bash
NEXT_PUBLIC_REMOTE_URL=https://api.your-domain.com
REMOTE_URL=https://api.your-domain.com
NODE_ENV=production
```

```bash
# 构建生产版本
yarn build
```

### 6. 使用 systemd 配置服务

#### 后端服务 (Gunicorn)

```bash
sudo nano /etc/systemd/system/jcourse-backend.service
```

**jcourse-backend.service 内容：**
```ini
[Unit]
Description=JCourse Backend (Django/Gunicorn)
After=network.target postgresql.service

[Service]
Type=notify
User=your-user
Group=www-data
WorkingDirectory=/var/www/Course-Prism/backend/jcourse_api-master
Environment="PATH=/var/www/Course-Prism/backend/jcourse_api-master/venv/bin"
ExecStart=/var/www/Course-Prism/backend/jcourse_api-master/venv/bin/gunicorn \
    --workers 3 \
    --bind 127.0.0.1:8000 \
    --timeout 120 \
    --access-logfile /var/log/jcourse-backend-access.log \
    --error-logfile /var/log/jcourse-backend-error.log \
    jcourse.wsgi:application

Restart=always
RestartSec=10

[Install]
WantedBy=multi-user.target
```

#### 前端服务 (Next.js)

```bash
sudo nano /etc/systemd/system/jcourse-frontend.service
```

**jcourse-frontend.service 内容：**
```ini
[Unit]
Description=JCourse Frontend (Next.js)
After=network.target

[Service]
Type=simple
User=your-user
Group=www-data
WorkingDirectory=/var/www/Course-Prism/frontend/jcourse-master
Environment="PATH=/usr/bin:/usr/local/bin"
Environment="NODE_ENV=production"
ExecStart=/usr/bin/yarn start
Restart=always
RestartSec=10

[Install]
WantedBy=multi-user.target
```

#### 启动服务

```bash
# 重新加载 systemd
sudo systemctl daemon-reload

# 启动并启用服务
sudo systemctl start jcourse-backend
sudo systemctl enable jcourse-backend
sudo systemctl start jcourse-frontend
sudo systemctl enable jcourse-frontend

# 查看状态
sudo systemctl status jcourse-backend
sudo systemctl status jcourse-frontend
```

### 7. Nginx 配置

```bash
sudo nano /etc/nginx/sites-available/jcourse
```

**Nginx 配置示例：**
```nginx
# API 后端
server {
    listen 80;
    server_name api.your-domain.com;

    client_max_body_size 20M;

    location /static/ {
        alias /var/www/Course-Prism/backend/jcourse_api-master/static/;
    }

    location /media/ {
        alias /var/www/Course-Prism/backend/jcourse_api-master/media/;
    }

    location / {
        proxy_pass http://127.0.0.1:8000;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
    }
}

# 前端
server {
    listen 80;
    server_name your-domain.com www.your-domain.com;

    location / {
        proxy_pass http://127.0.0.1:3000;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
        proxy_cache_bypass $http_upgrade;
    }
}
```

```bash
# 启用站点
sudo ln -s /etc/nginx/sites-available/jcourse /etc/nginx/sites-enabled/

# 测试配置
sudo nginx -t

# 重启 Nginx
sudo systemctl restart nginx
```

### 8. SSL 证书配置 (Let's Encrypt)

```bash
# 安装 Certbot
sudo apt install -y certbot python3-certbot-nginx

# 获取证书
sudo certbot --nginx -d your-domain.com -d www.your-domain.com -d api.your-domain.com

# 证书会自动续期
sudo certbot renew --dry-run
```

## 数据迁移指南

### 完整数据库迁移（推荐）

如果您有完整的数据库备份文件，这是最简单的方式：

#### 1. 导出数据（在原服务器上）

```bash
# 导出完整数据库（包含结构和数据）
pg_dump -U jcourse -h localhost jcourse > full_database_backup.sql

# 或者分别导出
pg_dump -U jcourse -h localhost --schema-only jcourse > schema.sql
pg_dump -U jcourse -h localhost --data-only jcourse > data.sql
```

#### 2. 传输到新服务器

```bash
# 在原服务器上
scp full_database_backup.sql user@new-server:/var/www/Course-Prism/

# 如果文件很大，可以压缩
tar -czf database_backup.tar.gz full_database_backup.sql
scp database_backup.tar.gz user@new-server:/var/www/Course-Prism/
```

#### 3. 导入数据（在新服务器上）

```bash
# 解压（如果压缩了）
cd /var/www/Course-Prism
tar -xzf database_backup.tar.gz

# 确保数据库已创建
sudo -u postgres createdb jcourse
sudo -u postgres createuser jcourse
sudo -u postgres psql -c "ALTER USER jcourse WITH PASSWORD 'your_password';"
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE jcourse TO jcourse;"

# 导入数据
psql -U jcourse -d jcourse -h localhost < full_database_backup.sql

# 验证数据
psql -U jcourse -d jcourse -h localhost -c "SELECT COUNT(*) FROM auth_user;"
psql -U jcourse -d jcourse -h localhost -c "SELECT COUNT(*) FROM jcourse_api_review;"
psql -U jcourse -d jcourse -h localhost -c "SELECT COUNT(*) FROM jcourse_api_course;"
```

### 媒体文件迁移

用户上传的文件（图片、附件等）需要单独迁移：

```bash
# 在原服务器上打包 media 文件夹
cd /path/to/old/backend/jcourse_api-master
tar -czf media_files.tar.gz media/

# 传输到新服务器
scp media_files.tar.gz user@new-server:/var/www/Course-Prism/backend/jcourse_api-master/

# 在新服务器上解压
cd /var/www/Course-Prism/backend/jcourse_api-master
tar -xzf media_files.tar.gz

# 设置正确的权限
sudo chown -R your-user:www-data media/
sudo chmod -R 755 media/
```

### 数据完整性检查

迁移完成后，检查数据完整性：

```bash
cd /var/www/Course-Prism/backend/jcourse_api-master
source venv/bin/activate

# 运行 Django 检查
python manage.py check

# 验证数据
python manage.py shell
```

在 Django shell 中：
```python
from django.contrib.auth.models import User
from jcourse_api.models import Course, Review

print(f"用户数: {User.objects.count()}")
print(f"课程数: {Course.objects.count()}")
print(f"评价数: {Review.objects.count()}")
```

## 项目结构

```
Course-Prism/
├── README.md              # 本文件
├── CLAUDE.md             # Claude Code 指导文件
├── DEPLOYMENT.md         # 详细部署指南
├── configs/              # 配置文件模板
│   ├── backend.env.template
│   ├── frontend.env.template
│   ├── nginx.conf
│   └── jcourse-backend.service
├── backend/              # Django 后端
│   └── jcourse_api-master/
│       ├── jcourse_api/  # 主应用
│       ├── oauth/        # 认证模块
│       ├── ad/           # 广告模块
│       ├── manage.py
│       └── requirements.txt
├── frontend/             # Next.js 前端
│   └── jcourse-master/
│       ├── src/
│       │   ├── pages/    # 页面
│       │   ├── components/ # 组件
│       │   ├── services/ # API 服务
│       │   └── lib/      # 工具函数
│       ├── public/       # 静态资源
│       └── package.json
├── data/                 # 数据文件
│   ├── data-*.csv        # 评价数据
│   └── import_to_database.py
└── original-data/        # 原始数据备份
    ├── 课表数据/
    └── backups/
```

## 常用命令

### 后端 (Django)

```bash
# 进入虚拟环境
cd backend/jcourse_api-master
source venv/bin/activate

# 运行开发服务器
python manage.py runserver

# 数据库迁移
python manage.py makemigrations
python manage.py migrate

# 创建超级用户
python manage.py createsuperuser

# 收集静态文件
python manage.py collectstatic

# 运行测试
python manage.py test

# Django 管理命令
python manage.py check_duplicate          # 检查重复评价
python manage.py remove_duplicate_reviews # 清理重复评价
python manage.py import                   # 导入课程数据
python manage.py update_semester          # 更新学期数据
```

### 前端 (Next.js)

```bash
cd frontend/jcourse-master

# 安装依赖
yarn install

# 开发模式
yarn dev

# 生产构建
yarn build

# 启动生产服务器
yarn start

# 代码格式化
yarn format

# 运行测试
yarn test
```

### 系统服务管理

```bash
# 重启服务
sudo systemctl restart jcourse-backend
sudo systemctl restart jcourse-frontend

# 查看日志
sudo journalctl -u jcourse-backend -f
sudo journalctl -u jcourse-frontend -f

# 查看服务状态
sudo systemctl status jcourse-backend
sudo systemctl status jcourse-frontend
```

## 故障排除

### 前端无法获取数据

1. 检查 `.env.local` 是否包含 `REMOTE_URL` 变量
2. 确认后端服务正在运行
3. 检查 CORS 配置

### 数据库连接失败

1. 确认 PostgreSQL 正在运行：`sudo systemctl status postgresql`
2. 检查 `.env` 中的数据库配置
3. 验证数据库用户权限

### 静态文件无法访问

1. 运行 `python manage.py collectstatic`
2. 检查 Nginx 配置中的 static 路径
3. 验证文件权限

### 服务启动失败

```bash
# 查看详细错误日志
sudo journalctl -u jcourse-backend -n 50 --no-pager
sudo journalctl -u jcourse-frontend -n 50 --no-pager
```

## 环境变量说明

### 后端环境变量

- `SECRET_KEY`: Django 密钥（必须）
- `DEBUG`: 调试模式（生产环境设为 False）
- `POSTGRES_PASSWORD`: 数据库密码
- `POSTGRES_HOST`: 数据库主机（默认 localhost）
- `ALLOWED_HOSTS`: 允许的主机列表
- `CSRF_TRUSTED_ORIGINS`: CSRF 信任的来源
- `REDIS_HOST`: Redis 主机（可选）

### 前端环境变量

- `NEXT_PUBLIC_REMOTE_URL`: API 地址（公开）
- `REMOTE_URL`: API 地址（服务端）
- `NODE_ENV`: 运行环境

## 贡献

欢迎提交 Issue 和 Pull Request！

## 许可证

本项目采用 MIT 许可证。

## 联系方式

- GitHub: https://github.com/kaixuebang/Course-Prism
- 组织: 凯学邦
