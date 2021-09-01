SELECT "Consulta 1";
SELECT producto.prod_titulo AS titulo FROM producto JOIN libro ON libro.lib_id_fk = producto.prod_id ORDER BY titulo ASC;
SELECT "Consulta 2";
SELECT producto.prod_titulo AS "titulo", libro.lib_resenia AS "reseña", libro.lib_anio AS "año" FROM producto JOIN libro ON libro.lib_id_fk = producto.prod_id WHERE libro.lib_anio > 1999 ORDER BY titulo ASC;
SELECT "Consulta 3";
SELECT producto.prod_titulo AS titulo FROM libro JOIN producto ON libro.lib_id_fk = producto.prod_id JOIN autor ON autor.aut_id = lib_autor_fk WHERE lib_autor_fk = 105; 
SELECT "Consulta 4";
SELECT producto.prod_titulo AS titulo FROM producto JOIN venta ON venta.ven_prod_fk = producto.prod_id WHERE venta.ven_user_fk LIKE "%deadofwrite%" ORDER BY titulo ASC; 
SELECT "Consulta 5";
SELECT cliente.cli_username AS username, cliente.cli_nombre AS nombre, cliente.cli_apellido AS appelido FROM cliente JOIN venta ON venta.ven_user_fk = cliente.cli_username WHERE venta.ven_prod_fk = 2 ORDER BY username ASC; 
SELECT "Consulta 6";
SELECT COUNT(libro.lib_anio) FROM libro WHERE libro.lib_anio > 2017