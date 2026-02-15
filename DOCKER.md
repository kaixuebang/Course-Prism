# Course-Prism Docker 部署文档

本文档详细说明如何使用 Docker 容器化部署 Course-Prism 项目。

## 目录

- [架构概述](#架构概述)
- [快速开始](#快速开始)
- [详细配置](#详细配置)
- [开发环境](#开发环境)
- [生产环境](#生产环境)
- [数据管理](#数据管理)
- [故障排除](#故障排除)
- [性能优化](#性能优化)

## 架构概述

### 容器架构

```
┌─────────────────────────────────────┐
│         Nginx 容器                   │
│    (反向代理 + SSL + 静态文件)       │  Port: 80/443
└──────────┬──────────────────────────┘
           │
    ┌──────┴──────┐
    │             │
┌───▼────┐   ┌───▼────┐
│前端容器 │   │后端容器 │
│Next.js │   │Django  │  Port: 3000 (内部)  Port: 8000 (内部)
└────────┘   └───┬────┘
                 │
         ┌───────┴───────┐
         │               │
    ┌────▼───┐      ┌───▼────┐
    │数据库   │      │缓存     │
    │PostgreSQL│     │Redis   │  Port: 5432 (内部)  Port: 6379 (内部)
    └─────────┘      └────────┘
```

### 服务说明

| 服务 | 镜像 | 用途 | 端口 |
|------|------|------|------|
| nginx | nginx:stable-alpine | 反向代理和静态文件服务 | 80, 443 |
| frontend | node:25-alpine | Next.js 前端应用 | 3000 (内部) |
| backend | python:3.13-slim | Django 后端 API | 8000 (内部) |
| db | postgres:16 | PostgreSQL 数据库 | 5432 (内部) |
| redis | redis:7-alpine | Redis 缓存 | 6379 (内部) |

### 网络配置

所有服务在同一个 Docker 网络 `jcourse-network` 中，可以通过服务名相互访问。

### 数据持久化

| Volume | 用途 | 挂载点 |
|--------|------|--------|
| jcourse-db-data | PostgreSQL 数据 | /var/lib/postgresql/data |
| jcourse-redis-data | Redis 数据 | /data |
| jcourse-static-files | Django 静态文件 | /app/static |
| jcourse-media-files | 用户上传的媒体文件 | /app/media |

## 快速开始

### 前置要求

- Docker 20.10+
- Docker Compose 2.0+ 或 `docker compose` 插件
- 至少 2GB 可用内存
- 至少 5GB 可用磁盘空间

### 一键部署

1. **克隆项目**

```bash
git clone https://github.com/kaixuebang/Course-Prism.git
cd Course-Prism
```

2. **配置环境变量**

```bash
cp .env.example .env
nano .env  # 或使用其他编辑器
```

必须修改的配置项：
```bash
SECRET_KEY=your-super-secret-key-here  # 生成随机密钥
POSTGRES_PASSWORD=your-secure-password  # 数据库密码
ALLOWED_HOSTS=your-domain.com,www.your-domain.com  # 你的域名
CSRF_TRUSTED_ORIGINS=https://your-domain.com  # 你的域名（带协议）
```

3. **运行部署脚本**

```bash
chmod +x deploy.sh
./deploy.sh
```

4. **访问应用**

- 前端: http://localhost
- 后端 API: http://localhost/api/
- Django Admin: http://localhost/admin/

## 详细配置

### 环境变量详解

#### Django 配置

```bash
# 调试模式（生产环境必须设为 False）
DEBUG=False

# Django 密钥（必须是随机字符串）
SECRET_KEY=your-super-secret-key

# 允许访问的主机名（用逗号分隔）
ALLOWED_HOSTS=localhost,127.0.0.1,your-domain.com

# CSRF 信任的来源（用逗号分隔，带协议）
CSRF_TRUSTED_ORIGINS=https://your-domain.com,https://www.your-domain.com
```

生成随机密钥：
```bash
python -c "from django.core.management.utils import get_random_secret_key; print(get_random_secret_key())"
```

#### 数据库配置

```bash
POSTGRES_DB=jcourse  # 数据库名
POSTGRES_USER=jcourse  # 数据库用户
POSTGRES_PASSWORD=your-secure-password  # 数据库密码
```

#### Redis 配置

```bash
REDIS_PASSWORD=  # Redis 密码（可选，留空表示无密码）
```

#### 邮件配置（可选）

```bash
EMAIL_HOST=smtp.gmail.com
EMAIL_PORT=465
EMAIL_HOST_USER=your-email@gmail.com
EMAIL_HOST_PASSWORD=your-app-password
EMAIL_USE_SSL=True
```

#### 云存储配置（可选）

**七牛云：**
```bash
QINIU_ACCESS_KEY=your-ak
QINIU_SECRET_KEY=your-sk
QINIU_BUCKET_NAME=your-bucket
QINIU_BASE_URL=https://cdn.your-domain.com
```

**腾讯云：**
```bash
TENCENT_SECRET_ID=your-id
TENCENT_SECRET_KEY=your-key
```

### Docker Compose 配置

#### 生产环境 (`docker-compose.yml`)

```bash
# 启动所有服务
docker-compose up -d

# 查看服务状态
docker-compose ps

# 查看日志
docker-compose logs -f

# 停止服务
docker-compose down

# 停止并删除所有数据
docker-compose down -v  # ⚠️ 危险：会删除所有数据卷
```

#### 开发环境 (`docker-compose.dev.yml`)

```bash
# 启动开发环境
docker-compose -f docker-compose.dev.yml up -d

# 查看日志（带颜色）
docker-compose -f docker-compose.dev.yml logs -f

# 重启特定服务
docker-compose -f docker-compose.dev.yml restart backend

# 停止开发环境
docker-compose -f docker-compose.dev.yml down
```

开发环境特点：
- 后端使用 `runserver` 而非 Gunicorn
- 前端支持热重载
- 数据库和 Redis 端口暴露到主机
- 代码目录挂载到容器（实时更新）
- 使用默认密码（不安全，仅用于开发）

## 开发环境

### 启动开发环境

```bash
docker-compose -f docker-compose.dev.yml up -d
```

### 访问服务

- 前端: http://localhost:3000
- 后端 API: http://localhost:8000/api/
- Django Admin: http://localhost:8000/admin/
- PostgreSQL: localhost:5432
- Redis: localhost:6379

### 代码热重载

开发环境会挂载本地代码目录到容器，修改代码后会自动重载。

**前端：**
```bash
# 修改 frontend/jcourse-master/ 下的文件
# Next.js 会自动检测更改并重新编译
```

**后端：**
```bash
# 修改 backend/jcourse_api-master/ 下的文件
# Django runserver 会自动检测更改并重启
```

### 运行命令

**进入容器：**
```bash
# 进入后端容器
docker-compose -f docker-compose.dev.yml exec backend bash

# 进入前端容器
docker-compose -f docker-compose.dev.yml exec frontend sh

# 进入数据库容器
docker-compose -f docker-compose.dev.yml exec db psql -U jcourse -d jcourse
```

**运行 Django 管理命令：**
```bash
# 创建迁移
docker-compose -f docker-compose.dev.yml exec backend python manage.py makemigrations

# 运行迁移
docker-compose -f docker-compose.dev.yml exec backend python manage.py migrate

# 创建超级用户
docker-compose -f docker-compose.dev.yml exec backend python manage.py createsuperuser

# 运行测试
docker-compose -f docker-compose.dev.yml exec backend python manage.py test
```

**运行前端命令：**
```bash
# 安装新依赖
docker-compose -f docker-compose.dev.yml exec frontend yarn add package-name

# 运行测试
docker-compose -f docker-compose.dev.yml exec frontend yarn test

# 代码格式化
docker-compose -f docker-compose.dev.yml exec frontend yarn format
```

## 生产环境

### 部署准备

1. **配置域名和 DNS**

将域名解析到服务器 IP 地址。

2. **配置环境变量**

复制并编辑 `.env` 文件：
```bash
cp .env.example .env
nano .env
```

3. **SSL 证书（推荐）**

使用 Let's Encrypt 获取免费 SSL 证书：

```bash
# 安装 certbot
sudo apt-get install certbot

# 获取证书（需要先停止 Nginx 容器）
docker-compose stop nginx
sudo certbot certonly --standalone -d your-domain.com -d www.your-domain.com

# 复制证书到项目目录
sudo mkdir -p ssl
sudo cp /etc/letsencrypt/live/your-domain.com/fullchain.pem ssl/
sudo cp /etc/letsencrypt/live/your-domain.com/privkey.pem ssl/
```

4. **更新 Nginx 配置**

创建 `nginx/ssl.conf`：
```nginx
server {
    listen 80;
    server_name your-domain.com www.your-domain.com;
    return 301 https://$server_name$request_uri;
}

server {
    listen 443 ssl http2;
    server_name your-domain.com www.your-domain.com;

    ssl_certificate /etc/nginx/ssl/fullchain.pem;
    ssl_certificate_key /etc/nginx/ssl/privkey.pem;

    # SSL 优化配置
    ssl_protocols TLSv1.2 TLSv1.3;
    ssl_ciphers HIGH:!aNULL:!MD5;
    ssl_prefer_server_ciphers on;

    # 其他配置同 default.conf
    # ...
}
```

### 启动生产环境

```bash
./deploy.sh
```

或手动执行：
```bash
docker-compose build
docker-compose up -d
docker-compose ps
```

### 健康检查

```bash
# 检查所有容器状态
docker-compose ps

# 检查日志
docker-compose logs -f

# 检查特定服务
docker-compose logs -f backend
docker-compose logs -f frontend
docker-compose logs -f nginx

# 检查资源使用
docker stats
```

### 扩展服务

如需扩展后端服务：

```bash
# 启动 3 个后端实例
docker-compose up -d --scale backend=3

# 需要同时更新 Nginx 配置以负载均衡
```

## 数据管理

### 备份数据

**使用备份脚本（推荐）：**
```bash
./backup.sh
```

**手动备份数据库：**
```bash
# 备份到文件
docker-compose exec -T db pg_dump -U jcourse jcourse > backup_$(date +%Y%m%d).sql

# 压缩备份
gzip backup_$(date +%Y%m%d).sql
```

**备份媒体文件：**
```bash
tar -czf media_backup_$(date +%Y%m%d).tar.gz -C backend/jcourse_api-master media/
```

**备份 Docker 卷：**
```bash
# 备份 PostgreSQL 数据卷
docker run --rm -v jcourse-db-data:/data -v $(pwd)/backups:/backup alpine tar czf /backup/postgres_volume.tar.gz -C /data .

# 备份媒体文件卷
docker run --rm -v jcourse-media-files:/data -v $(pwd)/backups:/backup alpine tar czf /backup/media_volume.tar.gz -C /data .
```

### 恢复数据

**使用恢复脚本（推荐）：**
```bash
./restore.sh backups/db_backup_20260215_120000.sql
```

**手动恢复数据库：**
```bash
# 从 SQL 文件恢复
cat backup.sql | docker-compose exec -T db psql -U jcourse -d jcourse

# 从压缩文件恢复
gunzip -c backup.sql.gz | docker-compose exec -T db psql -U jcourse -d jcourse
```

**恢复媒体文件：**
```bash
tar -xzf media_backup.tar.gz -C backend/jcourse_api-master/
```

### 数据迁移

**从旧服务器迁移到新服务器：**

1. 在旧服务器上备份：
```bash
./backup.sh
scp backups/db_backup_*.sql new-server:/path/to/Course-Prism/backups/
scp backups/media_backup_*.tar.gz new-server:/path/to/Course-Prism/backups/
```

2. 在新服务器上部署：
```bash
./deploy.sh
```

3. 在新服务器上恢复：
```bash
./restore.sh backups/db_backup_*.sql
tar -xzf backups/media_backup_*.tar.gz -C backend/jcourse_api-master/
```

## 故障排除

### 常见问题

#### 1. 容器无法启动

**检查日志：**
```bash
docker-compose logs backend
docker-compose logs frontend
```

**常见原因：**
- 端口冲突：检查 80/443 端口是否被占用
- 内存不足：检查 `docker stats`
- 配置错误：检查 `.env` 文件

#### 2. 前端无法访问后端

**检查网络：**
```bash
docker network ls
docker network inspect course-prism_jcourse-network
```

**测试连接：**
```bash
docker-compose exec frontend ping backend
docker-compose exec frontend curl http://backend:8000/api/
```

#### 3. 数据库连接失败

**检查数据库状态：**
```bash
docker-compose logs db
docker-compose exec db pg_isready -U jcourse
```

**手动连接测试：**
```bash
docker-compose exec backend python manage.py dbshell
```

#### 4. 静态文件 404

**重新收集静态文件：**
```bash
docker-compose exec backend python manage.py collectstatic --noinput
```

**检查卷挂载：**
```bash
docker volume inspect jcourse-static-files
docker-compose exec nginx ls -la /var/www/static/
```

#### 5. 权限问题

**修复媒体文件权限：**
```bash
docker-compose exec backend chown -R www-data:www-data /app/media
```

### 重建容器

**重建单个服务：**
```bash
docker-compose up -d --build --force-recreate backend
```

**重建所有服务：**
```bash
docker-compose down
docker-compose up -d --build
```

**清理并重建（⚠️ 会删除数据）：**
```bash
docker-compose down -v
docker-compose up -d --build
```

### 查看日志

**实时查看所有日志：**
```bash
docker-compose logs -f
```

**查看特定服务最近 100 行日志：**
```bash
docker-compose logs --tail=100 backend
```

**按时间过滤：**
```bash
docker-compose logs --since 30m backend  # 最近 30 分钟
docker-compose logs --since 2024-01-01T00:00:00 backend  # 指定时间之后
```

## 性能优化

### 镜像优化

1. **多阶段构建**：已在 Dockerfile 中实现
2. **使用 alpine 镜像**：减小镜像体积
3. **清理缓存**：定期清理未使用的镜像

```bash
# 清理所有未使用的镜像
docker image prune -a

# 清理所有未使用的容器、网络、卷
docker system prune -a --volumes
```

### 资源限制

编辑 `docker-compose.yml` 添加资源限制：

```yaml
backend:
  # ...
  deploy:
    resources:
      limits:
        cpus: '1.0'
        memory: 1G
      reservations:
        cpus: '0.5'
        memory: 512M
```

### 缓存优化

**Redis 配置优化：**

```yaml
redis:
  command: >
    redis-server
    --appendonly yes
    --requirepass ${REDIS_PASSWORD:-}
    --maxmemory 256mb
    --maxmemory-policy allkeys-lru
```

**Django 缓存配置：**

在 `backend/jcourse_api-master/jcourse/settings.py` 中：

```python
CACHES = {
    'default': {
        'BACKEND': 'django.core.cache.backends.redis.RedisCache',
        'LOCATION': f'redis://{REDIS_HOST}:{REDIS_PORT}/1',
        'OPTIONS': {
            'PASSWORD': REDIS_PASSWORD,
            'CLIENT_CLASS': 'django_redis.client.DefaultClient',
        },
        'KEY_PREFIX': 'jcourse',
        'TIMEOUT': 300,
    }
}
```

### 数据库优化

**PostgreSQL 配置优化：**

创建 `postgres/postgresql.conf`：

```conf
# 内存配置
shared_buffers = 256MB
effective_cache_size = 1GB
work_mem = 16MB
maintenance_work_mem = 128MB

# 连接配置
max_connections = 100

# 日志配置
log_min_duration_statement = 1000  # 记录超过 1 秒的查询
```

在 `docker-compose.yml` 中挂载：

```yaml
db:
  volumes:
    - ./postgres/postgresql.conf:/etc/postgresql/postgresql.conf
  command: postgres -c config_file=/etc/postgresql/postgresql.conf
```

### Nginx 优化

**启用 gzip 压缩**：已在 `nginx/nginx.conf` 中配置

**启用浏览器缓存**：已在 `nginx/default.conf` 中配置

**添加速率限制**：

在 `nginx/default.conf` 中添加：

```nginx
http {
    limit_req_zone $binary_remote_addr zone=api_limit:10m rate=10r/s;

    server {
        location /api/ {
            limit_req zone=api_limit burst=20 nodelay;
            # ...
        }
    }
}
```

## 监控和日志

### 日志管理

**配置日志轮转：**

创建 `docker-compose.logging.yml`：

```yaml
services:
  backend:
    logging:
      driver: "json-file"
      options:
        max-size: "10m"
        max-file: "3"
```

使用：
```bash
docker-compose -f docker-compose.yml -f docker-compose.logging.yml up -d
```

### 监控

**使用 Docker stats：**
```bash
docker stats --format "table {{.Name}}\t{{.CPUPerc}}\t{{.MemUsage}}"
```

**安装 Portainer（可选）：**
```bash
docker volume create portainer_data
docker run -d -p 9000:9000 --name portainer --restart=always \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v portainer_data:/data \
  portainer/portainer-ce:latest
```

访问 http://localhost:9000 查看可视化界面。

## 安全建议

1. **使用强密码**：修改所有默认密码
2. **启用 SSL/TLS**：在生产环境必须使用 HTTPS
3. **限制端口暴露**：仅暴露必要的端口（80/443）
4. **定期更新**：定期更新 Docker 镜像和依赖
5. **备份数据**：定期备份数据库和媒体文件
6. **监控日志**：定期检查日志以发现异常
7. **使用防火墙**：配置服务器防火墙规则
8. **环境变量保护**：不要将 `.env` 文件提交到版本控制

## 附录

### 完整命令参考

```bash
# 构建和启动
docker-compose build              # 构建镜像
docker-compose up -d              # 后台启动服务
docker-compose up -d --build      # 重新构建并启动

# 查看和管理
docker-compose ps                 # 查看服务状态
docker-compose logs -f            # 查看日志
docker-compose top                # 查看进程

# 停止和删除
docker-compose stop               # 停止服务
docker-compose down               # 停止并删除容器
docker-compose down -v            # 停止并删除容器和卷

# 重启服务
docker-compose restart            # 重启所有服务
docker-compose restart backend    # 重启特定服务

# 进入容器
docker-compose exec backend bash  # 进入后端容器
docker-compose exec frontend sh   # 进入前端容器

# 运行命令
docker-compose exec backend python manage.py migrate
docker-compose exec frontend yarn add package-name
```

### 目录结构

```
Course-Prism/
├── docker-compose.yml           # 生产环境配置
├── docker-compose.dev.yml       # 开发环境配置
├── .env                         # 环境变量（不提交到 Git）
├── .env.example                 # 环境变量模板
├── deploy.sh                    # 部署脚本
├── backup.sh                    # 备份脚本
├── restore.sh                   # 恢复脚本
├── frontend/
│   └── jcourse-master/
│       ├── Dockerfile           # 前端镜像
│       └── .dockerignore        # Docker 忽略文件
├── backend/
│   └── jcourse_api-master/
│       ├── Dockerfile           # 后端镜像
│       ├── docker-entrypoint.sh # 启动脚本
│       └── .dockerignore        # Docker 忽略文件
├── nginx/
│   ├── Dockerfile               # Nginx 镜像
│   ├── nginx.conf               # Nginx 主配置
│   └── default.conf             # 站点配置
├── ssl/                         # SSL 证书目录（可选）
└── backups/                     # 备份目录
```

## 支持

如有问题，请：

1. 查看本文档的故障排除部分
2. 检查项目 GitHub Issues
3. 提交新 Issue 并附上详细的错误日志

---

**最后更新：** 2026-02-15
**文档版本：** 1.0.0
