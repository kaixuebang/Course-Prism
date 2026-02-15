#!/bin/bash
set -e

BACKUP_DIR="./backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
DB_BACKUP_FILE="$BACKUP_DIR/db_backup_$TIMESTAMP.sql"

echo "开始备份数据库..."

# 创建备份目录
mkdir -p $BACKUP_DIR

# 判断使用 docker-compose 还是 docker compose
if command -v docker-compose &> /dev/null; then
    DOCKER_COMPOSE="docker-compose"
else
    DOCKER_COMPOSE="docker compose"
fi

# 备份数据库
$DOCKER_COMPOSE exec -T db pg_dump -U jcourse jcourse > $DB_BACKUP_FILE

echo "数据库备份完成: $DB_BACKUP_FILE"

# 备份媒体文件
if [ -d "./backend/jcourse_api-master/media" ]; then
    echo "开始备份媒体文件..."
    tar -czf "$BACKUP_DIR/media_backup_$TIMESTAMP.tar.gz" -C ./backend/jcourse_api-master media/
    echo "媒体文件备份完成: $BACKUP_DIR/media_backup_$TIMESTAMP.tar.gz"
fi

# 清理旧备份（保留最近 7 天）
find $BACKUP_DIR -name "*.sql" -mtime +7 -delete
find $BACKUP_DIR -name "*.tar.gz" -mtime +7 -delete

echo "备份完成！"
