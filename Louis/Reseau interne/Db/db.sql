CREATE USER 'woody_admin'@'localhost' IDENTIFIED BY 'admin';
CREATE USER 'woody_admin'@'172.16.0.1' IDENTIFIED BY 'admin';
CREATE USER 'woody_admin'@'135.125.101.219' IDENTIFIED BY 'admin';

CREATE DATABASE woodytoys_db;

GRANT ALL PRIVILEGES ON woodytoys_db.* TO 'woody_admin'@'localhost';
GRANT ALL PRIVILEGES ON woodytoys_db.* TO 'woody_admin'@'172.16.0.1';
GRANT ALL PRIVILEGES ON woodytoys_db.* TO 'woody_admin'@'135.125.101.243';

USE woodytoys_db;

CREATE TABLE toys(
	id_toys INTEGER NOT NULL AUTO_INCREMENT,
	toyName CHAR(50) NOT NULL,
	toyPrice DECIMAL(8,2) NOT NULL,
	CONSTRAINT pk_toys PRIMARY KEY(id_toys)
);

INSERT INTO toys (toyName,toyPrice)
VALUES  ('Doudou',32.19),
('Ukulele',59.99);