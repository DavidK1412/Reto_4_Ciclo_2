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
