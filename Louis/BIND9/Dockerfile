# La version d'ubuntu tirée du site, bionic = 18.04
FROM ubuntu:bionic

# Update de bind au cas ou, eviter des failles sécurité
RUN apt-get update && apt-get upgrade -y

# Installation de bind9 et des outils dns
RUN apt-get install -y bind9
RUN apt-get install -y dnsutils
RUN apt-get install -y bind9utils
RUN apt-get install -y bind9-doc

# Copie de nos fichiers de configuration
COPY named.conf /etc/bind/
COPY named.conf.options /etc/bind/
COPY named.conf.local /etc/bind/
COPY named.conf.log /etc/bind/
COPY db.m1-4.ephec-ti.be /etc/bind/zones/

# Ouverture du port 53 en UDP/TCP
EXPOSE 53/udp
EXPOSE 53/tcp

# Lancement du service dns 
CMD named -g



#src https://medium.com/nagoya-foundation/running-a-dns-server-in-docker-61cc2003e899


#Commandes pour monter le dockerfile
# docker build -t dns .
# docker tag dns AlexisLapraille/projet-admin-2:dns
# docker run -tdp 53:53 -v "$(pwd)/config:/etc/bind" <image>
