# Commande utilisé

1. Créer un reseau pour docker (si pas deja fait):
`docker network create --driver bridge --subnet 172.16.0.0/24 --gateway 172.16.0.254 dmz`

1. Si vous n'ètes pas sure vous pouvez checker avec: 
`docker inspect network dmz`

1. Créer l'image : 
`docker build -t web .`

1. Tag l'image : 
`docker tag web loulou42/apache-adminproject`

1. Push l'image sur le hub: 
`docker push loulou42/apache-adminproject`

1. Run image : 
`docker run -it --rm -d -p 80:80 --network dmz --ip 172.16.0.4 --name web-extern loulou42/apache-adminproject`
 docker run -it --rm -d -p 80:80 -p 443:443 --network dmz --ip 172.16.0.4 --name web-extern loulou42/apache-adminproject

## avec docker compose

1. run docker-compose
`docker-compose up`


1. pour activer php
`RUN apt-get update -y &&  apt-get dist-upgrade -y`
`RUN apt install libapache2-mod-php -y`
`RUN a2enmod php7.2`
`RUN service apache2 restart`
## Lien vers le site web : https://www.m1-4.ephec-ti.be./ et httpd://b2b.m1-4.ephec-ti.be./


