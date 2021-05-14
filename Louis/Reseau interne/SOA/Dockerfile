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
COPY named.conf.options /etc/bind/named.conf.options
COPY named.conf.local /etc/bind/named.conf.local


RUN mkdir /etc/bind/master


COPY ./master/woodytoys.intern /etc/bind/master/woodytoys.intern
COPY ./master/128.16.172.in-addr.arpa /etc/bind/master/128.16.172.in-addr.arpa
#COPY ./test.log /etc/bind/test.log

# Lancement du service dns 
CMD named -g

