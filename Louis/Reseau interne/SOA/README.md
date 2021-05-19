
creer network : 
`docker network create --driver bridge --subnet 172.16.2.0/24 --gateway 172.16.2.254 reseau-intern`

creer image
`docker build -t soa .`

tag image


push image


run image :
`docker run --name soa -d --net reseau-intern --ip 172.16.2.1 --network-alias soa loulou42/soa-adminproject`

# Commande utilisé

1. Créer un reseau pour docker (si pas deja fait):
`docker network create --driver bridge --subnet 172.16.2.0/24 --gateway 172.16.2.254 reseau-intern`

1. Si vous n'ètes pas sure vous pouvez checker avec: 
`docker inspect network reseau-interne`

1. Commande pour construire l'image: 
`docker build -t soa .`

1. Tag l'image : 
`docker tag soa loulou42/soa-adminproject`

1. Push l'image sur le hub: 
`docker push loulou42/soa-adminproject`

1. Run l'image:
`docker run --name soa -d --net reseau-intern --ip 172.16.2.1 --network-alias soa loulou42/soa-adminproject`

### les commande utile 
```

```