#!/bin/bash
set -e

echo "==================================="
echo "Course-Prism 容器化部署脚本"
echo "==================================="

# 检查 .env 文件
if [ ! -f .env ]; then
    echo "错误: .env 文件不存在"
    echo "请复制 .env.example 并配置环境变量："
    echo "  cp .env.example .env"
    echo "  nano .env"
    exit 1
fi

# 检查 Docker 和 Docker Compose
if ! command -v docker &> /dev/null; then
    echo "错误: Docker 未安装"
    exit 1
fi

if ! command -v docker-compose &> /dev/null && ! docker compose version &> /dev/null; then
    echo "错误: Docker Compose 未安装"
    exit 1
fi

# 判断使用 docker-compose 还是 docker compose
if command -v docker-compose &> /dev/null; then
    DOCKER_COMPOSE="docker-compose"
else
    DOCKER_COMPOSE="docker compose"
fi

# 构建镜像
echo "正在构建 Docker 镜像..."
$DOCKER_COMPOSE build

# 启动服务
echo "正在启动服务..."
$DOCKER_COMPOSE up -d

# 等待服务启动
echo "等待服务启动..."
sleep 10

# 检查服务状态
echo "检查服务状态..."
$DOCKER_COMPOSE ps

# 显示日志
echo ""
echo "==================================="
echo "部署完成！"
echo "==================================="
echo "访问 http://localhost 查看应用"
echo ""
echo "查看日志: $DOCKER_COMPOSE logs -f"
echo "停止服务: $DOCKER_COMPOSE down"
echo "重启服务: $DOCKER_COMPOSE restart"
echo "==================================="
