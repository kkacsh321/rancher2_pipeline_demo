FROM nginx:latest

COPY nginx.conf /etc/nginx/nginx.conf
COPY default-site.conf /etc/nginx/sites-enabled/default.conf
COPY run_nginx.sh /etc/service/nginx/run
COPY html/ /usr/share/nginx/html/

RUN chown -R nginx:nginx /usr/share/nginx/html/
