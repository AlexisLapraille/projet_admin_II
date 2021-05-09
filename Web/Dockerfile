# Venant du serveur HTTP d'Apache
FROM httpd:2.4

# Update et upgrade au cas ou pour eviter des failles sécurité
RUN apt update 
RUN apt upgrade -y 

# Installation de PHP
RUN apt-get install -y php libapache2-mod-php php-mysqlµ

# Création des répertoires Apache
RUN mkdir /usr/local/apache2/htdocs/www
RUN mkdir /usr/local/apache2/htdocs/b2b
#RUN apt install -y vim
#RUN apt install -y net-tools

# Ouverture du port 80 d'Apache
EXPOSE 80

COPY www/index.html /usr/local/apache2/htdocs/www
COPY b2b/index.php /usr/local/apache2/htdocs/b2b
COPY httpd.conf /usr/local/apache2/conf/httpd.conf
