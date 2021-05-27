FROM enoniccloud/apache2-letsencrypt

COPY myvhost.conf /etc/apache2/sites-enabled/myvhost.conf
COPY ./apache2/index.html /var/www/html/index.html


RUN a2enmod headers