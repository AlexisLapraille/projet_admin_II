# projet_admin_II

## Commandes docker utile :
* Créer une image : `docker build -t [image-name]`
* Créer un container : `docker run -tid -p [container-port]:[host-machine-port] --name [container-name] [image-name]`
* Créer un tag : `docker tag [image-name] AlexisLapraille/projet-admin-2:[tag-name]`

* Afficher les containers : `docker ps -a`
* Push un tag sur dockerhub : `docker push AlexisLapraille/projet-admin-2:[tag-name]`
* Executer des commande dans un container : `docker exec -it [container-name] bash`
* Chercher une image sur dockerhub : `docker pull AlexisLapraille/projet-admin-2:[tag-name]`

