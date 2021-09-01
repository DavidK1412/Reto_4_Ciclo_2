UPDATE libro SET lib_anio=2012 WHERE lib_id_fk = 1;
UPDATE cliente SET cli_celular = 3115678432 WHERE cli_username LIKE "%iamwellandgood%";
DELETE venta.* FROM venta WHERE ven_user_fk LIKE "%loversland%" AND ven_prod_fk = 4;