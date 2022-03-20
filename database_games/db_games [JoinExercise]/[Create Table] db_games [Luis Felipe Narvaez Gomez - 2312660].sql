-- Datos
-- Nombre: Luis Felipe Narvaez Gomez
-- Cod: 2312660
-- Facultad: Ingenieria de Sistemas
-- Universidad: Santo Tomas seccional Tunja
-- Materia: Bases de Datos
-- Semestre: 2021-2

-- ........................................ Ejercicios con sentencias JOIN ........................................

-- ACCEEDER A MARIA DB POR CMD

D:\>cd D:\Software\Xampp MySQL\mysql\bin

D:\Software\Xampp MySQL\mysql\bin>mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 26
Server version: 10.4.21-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]>

-- Crear base de datos

CREATE DATABASE db_games;

MariaDB [(none)]> CREATE DATABASE db_games;
Query OK, 1 row affected (0.001 sec)

MariaDB [(none)]>

-- Cambiar a la base de datos de nuestro interes

USE db_games;

MariaDB [(none)]> USE db_games;
Database changed
MariaDB [db_games]>

-- CREAR TABLAS

CREATE TABLE juegos ( 
Id_juego tinyint(1) NOT NULL, 
juegoname varchar(30) DEFAULT NULL, 
PRIMARY KEY (Id_juego) 
) ENGINE=InnoDB; 

MariaDB [db_games]> CREATE TABLE juegos (
    -> Id_juego tinyint(1) NOT NULL,
    -> juegoname varchar(30) DEFAULT NULL,
    -> PRIMARY KEY (Id_juego)
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.410 sec)

MariaDB [db_games]>


--------- 

CREATE TABLE usuarios (
Id_usuario tinyint(1) NOT NULL,
username varchar(20) DEFAULT NULL, 
PRIMARY KEY (Id_usuario) 
) ENGINE=InnoDB;


MariaDB [db_games]> CREATE TABLE usuarios (
    -> Id_usuario tinyint(1) NOT NULL,
    -> username varchar(20) DEFAULT NULL,
    -> PRIMARY KEY (Id_usuario)
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.397 sec)

MariaDB [db_games]>

---------

CREATE TABLE juegousuario (
Id_usuario tinyint(1) NOT NULL,
Id_juego tinyint(1) NOT NULL,
UNIQUE KEY id_user_juego (Id_usuario,Id_juego) 
) ENGINE=InnoDB; 

MariaDB [db_games]> CREATE TABLE juegousuario (
    -> Id_usuario tinyint(1) NOT NULL,
    -> Id_juego tinyint(1) NOT NULL,
    -> UNIQUE KEY id_user_juego (Id_usuario,Id_juego)
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.346 sec)

MariaDB [db_games]>

-- VER LAS TABLAS CREADAS

MariaDB [db_games]> SHOW FULL TABLES FROM db_games;
+--------------------+------------+
| Tables_in_db_games | Table_type |
+--------------------+------------+
| juegos             | BASE TABLE |
| juegousuario       | BASE TABLE |
| usuarios           | BASE TABLE |
+--------------------+------------+
3 rows in set (0.001 sec)

MariaDB [db_games]>

-- POBLAR / Insertar datos en las tablas

INSERT INTO juegos VALUES (1, 'Final Fantasy VII'); 
INSERT INTO juegos VALUES (2, 'Zelda: A link to the past'); 
INSERT INTO juegos VALUES (3, 'Crazy Taxy'); 
INSERT INTO juegos VALUES (4, 'Donkey Kong Country'); 
INSERT INTO juegos VALUES (5, 'Fallout 4'); 
INSERT INTO juegos VALUES (6, 'Saints Row III'); 
INSERT INTO juegos VALUES (7, 'La taba');

