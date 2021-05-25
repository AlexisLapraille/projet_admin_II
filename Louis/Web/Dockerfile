FROM romeoz/docker-apache-php

RUN apt install apache2
RUN apt-get update -y && apt-get install -y nano vim
RUN apt-get install -y dnsutils net-tools iputils-ping
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/apache-selfsigned.key -out /etc/ssl/certs/apache-selfsigned.crt -subj "/C=BE/ST=Braban-wallon/L=Louvain-La-Neuve/O=Ephec/OU=IT/CN=www.m1-4.ephec-ti.be"

COPY /site/b2b/index.php /var/www/b2b/index.php
COPY /config/b2b.conf /etc/apache2/sites-available/b2b.conf
COPY /site/www/index.html /var/www/index.html
COPY /config/www.conf /etc/apache2/sites-available/www.conf
COPY /config/www-ssl.conf /etc/apache2/sites-available/www-ssl.conf

RUN apt-get install -y software-properties-common
RUN apt-get install -y certbot python3-certbot-apache apache2

COPY /config/apache2.conf /etc/apache2/apache2.conf

RUN a2ensite b2b.conf
RUN a2ensite www.conf
RUN a2ensite www-ssl.conf
RUN a2enmod ssl
RUN a2enmod headers
RUN a2enmod rewrite
RUN service apache2 restart