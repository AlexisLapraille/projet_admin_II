FROM enoniccloud/apache2-letsencrypt


COPY sources.list /etc/apt/sources.list
COPY apache2.conf /etc/apache2/apache2.conf
COPY myvhost.conf /etc/apache2/sites-enabled/myvhost.conf
COPY b2b.conf /etc/apache2/sites-enabled/b2b.conf
COPY index.html /var/www/html/index.html
COPY index.php /var/www/html/b2b/index.php

RUN a2enmod headers

#RUN apt-get update -y &&  apt-get dist-upgrade -y

#RUN apt install libapache2-mod-php -y

#RUN a2enmod php7.2
#RUN service apache2 restart