MariaDB [db_games]> INSERT INTO juegos VALUES (1, 'Final Fantasy VII');
Query OK, 1 row affected (0.127 sec)
MariaDB [db_games]> INSERT INTO juegos VALUES (2, 'Zelda: A link to the past');
Query OK, 1 row affected (0.051 sec)
MariaDB [db_games]> INSERT INTO juegos VALUES (3, 'Crazy Taxy');
Query OK, 1 row affected (0.054 sec)
MariaDB [db_games]> INSERT INTO juegos VALUES (4, 'Donkey Kong Country');
Query OK, 1 row affected (0.230 sec)
MariaDB [db_games]> INSERT INTO juegos VALUES (5, 'Fallout 4');
Query OK, 1 row affected (0.038 sec)
MariaDB [db_games]> INSERT INTO juegos VALUES (6, 'Saints Row III');
Query OK, 1 row affected (0.026 sec)
MariaDB [db_games]> INSERT INTO juegos VALUES (7, 'La taba');
Query OK, 1 row affected (0.122 sec)
MariaDB [db_games]>

MariaDB [db_games]> DESCRIBE juegos;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| Id_juego  | tinyint(1)  | NO   | PRI | NULL    |       |
| juegoname | varchar(30) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.008 sec)

MariaDB [db_games]>

MariaDB [db_games]> SELECT * FROM juegos;
+----------+---------------------------+
| Id_juego | juegoname                 |
+----------+---------------------------+
|        1 | Final Fantasy VII         |
|        2 | Zelda: A link to the past |
|        3 | Crazy Taxy                |
|        4 | Donkey Kong Country       |
|        5 | Fallout 4                 |
|        6 | Saints Row III            |
|        7 | La taba                   |
+----------+---------------------------+
7 rows in set (0.000 sec)

MariaDB [db_games]>

--------------------------------------------------------------------

INSERT INTO usuarios VALUES (1, 'vichaunter');
INSERT INTO usuarios VALUES (2, 'pepito');
INSERT INTO usuarios VALUES (3, 'jaimito');
INSERT INTO usuarios VALUES (4, 'ataulfo');

MariaDB [db_games]> INSERT INTO usuarios VALUES (1, 'vichaunter');
Query OK, 1 row affected (0.133 sec)
MariaDB [db_games]> INSERT INTO usuarios VALUES (2, 'pepito');
Query OK, 1 row affected (0.026 sec)
MariaDB [db_games]> INSERT INTO usuarios VALUES (3, 'jaimito');
Query OK, 1 row affected (0.054 sec)
MariaDB [db_games]> INSERT INTO usuarios VALUES (4, 'ataulfo');
Query OK, 1 row affected (0.038 sec)
MariaDB [db_games]>

MariaDB [db_games]> DESCRIBE usuarios;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| Id_usuario | tinyint(1)  | NO   | PRI | NULL    |       |
| username   | varchar(20) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.059 sec)
MariaDB [db_games]>

MariaDB [db_games]> SELECT * FROM usuarios;
+------------+------------+
| Id_usuario | username   |
+------------+------------+
|          1 | vichaunter |
|          2 | pepito     |
|          3 | jaimito    |
|          4 | ataulfo    |
+------------+------------+
4 rows in set (0.000 sec)
MariaDB [db_games]>

--------------------------------------------------------------------

INSERT INTO juegousuario VALUES (1, '1'); 
INSERT INTO juegousuario VALUES (1, '2'); 
INSERT INTO juegousuario VALUES (1, '3'); 
INSERT INTO juegousuario VALUES (1, '4'); 
INSERT INTO juegousuario VALUES (1, '6'); 
INSERT INTO juegousuario VALUES (1, '7'); 
INSERT INTO juegousuario VALUES (2, '3'); 
INSERT INTO juegousuario VALUES (2, '7'); 
INSERT INTO juegousuario VALUES (4, '1'); 
INSERT INTO juegousuario VALUES (4, '2'); 
INSERT INTO juegousuario VALUES (4, '4'); 
INSERT INTO juegousuario VALUES (4, '7');

