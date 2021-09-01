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