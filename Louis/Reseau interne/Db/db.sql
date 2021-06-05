
CREATE USER 'test'@'localhost' IDENTIFIED BY 'admin';
CREATE USER 'test'@'172.16.0.4' IDENTIFIED BY 'admin';
CREATE USER 'test'@'135.125.101.243' IDENTIFIED BY 'admin';

CREATE DATABASE test_db;

GRANT ALL PRIVILEGES ON test_db.* TO 'test'@'localhost';
GRANT ALL PRIVILEGES ON test_db.* TO 'test'@'172.16.0.1';
GRANT ALL PRIVILEGES ON test_db.* TO 'test'@'135.125.101.243';

USE test_db;

CREATE TABLE produit(
	id_produit INTEGER NOT NULL AUTO_INCREMENT,
	Name CHAR(50) NOT NULL,
	Price DECIMAL(8,2) NOT NULL,
	CONSTRAINT pk_produit PRIMARY KEY(id_produit)
);

INSERT INTO produit (Name,Price)
VALUES  ('examen',50.99),
('raquette',59.99);