MariaDB [db_games]> INSERT INTO juegousuario VALUES (1, '1');
Query OK, 1 row affected (0.129 sec)
MariaDB [db_games]> INSERT INTO juegousuario VALUES (1, '2');
Query OK, 1 row affected (0.027 sec)
MariaDB [db_games]> INSERT INTO juegousuario VALUES (1, '3');
Query OK, 1 row affected (0.065 sec)
MariaDB [db_games]> INSERT INTO juegousuario VALUES (1, '4');
Query OK, 1 row affected (0.229 sec)
MariaDB [db_games]> INSERT INTO juegousuario VALUES (1, '6');
Query OK, 1 row affected (0.024 sec)
MariaDB [db_games]> INSERT INTO juegousuario VALUES (1, '7');
Query OK, 1 row affected (0.036 sec)
MariaDB [db_games]> INSERT INTO juegousuario VALUES (2, '3');
Query OK, 1 row affected (0.024 sec)
MariaDB [db_games]> INSERT INTO juegousuario VALUES (2, '7');
Query OK, 1 row affected (0.034 sec)
MariaDB [db_games]> INSERT INTO juegousuario VALUES (4, '1');
Query OK, 1 row affected (0.023 sec)
MariaDB [db_games]> INSERT INTO juegousuario VALUES (4, '2');
Query OK, 1 row affected (0.067 sec)
MariaDB [db_games]> INSERT INTO juegousuario VALUES (4, '4');
Query OK, 1 row affected (0.057 sec)
MariaDB [db_games]> INSERT INTO juegousuario VALUES (4, '7');
Query OK, 1 row affected (0.031 sec)
MariaDB [db_games]>

MariaDB [db_games]> DESCRIBE juegousuario;
+------------+------------+------+-----+---------+-------+
| Field      | Type       | Null | Key | Default | Extra |
+------------+------------+------+-----+---------+-------+
| Id_usuario | tinyint(1) | NO   | PRI | NULL    |       |
| Id_juego   | tinyint(1) | NO   | PRI | NULL    |       |
+------------+------------+------+-----+---------+-------+
2 rows in set (0.009 sec)
MariaDB [db_games]>

MariaDB [db_games]> SELECT * FROM juegousuario;
+------------+----------+
| Id_usuario | Id_juego |
+------------+----------+
|          1 |        1 |
|          1 |        2 |
|          1 |        3 |
|          1 |        4 |
|          1 |        6 |
|          1 |        7 |
|          2 |        3 |
|          2 |        7 |
|          4 |        1 |
|          4 |        2 |
|          4 |        4 |
|          4 |        7 |
+------------+----------+
12 rows in set (0.000 sec)
MariaDB [db_games]>

#INSERT INTO juegousuario VALUES (1, '5');

-- AGREGAR LLAVES FORANEAS

ALTER TABLE juegousuario
ADD CONSTRAINT ju_juegos_FK 
FOREIGN KEY (Id_juego)
REFERENCES juegos(Id_juego)
ON UPDATE CASCADE
ON DELETE RESTRICT;

MariaDB [db_games]> ALTER TABLE juegousuario
    -> ADD CONSTRAINT ju_juegos_FK
    -> FOREIGN KEY (Id_juego)
    -> REFERENCES juegos(Id_juego)
    -> ON UPDATE CASCADE
    -> ON DELETE RESTRICT;
Query OK, 12 rows affected (1.006 sec)
Records: 12  Duplicates: 0  Warnings: 0

MariaDB [db_games]> DESCRIBE juegousuario;
+------------+------------+------+-----+---------+-------+
| Field      | Type       | Null | Key | Default | Extra |
+------------+------------+------+-----+---------+-------+
| Id_usuario | tinyint(1) | NO   | PRI | NULL    |       |
| Id_juego   | tinyint(1) | NO   | PRI | NULL    |       |
+------------+------------+------+-----+---------+-------+
2 rows in set (0.012 sec)

MariaDB [db_games]>

-------------------------------------------------------------------------

ALTER TABLE juegousuario
ADD CONSTRAINT ju_usuarios_FK 
FOREIGN KEY (Id_usuario)
REFERENCES usuarios(Id_usuario)
ON UPDATE CASCADE
ON DELETE RESTRICT;

