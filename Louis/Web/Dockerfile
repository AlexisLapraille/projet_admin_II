# Venant du serveur HTTP d'Apache
FROM httpd:2.4
COPY ./site/www/index.html /usr/local/apache2/htdocs/www/index.html
COPY ./site/b2b/index.php /usr/local/apache2/htdocs/b2b/index.php
COPY ./config/httpd.conf /usr/local/apache2/conf/httpd.conf
RUN apt-get update
RUN apt-get -y install openssl
RUN apt-get update -y && apt-get install -y nano vim
RUN apt-get install -y dnsutils net-tools iputils-ping
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /usr/local/apache2/conf/server.key -out /usr/local/apache2/conf/server.crt -subj "/C=BE/ST=Braban-wallon/L=Louvain-La-Neuve"