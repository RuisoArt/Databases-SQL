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

-- crear la database

Create database db_pruebatrigger;

MariaDB [(none)]> Create database db_pruebatrigger;
Query OK, 1 row affected (0.001 sec)

-- cambiar a la base de datos

USE db_pruebatrigger;

MariaDB [(none)]> USE db_pruebatrigger;
Database changed
MariaDB [db_pruebatrigger]>

-- crear tabla

Create table productos(
codigo varchar(12) primary key,
nombre varchar(30),
porgana int(2),
Costo int,
Valorventa int,
cantidad int
);

MariaDB [(none)]> USE database db_pruebatrigger;
ERROR 1049 (42000): Unknown database 'database'
MariaDB [(none)]> USE db_pruebatrigger;
Database changed
MariaDB [db_pruebatrigger]> Create table productos(
    -> codigo varchar(12) primary key,
    -> nombre varchar(30),
    -> porgana int(2),
    -> Costo int,
    -> Valorventa int,
    -> cantidad int
    -> );
Query OK, 0 rows affected (0.303 sec)

MariaDB [db_pruebatrigger]> DESCRIBE productos;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| codigo     | varchar(12) | NO   | PRI | NULL    |       |
| nombre     | varchar(30) | YES  |     | NULL    |       |
| porgana    | int(2)      | YES  |     | NULL    |       |
| Costo      | int(11)     | YES  |     | NULL    |       |
| Valorventa | int(11)     | YES  |     | NULL    |       |
| cantidad   | int(11)     | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.041 sec)

-- poblar la tabla

Insert into productos values('1','arroz 1 kilo',15,1800,0,45);

MariaDB [db_pruebatrigger]> Insert into productos values('1','arroz 1 kilo',15,1800,0,45);
Query OK, 1 row affected (0.235 sec)

MariaDB [db_pruebatrigger]> SELECT * FROM productos;
+--------+--------------+---------+-------+------------+----------+
| codigo | nombre       | porgana | Costo | Valorventa | cantidad |
+--------+--------------+---------+-------+------------+----------+
| 1      | arroz 1 kilo |      15 |  1800 |          0 |       45 |
+--------+--------------+---------+-------+------------+----------+

-- creando el trigger

Delimiter //

CREATE TRIGGER calvalorventa BEFORE INSERT ON productos
for each row
BEGIN
set new.valorventa= new.costo +new.costo*new. Porgana/100;
end;
//

Delimiter ;

MariaDB [db_pruebatrigger]> Delimiter //
MariaDB [db_pruebatrigger]> CREATE TRIGGER calvalorventa BEFORE INSERT ON productos
    -> for each row
    -> BEGIN
    -> set new.valorventa= new.costo +new.costo*new. Porgana/100;
    -> end;
    -> //
Query OK, 0 rows affected (0.201 sec)

MariaDB [db_pruebatrigger]> Delimiter ;

-- reinsertando los datos tenemos


delete from productos;
SELECT * FROM productos;

MariaDB [db_pruebatrigger]> delete from productos;
Query OK, 1 row affected (0.137 sec)

MariaDB [db_pruebatrigger]> SELECT * FROM productos;
Empty set (0.000 sec)

MariaDB [db_pruebatrigger]> Insert into productos values('1','arroz 1 kilo',15,1800,0,45);

Query OK, 1 row affected (0.122 sec)

MariaDB [db_pruebatrigger]> SELECT * FROM productos;
+--------+--------------+---------+-------+------------+----------+
| codigo | nombre       | porgana | Costo | Valorventa | cantidad |
+--------+--------------+---------+-------+------------+----------+
| 1      | arroz 1 kilo |      15 |  1800 |       2070 |       45 |
+--------+--------------+---------+-------+------------+----------+

-- triger para actualizar un producto
--actuaizar un producto de forma tradicoinal

Update productos set costo=5000 where codigo=’1’;
SELECT * FROM productos;

MariaDB [db_pruebatrigger]> Update productos set costo=5000 where codigo=’1’;
Query OK, 1 row affected (0.189 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [db_pruebatrigger]> SELECT * FROM productos;
+--------+--------------+---------+-------+------------+----------+
| codigo | nombre       | porgana | Costo | Valorventa | cantidad |
+--------+--------------+---------+-------+------------+----------+
| 1      | arroz 1 kilo |      15 |  5000 |       2070 |       45 |
+--------+--------------+---------+-------+------------+----------+

-- CREADO EL TRIGGER

Delimiter //

Create trigger actvalorventa before update on productos
for each row
begin
set new.valorventa= new.costo + new.costo*new.Porgana/100;
end;
//

Delimiter ;


MariaDB [db_pruebatrigger]> Delimiter //
MariaDB [db_pruebatrigger]> Create trigger actvalorventa before update on productos
    -> for each row
    -> begin
    -> set new.valorventa= new.costo + new.costo*new.Porgana/100;
    -> end;
    -> //
Query OK, 0 rows affected (0.199 sec)

MariaDB [db_pruebatrigger]> Delimiter ;

-- BORRAR REGISTRO Y ACTUALIZAR DATOS

delete from productos;

Insert into productos values('1','arroz 1 kilo',15,1800,0,45);
Update productos set costo=5000 where codigo=’1’;

SELECT * from productos;

MariaDB [db_pruebatrigger]> delete from productos;
Query OK, 1 row affected (0.122 sec)

MariaDB [db_pruebatrigger]> Insert into productos values('1','arroz 1 kilo',15,1800,0,45);
Query OK, 1 row affected (0.129 sec)

MariaDB [db_pruebatrigger]> Update productos set costo=5000 where codigo=’1’;
Query OK, 1 row affected (0.132 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [db_pruebatrigger]> SELECT * from productos;
+--------+--------------+---------+-------+------------+----------+
| codigo | nombre       | porgana | Costo | Valorventa | cantidad |
+--------+--------------+---------+-------+------------+----------+
| 1      | arroz 1 kilo |      15 |  5000 |       5750 |       45 |
+--------+--------------+---------+-------+------------+----------+