MariaDB [db_games]> ALTER TABLE juegousuario
    -> ADD CONSTRAINT ju_usuarios_FK
    -> FOREIGN KEY (Id_usuario)
    -> REFERENCES usuarios(Id_usuario)
    -> ON UPDATE CASCADE
    -> ON DELETE RESTRICT;
Query OK, 12 rows affected (0.830 sec)
Records: 12  Duplicates: 0  Warnings: 0

MariaDB [db_games]> DESCRIBE juegousuario;
+------------+------------+------+-----+---------+-------+
| Field      | Type       | Null | Key | Default | Extra |
+------------+------------+------+-----+---------+-------+
| Id_usuario | tinyint(1) | NO   | PRI | NULL    |       |
| Id_juego   | tinyint(1) | NO   | PRI | NULL    |       |
+------------+------------+------+-----+---------+-------+
2 rows in set (0.035 sec)
MariaDB [db_games]>


-- INNER JOIN

"""
Inner Join. Devuelve sólo aquellas filas donde haya un “match”, es decir, 
las filas donde el valor del campo de la tabla A que se utiliza para hacer el 
Join coincida con el valor del campo correspondiente en la tabla B.
"""

SELECT usr.username, j.juegoname 
FROM usuarios AS usr
INNER JOIN juegousuario AS jusr
ON usr.Id_usuario = jusr.Id_usuario 
INNER JOIN juegos AS j
ON jusr.Id_juego = j.Id_juego;


MariaDB [db_games]> SELECT usr.username, j.juegoname
    -> FROM usuarios AS usr
    -> INNER JOIN juegousuario AS jusr
    -> ON usr.Id_usuario = jusr.Id_usuario
    -> INNER JOIN juegos AS j
    -> ON jusr.Id_juego = j.Id_juego;
+------------+---------------------------+
| username   | juegoname                 |
+------------+---------------------------+
| vichaunter | Final Fantasy VII         |
| vichaunter | Zelda: A link to the past |
| vichaunter | Crazy Taxy                |
| vichaunter | Donkey Kong Country       |
| vichaunter | Saints Row III            |
| vichaunter | La taba                   |
| pepito     | Crazy Taxy                |
| pepito     | La taba                   |
| ataulfo    | Final Fantasy VII         |
| ataulfo    | Zelda: A link to the past |
| ataulfo    | Donkey Kong Country       |
| ataulfo    | La taba                   |
+------------+---------------------------+
12 rows in set (0.001 sec)

MariaDB [db_games]>

-- LEFT OUTER JOIN

"""
Left outer Join. Cuando quieres todas las filas para las que haya match pero 
también aquellas de la Tabla A que no hagan match. 
"""

SELECT usr.username, j.juegoname 
FROM usuarios AS usr
LEFT JOIN juegousuario AS jusr
ON usr.Id_usuario = jusr.Id_usuario 
LEFT JOIN juegos AS j
ON jusr.Id_juego = j.Id_juego;

MariaDB [db_games]> SELECT usr.username, j.juegoname
    -> FROM usuarios AS usr
    -> LEFT JOIN juegousuario AS jusr
    -> ON usr.Id_usuario = jusr.Id_usuario
    -> LEFT JOIN juegos AS j
    -> ON jusr.Id_juego = j.Id_juego;
+------------+---------------------------+
| username   | juegoname                 |
+------------+---------------------------+
| vichaunter | Final Fantasy VII         |
| vichaunter | Zelda: A link to the past |
| vichaunter | Crazy Taxy                |
| vichaunter | Donkey Kong Country       |
| vichaunter | Saints Row III            |
| vichaunter | La taba                   |
| pepito     | Crazy Taxy                |
| pepito     | La taba                   |
| jaimito    | NULL                      |
| ataulfo    | Final Fantasy VII         |
| ataulfo    | Zelda: A link to the past |
| ataulfo    | Donkey Kong Country       |
| ataulfo    | La taba                   |
+------------+---------------------------+
13 rows in set (0.001 sec)

