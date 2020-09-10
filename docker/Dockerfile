FROM nginx:latest

COPY docker/nginx.conf /etc/nginx/nginx.conf
COPY docker/default-site.conf /etc/nginx/sites-enabled/default.conf
COPY docker/run_nginx.sh /etc/service/nginx/run
COPY docker/html/ /usr/share/nginx/html/

RUN chown -R nginx:nginx /usr/share/nginx/html/
