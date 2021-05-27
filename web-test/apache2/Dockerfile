FROM enoniccloud/apache2-letsencrypt

COPY myvhost.conf /etc/apache2/sites-enabled/myvhost.conf
COPY index.html /var/www/html/index.html


RUN a2enmod headers