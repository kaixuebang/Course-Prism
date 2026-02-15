FROM nginx:stable-alpine

# 复制 Nginx 配置
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf

# 创建静态文件目录
RUN mkdir -p /var/www/static /var/www/media

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