MariaDB [db_games]>

------------------------------------------------------------------------------

SELECT usr.username, j.juegoname 
FROM usuarios AS usr
LEFT JOIN juegousuario AS jusr
ON usr.Id_usuario = jusr.Id_usuario 
LEFT JOIN juegos AS j
ON jusr.Id_juego = j.Id_juego
WHERE j.Id_juego IS NULL;

MariaDB [db_games]> SELECT usr.username, j.juegoname
    -> FROM usuarios AS usr
    -> LEFT JOIN juegousuario AS jusr
    -> ON usr.Id_usuario = jusr.Id_usuario
    -> LEFT JOIN juegos AS j
    -> ON jusr.Id_juego = j.Id_juego
    -> WHERE j.Id_juego IS NULL;
+----------+-----------+
| username | juegoname |
+----------+-----------+
| jaimito  | NULL      |
+----------+-----------+
1 row in set (0.000 sec)
MariaDB [db_games]>

-- RIGHT OUTER JOIN

"""
Right outer Join.  Exactamente lo mismo pero a la inversa, cuando quieres 
listar las filas de la tabla B aunque no estén relacionadas con ninguna fila de la 
tabla A. Es un operador un poco redundante ya que se podría cambiar simplemente el 
orden de las  tablas en el Join y utilizar un left outer para conseguir el 
mismo efecto. No obstante, y como parte de Joins múltiples, es útil tener los dos 
para un mejor comprensión de la consulta
"""

SELECT usr.username, j.juegoname 
FROM usuarios AS usr
RIGHT JOIN juegousuario AS jusr
ON usr.Id_usuario = jusr.Id_usuario 
RIGHT JOIN juegos AS j
ON jusr.Id_juego = j.Id_juego;


MariaDB [db_games]> SELECT usr.username, j.juegoname
    -> FROM usuarios AS usr
    -> RIGHT JOIN juegousuario AS jusr
    -> ON usr.Id_usuario = jusr.Id_usuario
    -> RIGHT JOIN juegos AS j
    -> ON jusr.Id_juego = j.Id_juego;
+------------+---------------------------+
| username   | juegoname                 |
+------------+---------------------------+
| vichaunter | Final Fantasy VII         |
| ataulfo    | Final Fantasy VII         |
| vichaunter | Zelda: A link to the past |
| ataulfo    | Zelda: A link to the past |
| vichaunter | Crazy Taxy                |
| pepito     | Crazy Taxy                |
| vichaunter | Donkey Kong Country       |
| ataulfo    | Donkey Kong Country       |
| NULL       | Fallout 4                 |
| vichaunter | Saints Row III            |
| vichaunter | La taba                   |
| pepito     | La taba                   |
| ataulfo    | La taba                   |
+------------+---------------------------+
13 rows in set (0.001 sec)
MariaDB [db_games]>

-------------------------------------------------------------------------------

SELECT usr.username, j.juegoname 
FROM usuarios AS usr
RIGHT JOIN juegousuario AS jusr
ON usr.Id_usuario = jusr.Id_usuario 
RIGHT JOIN juegos AS j
ON jusr.Id_juego = j.Id_juego
WHERE usr.Id_usuario IS NULL;

MariaDB [db_games]> SELECT usr.username, j.juegoname
    -> FROM usuarios AS usr
    -> RIGHT JOIN juegousuario AS jusr
    -> ON usr.Id_usuario = jusr.Id_usuario
    -> RIGHT JOIN juegos AS j
    -> ON jusr.Id_juego = j.Id_juego
    -> WHERE usr.Id_usuario IS NULL;
+----------+-----------+
| username | juegoname |
+----------+-----------+
| NULL     | Fallout 4 |
+----------+-----------+
1 row in set (0.001 sec)
MariaDB [db_games]>

-- FULL OUTER JOIN

