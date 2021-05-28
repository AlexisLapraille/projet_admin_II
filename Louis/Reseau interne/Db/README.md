
# Commande utile

1. Créer et lancer iamge docker
`docker build -t db .`

1. Run l'image
`docker run -it --rm -d -p 3306:3306 --network test-reseau --ip 172.16.128.10 --name db loulou42\db-adminproject`





docker network connect --ip 172.16.129.10 zone_dmz bdd
docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' bdd

<-- configuration de mysql -->
docker exec -it web-intern service mysql restart


<-- rendre mysql server accessible -->
dossier /etc/mysql/mysql.conf.d/mysqld.cnf
bind adress : 0.0.0.0


===========================================
COMMANDES
===========================================
mysql_secure_installation
mettre oui
niveau du mot de passe : 1
Password : P@sswordMysql123
mettre oui au reste 


ensuite commande mysql

COnfiguration : 
CREATE DATABASE example_database;
CREATE USER 'b2b'@'172.16.129.4' IDENTIFIED WITH mysql_native_password BY 'P@sswordMysql123';
GRANT ALL ON example_database.* TO 'test'@'172.16.128.4';

CREATE TABLE example_database.todo_list (
    item_id INT AUTO_INCREMENT,
    content VARCHAR(255),
    PRIMARY KEY(item_id)
);

INSERT INTO example_database.todo_list (content) VALUES ("My first important item");


============================================



https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-mysql-php-lemp-stack-on-ubuntu-20-04-fr

connecter mysql à distance : https://notes-de-cours.com/web/blogue/62/se-connecter-a-un-serveur-externe-mysql