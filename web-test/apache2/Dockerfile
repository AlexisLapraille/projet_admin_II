FROM enoniccloud/apache2-letsencrypt

RUN apt-get install -y curl apache2 libapache2-mod-php7.3 php7.3-cli php7.3-readline php7.3-mbstring php7.3-zip php7.3-intl php7.3-xml php7.3-json php7.3-curl php7.3-gd php7.3-pgsql php7.3-mysql php-pear


COPY apache2.conf /etc/apache2/apache2.conf
COPY myvhost.conf /etc/apache2/sites-enabled/myvhost.conf
COPY b2b.conf /etc/apache2/sites-enabled/b2b.conf
COPY index.html /var/www/html/index.html
COPY index.php /var/www/html/b2b/index.php


RUN a2enmod headers