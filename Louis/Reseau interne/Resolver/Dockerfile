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
COPY named.conf /etc/bind/named.conf
COPY named.conf.options /etc/bind/named.conf.options
COPY named.conf.local /etc/bind/named.conf.local
COPY named.conf.log /etc/bind/named.conf.log

RUN touch /var/log/querylog

# Lancement du service dns 
CMD named -c /etc/bind/named.conf -g



#src https://medium.com/nagoya-foundation/running-a-dns-server-in-docker-61cc2003e899


#Commandes pour monter le dockerfile
# docker build -t dns .
# docker tag dns AlexisLapraille/projet-admin-2:dns
# docker run -tdp 53:53 -v "$(pwd)/config:/etc/bind" <image>
