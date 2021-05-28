FROM ubuntu:latest
RUN apt update && apt upgrade -y && apt install mysql-server -y

COPY mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf