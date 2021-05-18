FROM ubuntu:latest
RUN apt update && apt upgrade -y && apt install mysql-server -y

COPY db.sql /docker-entrypoint-initdb.d/