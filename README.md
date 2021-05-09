# projet_admin_II

* Commandes docker utile
<<<<<<< HEAD
* Créer une image : `docker build -t [image-name]`
* Créer un container : `docker run -tid -p [container-port]:[host-machine-port] --name [container-name] [image-name]`
* Executer des commande dans un container : `docker exec -it [container-name] bash`
* Créer un tag : `docker tag [image-name] blackbuu13/projet-admin-2:[tag-name]`
* Push un tag sur dockerhub : `docker push blackbuu13/projet-admin-2:[tag-name]`
* Chercher une image sur dockerhub : `docker pull blackbuu13/projet-admin-2:[tag-name]`
* Afficher les containers : `docker ps -a`
=======
* Créer une image : docker build -t [image-name] .
* Créer un container : docker run -tid -p [container-port]:[host-machine-port] --name [container-name] [image-name]
* Executer des commande dans un container : docker exec -it [container-name] bash
* Créer un tag : docker tag [image-name] blackbuu13/projet-admin-2:[tag-name]
* Push un tag sur dockerhub : docker push blackbuu13/projet-admin-2:[tag-name]
* Chercher une image sur dockerhub : docker pull blackbuu13/projet-admin-2:[tag-name]
* Afficher les containers : docker ps -a
>>>>>>> 02e75cc47ba4945212569a419e413b734f9d401c
