CREATE SCHEMA libreriaReto;
USE libreriaReto;


#PRIMER ARCHIVO
CREATE TABLE producto(
	prod_id INT PRIMARY KEY,
    prod_titulo CHAR(80)
);

INSERT INTO producto(prod_id, prod_titulo) VALUES(1, "Eloquent JavaScript");
INSERT INTO producto(prod_id, prod_titulo) VALUES(2, "Data Science: A Gentle Introduction");
INSERT INTO producto(prod_id, prod_titulo) VALUES(3, "Reinforcement: Learning, second edition: An Introduction");
INSERT INTO producto(prod_id, prod_titulo) VALUES(4, "Core Java Volume I - Fundamentals");
INSERT INTO producto(prod_id, prod_titulo) VALUES(5, "Introduction to Machine Learning with Python");
INSERT INTO producto(prod_id, prod_titulo) VALUES(6, "Communications of the ACM");
INSERT INTO producto(prod_id, prod_titulo) VALUES(7, "Nature");
INSERT INTO producto(prod_id, prod_titulo) VALUES(8, "Science Magazine");
INSERT INTO producto(prod_id, prod_titulo) VALUES(9, "Cosmos");
INSERT INTO producto(prod_id, prod_titulo) VALUES(10, "Scientific Data");
INSERT INTO producto(prod_id, prod_titulo) VALUES(11, "Bioinformatics");
INSERT INTO producto(prod_id, prod_titulo) VALUES(12, "IEEE Transactions on Information Theory");
INSERT INTO producto(prod_id, prod_titulo) VALUES(13, "PLOS Computational Biology");


#SEGUNDO ARCHIVO
CREATE TABLE autor(
	aut_id INT PRIMARY KEY,
	aut_nombre CHAR(20),
    aut_apellido CHAR(20),
    aut_nacionalidad CHAR(40)
);

INSERT INTO autor(aut_id, aut_nombre, aut_apellido, aut_nacionalidad) VALUES(101, "Richard", "Sutton", "canadiense");
INSERT INTO autor(aut_id, aut_nombre, aut_apellido, aut_nacionalidad) VALUES(102, "Marijn","Haverbeke", "aleman");
INSERT INTO autor(aut_id, aut_nombre, aut_apellido, aut_nacionalidad) VALUES(103, "James", "Scott", "estadounidense");
INSERT INTO autor(aut_id, aut_nombre, aut_apellido, aut_nacionalidad) VALUES(104, "Cay", "Horstmann", "aleman");
INSERT INTO autor(aut_id, aut_nombre, aut_apellido, aut_nacionalidad) VALUES(105, "Andreas", "Muller", "estadounidense");
#TERCER ARCHIVO

CREATE TABLE cliente(
	cli_username CHAR(20) PRIMARY KEY,
    cli_nombre CHAR(20),
    cli_apellido CHAR(20),
    cli_email CHAR(30),
    cli_celular BIGINT,
    cli_clave CHAR(20),
    cli_fecha_nto DATE
);
INSERT INTO cliente(cli_username, cli_nombre, cli_apellido, cli_email, cli_celular, cli_clave, cli_fecha_nto) VALUES();
INSERT INTO cliente(cli_username, cli_nombre, cli_apellido, cli_email, cli_celular, cli_clave, cli_fecha_nto) VALUES();
INSERT INTO cliente(cli_username, cli_nombre, cli_apellido, cli_email, cli_celular, cli_clave, cli_fecha_nto) VALUES();
INSERT INTO cliente(cli_username, cli_nombre, cli_apellido, cli_email, cli_celular, cli_clave, cli_fecha_nto) VALUES();
INSERT INTO cliente(cli_username, cli_nombre, cli_apellido, cli_email, cli_celular, cli_clave, cli_fecha_nto) VALUES();
INSERT INTO cliente(cli_username, cli_nombre, cli_apellido, cli_email, cli_celular, cli_clave, cli_fecha_nto) VALUES();
INSERT INTO cliente(cli_username, cli_nombre, cli_apellido, cli_email, cli_celular, cli_clave, cli_fecha_nto) VALUES();
INSERT INTO cliente(cli_username, cli_nombre, cli_apellido, cli_email, cli_celular, cli_clave, cli_fecha_nto) VALUES();

#CUARTO ARCHIVO
CREATE TABLE revista(
	rev_id_fk INT,
    rev_ediciones INT,
    rev_articulos INT,
	FOREIGN KEY(rev_id_fk) REFERENCES producto(prod_id)
);
INSERT INTO revista(rev_id_fk, rev_ediciones, rev_articulos) VALUES(1, 11, 153);
INSERT INTO revista(rev_id_fk, rev_ediciones, rev_articulos) VALUES(2, 3, 80);
INSERT INTO revista(rev_id_fk, rev_ediciones, rev_articulos) VALUES(3, 3, 30);
INSERT INTO revista(rev_id_fk, rev_ediciones, rev_articulos) VALUES(4, 4, 31);
INSERT INTO revista(rev_id_fk, rev_ediciones, rev_articulos) VALUES(5, 10, 236);
INSERT INTO revista(rev_id_fk, rev_ediciones, rev_articulos) VALUES(6, 8, 170);
INSERT INTO revista(rev_id_fk, rev_ediciones, rev_articulos) VALUES(7, 12, 279);
INSERT INTO revista(rev_id_fk, rev_ediciones, rev_articulos) VALUES(8, 6, 79);

#QUINTO ARCHIVO
CREATE TABLE libro(
	lib_id_fk INT,
    lib_resenia CHAR(255),
    lib_anio INT,
    lib_autor_fk INT,
    FOREIGN KEY(lib_id_fk) REFERENCES producto(prod_id),
    FOREIGN KEY(lib_autor_fk) REFERENCES autor(aut_id)
);
INSERT INTO libro(lib_id_fk, lib_resenia, lib_anio, lib_autor_fk)VALUES(1, "Probably the biggest standout of Eloquent JavaScript: A Modern Introduction to Programming is its heavy usage of practice exercises. Unlike other books on programming and JS, this book is a work of pure art.", 2016, 102);
INSERT INTO libro(lib_id_fk, lib_resenia, lib_anio, lib_autor_fk)VALUES(2, "This book is structured as a series of walk-through lessons in R that will have you doing real data science in no time. It covers both the core ideas of data science as well as the concrete software skills.", 2020, 103);
INSERT INTO libro(lib_id_fk, lib_resenia, lib_anio, lib_autor_fk)VALUES(3, "The appetite for reinforcement learning among machine learning researchers has never been stronger, as now. If you want to fully understand the fundamentals of learning agents, this is the textbook to go to and get started with.", 2018, 101);
INSERT INTO libro(lib_id_fk, lib_resenia, lib_anio, lib_autor_fk)VALUES(4, "For serious programmers, Core Java, Volume I—Fundamentals, Eleventh Edition, is the definitive guide to writing robust, maintainable code. Whether you're using Java SE 9, 10, or 11.", 2018, 104);
INSERT INTO libro(lib_id_fk, lib_resenia, lib_anio, lib_autor_fk)VALUES(5, "Machine learning has become an integral part of many commercial applications and research projects, but this field is not exclusive to large companies with extensive research teams.", 2016, 105);

#SEXTO ARCHIVO
CREATE TABLE venta(
	ven_id INT,
    ven_user_fk CHAR(40),
    ven_prod_fk INT,
    ven_fecha DATETIME,
	FOREIGN KEY(ven_user_fk) REFERENCES cliente(cli_username),
    FOREIGN KEY(ven_prod_fk) REFERENCES producto(prod_id)
);

#SEPTIMO ARCHIVO
