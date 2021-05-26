FROM nginx:latest
RUN apt update 
RUN apt upgrade -y 
RUN apt install -y nginx-full

RUN mkdir /etc/nginx/html
RUN mkdir /etc/nginx/html/b2b
RUN mkdir /etc/nginx/html/www

COPY ./site/b2b/index.php /etc/nginx/html/b2b/index.php
COPY ./site/www/index.html /etc/nginx/html/www/index.html

COPY ./config/nginx.conf /etc/nginx/nginx.conf