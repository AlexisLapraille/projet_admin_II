
# Commande utile

1. Créer et lancer iamge docker
`docker build -t db .`

1. Run l'image
`docker run -it --rm -d -p 3306:3306 --network reseau-intern --ip 172.16.2.4 --name db loulou42/db-adminproject`


password :  Tintin-2021-


