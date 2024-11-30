# 使用官方的 Nginx 基础镜像
FROM nginx:alpine

# 设置工作目录
WORKDIR /usr/share/nginx/html

# 复制当前目录的所有内容到工作目录中
COPY . .

# 暴露 Nginx 默认的 HTTP 端口
EXPOSE 80

# 使用 Nginx 默认的启动命令
CMD ["nginx", "-g", "daemon off;"]
