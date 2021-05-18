# Commande utilisé

1. Créer un reseau pour docker (si pas deja fait):
`docker network create --driver bridge --subnet 172.168.0.0/24 --gateway 172.168.0.254 dmz`

1. Si vous n'ètes pas sure vous pouvez checker avec: 
`docker inspect network dmz`

1. Créer l'image : 
`docker build -t web .`

1. Tag l'image : 
`docker tag web loulou42/apache-adminproject`

1. Push l'image sur le hub: 
`docker push loulou42/apache-adminproject`

1. Run image : 
`docker run -it --rm -d -p 80:80 --network dmz --ip 172.168.0.4 --name web-extern loulou42`

## Lien vers le site web : http://www.m1-4.ephec-ti.be./ et http://b2b.m1-4.ephec-ti.be./