"""
Full outer join. Es como la suma de las dos anteriores. Queremos tanto las filas de 
la A como las de B, tanto si hay match como si no.  Cuando hay match la consulta 
devolverá todos los campos de A y B que hayamos indicado, cuando no, la consulta 
devolverá sólo los campos de A o de B.
"""

SELECT usr.username, j.juegoname 
FROM usuarios AS usr
LEFT JOIN juegousuario AS jusr
ON usr.Id_usuario = jusr.Id_usuario 
LEFT JOIN juegos AS j
ON jusr.Id_juego = j.Id_juego
UNION
SELECT usr.username, j.juegoname 
FROM usuarios AS usr
RIGHT JOIN juegousuario AS jusr
ON usr.Id_usuario = jusr.Id_usuario 
RIGHT JOIN juegos AS j
ON jusr.Id_juego = j.Id_juego;

MariaDB [db_games]> SELECT usr.username, j.juegoname
    -> FROM usuarios AS usr
    -> LEFT JOIN juegousuario AS jusr
    -> ON usr.Id_usuario = jusr.Id_usuario
    -> LEFT JOIN juegos AS j
    -> ON jusr.Id_juego = j.Id_juego
    -> UNION
    -> SELECT usr.username, j.juegoname
    -> FROM usuarios AS usr
    -> RIGHT JOIN juegousuario AS jusr
    -> ON usr.Id_usuario = jusr.Id_usuario
    -> RIGHT JOIN juegos AS j
    -> ON jusr.Id_juego = j.Id_juego;
+------------+---------------------------+
| username   | juegoname                 |
+------------+---------------------------+
| vichaunter | Final Fantasy VII         |
| vichaunter | Zelda: A link to the past |
| vichaunter | Crazy Taxy                |
| vichaunter | Donkey Kong Country       |
| vichaunter | Saints Row III            |
| vichaunter | La taba                   |
| pepito     | Crazy Taxy                |
| pepito     | La taba                   |
| jaimito    | NULL                      |
| ataulfo    | Final Fantasy VII         |
| ataulfo    | Zelda: A link to the past |
| ataulfo    | Donkey Kong Country       |
| ataulfo    | La taba                   |
| NULL       | Fallout 4                 |
+------------+---------------------------+
14 rows in set (0.107 sec)
MariaDB [db_games]>

-------------------------------------------------------------------

SELECT usr.username, j.juegoname 
FROM usuarios AS usr
LEFT JOIN juegousuario AS jusr
ON usr.Id_usuario = jusr.Id_usuario 
LEFT JOIN juegos AS j
ON jusr.Id_juego = j.Id_juego
WHERE j.Id_juego IS NULL
UNION
SELECT usr.username, j.juegoname 
FROM usuarios AS usr
RIGHT JOIN juegousuario AS jusr
ON usr.Id_usuario = jusr.Id_usuario 
RIGHT JOIN juegos AS j
ON jusr.Id_juego = j.Id_juego
WHERE usr.Id_usuario IS NULL;

MariaDB [db_games]> SELECT usr.username, j.juegoname
    -> FROM usuarios AS usr
    -> LEFT JOIN juegousuario AS jusr
    -> ON usr.Id_usuario = jusr.Id_usuario
    -> LEFT JOIN juegos AS j
    -> ON jusr.Id_juego = j.Id_juego
    -> WHERE j.Id_juego IS NULL
    -> UNION
    -> SELECT usr.username, j.juegoname
    -> FROM usuarios AS usr
    -> RIGHT JOIN juegousuario AS jusr
    -> ON usr.Id_usuario = jusr.Id_usuario
    -> RIGHT JOIN juegos AS j
    -> ON jusr.Id_juego = j.Id_juego
    -> WHERE usr.Id_usuario IS NULL;
+----------+-----------+
| username | juegoname |
+----------+-----------+
| jaimito  | NULL      |
| NULL     | Fallout 4 |
+----------+-----------+
2 rows in set (0.001 sec)
MariaDB [db_games]>


--


