CREATE TABLE cliente(
	cli_username CHAR(20) PRIMARY KEY,
    cli_nombre CHAR(20),
    cli_apellido CHAR(20),
    cli_email CHAR(30),
    cli_celular BIGINT,
    cli_clave CHAR(20),
    cli_fecha_nto DATE
);
INSERT INTO cliente(cli_username, cli_nombre, cli_apellido, cli_email, cli_celular, cli_clave, cli_fecha_nto) VALUES("deadofwrite", "Luis", "Lopez", "luis@gmail.com", 3134890132, "12345", "2000-07-07");
INSERT INTO cliente(cli_username, cli_nombre, cli_apellido, cli_email, cli_celular, cli_clave, cli_fecha_nto) VALUES("dreamer", "Pedro", "Andres", "pedrito@hotmail.com", 3218000923,"12345", "1998-08-08");
INSERT INTO cliente(cli_username, cli_nombre, cli_apellido, cli_email, cli_celular, cli_clave, cli_fecha_nto) VALUES("iamwellandgood", "Luis", "Cruz", "luisito@hotmail.com", 3225318966, "12345","2005-09-09");
INSERT INTO cliente(cli_username, cli_nombre, cli_apellido, cli_email, cli_celular, cli_clave, cli_fecha_nto) VALUES("inkandfable", "Jorge", "Diaz", "jorge@gmail.com", 3217000521, "12345","1987-10-10");
INSERT INTO cliente(cli_username, cli_nombre, cli_apellido, cli_email, cli_celular, cli_clave, cli_fecha_nto) VALUES("loversland", "Maria", "Perez", "marii@hotmail.com", 3108079797, "12345","1995-05-09");
INSERT INTO cliente(cli_username, cli_nombre, cli_apellido, cli_email, cli_celular, cli_clave, cli_fecha_nto) VALUES("neon", "Claudia", "Mendez", "Clau@gmail.com", 3102014714, "12345","1990-05-09");
INSERT INTO cliente(cli_username, cli_nombre, cli_apellido, cli_email, cli_celular, cli_clave, cli_fecha_nto) VALUES("rose", "Nelly", "Rodriguez", "nell@gmail.com", 3108072353, "12345","1995-03-03");
INSERT INTO cliente(cli_username, cli_nombre, cli_apellido, cli_email, cli_celular, cli_clave, cli_fecha_nto) VALUES("true.living", "Ana", "Rojas", "anita@gmail.com", 3149000213, "12345","2004-03-03");
