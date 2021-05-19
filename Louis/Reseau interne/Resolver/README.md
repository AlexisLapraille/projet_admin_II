
# Commande utilisé

1. Créer un reseau pour docker (si pas deja fait):
`docker network create --driver bridge --subnet 172.16.2.0/24 --gateway 172.16.2.254 reseau-intern`

1. Si vous n'ètes pas sure vous pouvez checker avec: 
`docker inspect network reseau-interne`

1. Commande pour construire l'image: 
`docker build -t resolver .`

1. Tag l'image : 
`docker tag resolver loulou42/resolver-adminproject`

1. Push l'image sur le hub: 
`docker push loulou42/resolver-adminproject`

1. Run l'image:
`docker run -it --rm -d --network reseau-intern --ip 172.16.2.2 --name resolv loulou42/resolver-adminproject`

### les commande utile 
```

```