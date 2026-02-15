#!/bin/bash
set -e

if [ -z "$1" ]; then
    echo "用法: ./restore.sh <备份文件.sql>"
    exit 1
fi

BACKUP_FILE=$1

if [ ! -f "$BACKUP_FILE" ]; then
    echo "错误: 备份文件不存在: $BACKUP_FILE"
    exit 1
fi

echo "警告: 这将覆盖当前数据库！"
read -p "确认继续? (yes/no): " CONFIRM

if [ "$CONFIRM" != "yes" ]; then
    echo "已取消"
    exit 0
fi

# 判断使用 docker-compose 还是 docker compose
if command -v docker-compose &> /dev/null; then
    DOCKER_COMPOSE="docker-compose"
else
    DOCKER_COMPOSE="docker compose"
fi

echo "开始恢复数据库..."
cat $BACKUP_FILE | $DOCKER_COMPOSE exec -T db psql -U jcourse -d jcourse

echo "数据库恢复完成！"
