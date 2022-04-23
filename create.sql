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
INSERT INTO Country(name) VALUES( 'Italy' );INSERT INTO Country (id, name);

INSERT INTO Country(name) VALUES( 'Netherland' );
INSERT INTO Country(name) VALUES( 'Spain' );
INSERT INTO Country(name) VALUES( 'Portugal' );
INSERT INTO Country(name) VALUES( 'Czech' );
INSERT INTO Country (name) VALUES ('OAE');
INSERT INTO Country (name) VALUES ('Denmark');

INSERT INTO Region (name, id_country)
VALUES ( 'Copenhagen', 17 );

INSERT INTO City (name, id_region)
VALUES ( 'Cobenhavn' , 1 );

INSERT INTO Address (street, id_city)
VALUES ( 'Skoubogade 3', 1 );

INSERT INTO Producer (name, id_address)
VALUES ( 'Conditori La Glace', 1 );

INSERT INTO Region (name, id_country)
VALUES ( 'Great London', 3 );

INSERT INTO City ( name, id_region)
VALUES ( 'London', 2 );

INSERT INTO Address (street, id_city)
VALUES ( 'Dean St. 60', 2 );

INSERT INTO Producer (name, id_address)
VALUES ( 'MAITRE CHOUX', 2 );

INSERT INTO Region (name, id_country)
VALUES ( 'Noord Holland', 12 );

INSERT INTO City (name, id_region)
VALUES ( 'Amsterdam', 3 );

INSERT INTO Address (street, id_city)
VALUES ( 'Heisteeg 4', 3 ); 

INSERT INTO Producer (name, id_address)
VALUES ( 'VAN STAPELE', 3 );

INSERT INTO Region (name, id_country)
VALUES ( 'Central Moravia', 15 );

INSERT INTO City (name, id_region)
VALUES ( 'Prague', 4 );

INSERT INTO Address (street, id_city)
VALUES ( 'Karlova 8', 4 );

INSERT INTO Producer (name, id_address)
VALUES ( 'GOOD FOOD CAFE AND BAKERY', 4 );

INSERT INTO Address (street, id_city)
VALUES ( 'Ryesgade 118', 1 );

INSERT INTO Producer (name, id_address)
VALUES ( 'LECKERBAER', 5 );

INSERT INTO Region (name, id_country)
VALUES ( 'Georgia', 2 );

INSERT INTO City (name, id_region)
VALUES ( 'Atlanta', 5 );

INSERT INTO Address (street, id_city)
VALUES ( '88 W Paces Ferry Rd NW', 5 );

INSERT INTO Producer (name, id_address)
VALUES ( 'The Coca-Cola Company', 6 );

INSERT INTO Country ( name )
VALUES ('switzerland');

INSERT INTO Region (name, id_country)
VALUES ( 'Vaud', 18 );

INSERT INTO City (name, id_region)
VALUES ( 'Vevey', 6 );

INSERT INTO Address (street, id_city)
VALUES ( 'Av. Nestle 55', 6 );

INSERT INTO Producer (name, id_address)
VALUES ( 'Nestle', 7 );

INSERT INTO Producer (name, id_address)
VALUES ( 'Cargill', 8 );

INSERT INTO Address (street, id_city)
VALUES ( 'St. Mechnikova 3', 7 );

INSERT INTO City (name, id_region)
VALUES ( 'Kyiv', 7 );

INSERT INTO Region (name, id_country)
VALUES ( 'Kyiv District', 1 );