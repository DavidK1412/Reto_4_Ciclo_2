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
