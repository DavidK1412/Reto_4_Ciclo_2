CREATE SCHEMA libreriaReto;
USE libreriaReto;


#PRIMER ARCHIVO
CREATE TABLE producto(
	prod_id INT PRIMARY KEY,
    prod_titulo CHAR(80)
);

INSERT INTO producto VALUES(1, "Eloquent JavaScript");
INSERT INTO producto VALUES(2, "Data Science: A Gentle Introduction");
INSERT INTO producto VALUES(3, "Reinforcement: Learning, second edition: An Introduction");
INSERT INTO producto VALUES(4, "Core Java Volume I - Fundamentals");
INSERT INTO producto VALUES(5, "Introduction to Machine Learning with Python");

#SEGUNDO ARCHIVO
CREATE TABLE autor(
	aut_id INT PRIMARY KEY,
	aut_nombre CHAR(20),
    aut_apellido CHAR(20),
    aut_nacionalidad CHAR(40)
);

INSERT INTO autor VALUES(101, "Richard", "Sutton", "canadiense");
INSERT INTO autor VALUES(102, "Marijn","Haverbeke", "aleman");
INSERT INTO autor VALUES(103, "James", "Scott", "estadounidense");
INSERT INTO autor VALUES(104, "Cay", "Horstmann", "aleman");
INSERT INTO autor VALUES(105, "Andreas", "Muller", "estadounidense");
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

#CUARTO ARCHIVO

CREATE TABLE revista(
	rev_id_fk INT,
    rev_ediciones INT,
    rev_articulos INT,
	FOREIGN KEY(rev_id_fk) REFERENCES producto(prod_id)
);

#QUINTO ARCHIVO
CREATE TABLE libro(
	lib_id_fk INT,
    lib_resenia CHAR(255),
    lib_anio INT,
    lib_autor_fk INT,
    FOREIGN KEY(lib_id_fk) REFERENCES producto(prod_id),
    FOREIGN KEY(lib_autor_fk) REFERENCES autor(aut_id)
);
INSERT INTO libro(lib_id_fk, lib_resenia, lib_anio, lib_autor_fk)VALUES(1, "Probably the biggest standout of Eloquent JavaScript: A Modern Introduction to Programming is its heavy usage of practice exercises. Unlike other books on programming and JS, this book is a work of pure art.", 2016, 105);
INSERT INTO libro(lib_id_fk, lib_resenia, lib_anio, lib_autor_fk)VALUES(2, "This book is structured as a series of walk-through lessons in R that will have you doing real data science in no time. It covers both the core ideas of data science as well as the concrete software skills.", 2020, 103);
INSERT INTO libro(lib_id_fk, lib_resenia, lib_anio, lib_autor_fk)VALUES(3, "The appetite for reinforcement learning among machine learning researchers has never been stronger, as now. If you want to fully understand the fundamentals of learning agents, this is the textbook to go to and get started with.", 2018, 101);
INSERT INTO libro(lib_id_fk, lib_resenia, lib_anio, lib_autor_fk)VALUES(4, "For serious programmers, Core Java, Volume I—Fundamentals, Eleventh Edition, is the definitive guide to writing robust, maintainable code. Whether you're using Java SE 9, 10, or 11.", 2018, 104);
INSERT INTO libro(lib_id_fk, lib_resenia, lib_anio, lib_autor_fk)VALUES(5, "For serious programmers, Core Java, Volume I—Fundamentals, Eleventh Edition, is the definitive guide to writing robust, maintainable code. Whether you're using Java SE 9, 10, or 11.", 2018, 104);

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
