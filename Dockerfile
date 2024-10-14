# 使用官方的Nginx镜像作为基础镜像
FROM nginx:1.27

# 复制自定义的index.html到容器的/html目录中，并设置默认为index.html
COPY index.html /usr/share/nginx/html/

# 可选：如果你需要覆盖默认的nginx配置
# COPY nginx.conf /etc/nginx/nginx.conf

# 启动时运行nginx
CMD ["nginx", "-g", "daemon off;"]
