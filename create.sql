CREATE DATABASE Product;
USE Product;

CREATE TABLE Category
(
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(50),
	CONSTRAINT PK PRIMARY KEY (id) 	
) default charset utf8;

CREATE TABLE Producer
(
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(50),
    id_address INT NOT NULL,
	CONSTRAINT PK PRIMARY KEY (id) 	
) default charset utf8;

CREATE TABLE Measurement
(
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(50),
    description VARCHAR(80),
	CONSTRAINT PK PRIMARY KEY (id) 	
) default charset utf8;

CREATE TABLE Marcup
(
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(50),
    percent DOUBLE,
	CONSTRAINT PK PRIMARY KEY (id) 	
) default charset utf8;

CREATE TABLE Address
(
	id INT NOT NULL AUTO_INCREMENT,
	street VARCHAR(50),
    id_city INT,
	CONSTRAINT PK PRIMARY KEY (id) 	
) default charset utf8;

CREATE TABLE City
(
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(50),
    id_region INT,
	CONSTRAINT PK PRIMARY KEY (id) 	
) default charset utf8;

CREATE TABLE Region
(
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(50),
    id_country INT,
	CONSTRAINT PK PRIMARY KEY (id) 	
) default charset utf8;

CREATE TABLE Country
(
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(50),
	CONSTRAINT PK PRIMARY KEY (id) 	
) default charset utf8;

CREATE TABLE Suplier
(
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(50),
    id_address INT,
	CONSTRAINT PK PRIMARY KEY (id) 	
) default charset utf8;

CREATE TABLE Delivery
(
	id INT NOT NULL AUTO_INCREMENT,
    id_product INT,
    id_supplier INT,
    price DOUBLE,
    quantity INT,
    date_of_delivery DATE,
	CONSTRAINT PK PRIMARY KEY (id) 	
) default charset utf8;

CREATE TABLE Sale
(
	id INT NOT NULL AUTO_INCREMENT,
    id_product INT,
    price DOUBLE,
    quantity INT,
    date_of_sale DATE,
	CONSTRAINT PK PRIMARY KEY (id) 	
) default charset utf8;

CREATE TABLE Product
(
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50),
    id_category INT,
    price DOUBLE,
    quantity INT,
    id_producer INT,
    id_measurement INT,
    id_marcup INT,
	CONSTRAINT PK PRIMARY KEY (id) 	
) default charset utf8;


INSERT INTO Category(name) VALUES( 'Bakery' );
INSERT INTO Category(name) VALUES( 'Beverage' );
INSERT INTO Category(name) VALUES( 'Nonfood & Pharmacy' );
INSERT INTO Category(name) VALUES( 'Produce & Floral' );
INSERT INTO Category(name) VALUES( 'Deli' );
INSERT INTO Category(name) VALUES( 'Prepared Foods' );
INSERT INTO Category(name) VALUES( 'Meat' );
INSERT INTO Category(name) VALUES( 'Seafood' );

INSERT INTO Country(name) VALUES( 'Ukraine' );
INSERT INTO Country(name) VALUES( 'USA' );
INSERT INTO Country(name) VALUES( 'UK' );
INSERT INTO Country(name) VALUES( 'Germany' );
INSERT INTO Country(name) VALUES( 'France' );
INSERT INTO Country(name) VALUES( 'China' );
INSERT INTO Country(name) VALUES( 'Sweaden' );
INSERT INTO Country(name) VALUES( 'Poland' );
INSERT INTO Country(name) VALUES( 'Japan' );
INSERT INTO Country(name) VALUES( 'Turkey' );
INSERT INTO Country(name) VALUES( 'Italy' );
INSERT INTO Country(name) VALUES( 'Netherland' );
INSERT INTO Country(name) VALUES( 'Spain' );
INSERT INTO Country(name) VALUES( 'Portugal' );
INSERT INTO Country(name) VALUES( 'Czech' );
