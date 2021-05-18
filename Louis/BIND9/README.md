

tag l'image : 
`docker tag dns loulou42/ns-adminproject`

push l'image sur le hub: 
`docker push loulou42/ns-adminproject`

run l'image:
`docker run --name ns -d --publish 53:53/tcp --publish 53:53/udp --net dmz --ip 172.168.0.1 --network-alias ns loulou42/ns-adminproject`

`
docker network create --driver bridge --subnet 172.168.0.0/24 --gateway 172.168.0.254 dmz
docker inspect network dmz


`





# Commande utilisé

1. Créer un reseau pour docker (si pas deja fait):
`docker network create --driver bridge --subnet 172.168.0.0/24 --gateway 172.168.0.254 dmz`

1. Si vous n'ètes pas sure vous pouvez checker avec: 
`docker inspect network dmz`

1. Commande pour construire l'image du DNS: 
`docker build -t dns .`

1. Tag l'image : 
`docker tag dns loulou42/ns-adminproject`

1. Push l'image sur le hub: 
`docker push loulou42/ns-adminproject`

1. Run l'image:
`docker run --name ns -d --publish 53:53/tcp --publish 53:53/udp --net dmz --ip 172.168.0.1 --network-alias ns loulou42/ns-adminproject`

### les commande utile 
```
dig @135.125.101.243 ns.m1-4.ephec-ti.be
dig -t SOA m1-4.ephec-ti.be
dig -t NS m1-4.ephec-ti.be
dig -t MX m1-4.ephec-ti.be
```
