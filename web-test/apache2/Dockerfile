FROM enoniccloud/apache2-letsencrypt

RUN apt install libapache2-mod-php


COPY apache2.conf /etc/apache2/apache2.conf
COPY myvhost.conf /etc/apache2/sites-enabled/myvhost.conf
COPY b2b.conf /etc/apache2/sites-enabled/b2b.conf
COPY index.html /var/www/html/index.html
COPY index.php /var/www/html/b2b/index.php


RUN a2enmod headers