FROM nginx:1.23.0

COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /var/nginx/html/www/index.html
EXPOSE 80