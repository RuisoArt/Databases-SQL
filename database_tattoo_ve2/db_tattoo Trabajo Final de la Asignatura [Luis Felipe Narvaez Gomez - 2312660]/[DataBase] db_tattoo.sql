-- Proyecto Final Bases de Datos 2021-1
-- Ing.Luis Felipe Narvaez Gomez

-- Acceder a MariaDB por la consola de comando de Windows 10 Home

Microsoft Windows [Versión 10.0.19043.1348]
(c) Microsoft Corporation. Todos los derechos reservados.

C:\Users\ruiso>cd ..

C:\Users>cd ..

C:\>D:

D:\>cd D:\Software\Xampp MySQL\mysql\bin

D:\Software\Xampp MySQL\mysql\bin>mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 8
Server version: 10.4.21-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]>

-- Crear El DataBase

MariaDB [(none)]> CREATE DATABASE db_tattoo;

-- Usar Database

MariaDB [(none)]> USE db_tattoo;
Database changed
MariaDB [db_tattoo]>

-- Mostrar Todas las tablas

MariaDB [db_tattoo]> SHOW FULL TABLES FROM db_tattoo;
Empty set (0.022 sec)

MariaDB [db_tattoo]>

-- Crear Tablas
-- Se hace uso del Create Table SQL
MariaDB [db_tattoo]> SHOW FULL TABLES FROM db_tattoo;
+---------------------+------------+
| Tables_in_db_tattoo | Table_type |
+---------------------+------------+
| detallesticket      | BASE TABLE |
| horarios            | BASE TABLE |
| impuestos           | BASE TABLE |
| impuestoxproducto   | BASE TABLE |
| materiales          | BASE TABLE |
| personas            | BASE TABLE |
| personaxtipper      | BASE TABLE |
| preciosproductos    | BASE TABLE |
| productos           | BASE TABLE |
| proveedorxmaterial  | BASE TABLE |
| tickets             | BASE TABLE |
| tiendastattoo       | BASE TABLE |
| tiposmaterial       | BASE TABLE |
| tipospersona        | BASE TABLE |
| tiposproductos      | BASE TABLE |
+---------------------+------------+
15 rows in set (0.004 sec)

MariaDB [db_tattoo]>

-- Descripcion de tablas

DESCRIBE detallesticket;
DESCRIBE horarios;
DESCRIBE impuestos;
DESCRIBE impuestoxproducto;
DESCRIBE materiales;
DESCRIBE personas;
DESCRIBE personaxtipper;
DESCRIBE preciosproductos;
DESCRIBE productos;
DESCRIBE proveedorxmaterial;
DESCRIBE tickets;
DESCRIBE tiendastattoo;
DESCRIBE tiposmaterial;
DESCRIBE tipospersona;
DESCRIBE tiposproductos;

MariaDB [db_tattoo]> DESCRIBE detallesticket;
+-------------------+--------------+------+-----+---------+-------+
| Field             | Type         | Null | Key | Default | Extra |
+-------------------+--------------+------+-----+---------+-------+
| id_detalle_ticket | int(11)      | NO   |     | NULL    |       |
| descripcion       | varchar(100) | NO   |     | NULL    |       |
+-------------------+--------------+------+-----+---------+-------+

MariaDB [db_tattoo]> DESCRIBE horarios;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| id_horario | int(11)     | NO   |     | NULL    |       |
| Lunes      | varchar(25) | NO   |     | NULL    |       |
| Martes     | varchar(25) | NO   |     | NULL    |       |
| Miercoles  | varchar(25) | NO   |     | NULL    |       |
| jueves     | varchar(25) | NO   |     | NULL    |       |
| Viernes    | varchar(25) | NO   |     | NULL    |       |
| Sabado     | varchar(25) | NO   |     | NULL    |       |
| Domingo    | varchar(25) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+

MariaDB [db_tattoo]> DESCRIBE impuestos;
+-----------------+---------------+------+-----+---------+-------+
| Field           | Type          | Null | Key | Default | Extra |
+-----------------+---------------+------+-----+---------+-------+
| id_impuesto     | int(11)       | NO   |     | NULL    |       |
| nombre_impuesto | varchar(25)   | NO   |     | NULL    |       |
| valor_impuesto  | decimal(11,2) | NO   |     | NULL    |       |
+-----------------+---------------+------+-----+---------+-------+

MariaDB [db_tattoo]> DESCRIBE impuestoxproducto;
+--------------------+---------+------+-----+---------+-------+
| Field              | Type    | Null | Key | Default | Extra |
+--------------------+---------+------+-----+---------+-------+
| id_impXprodu       | int(11) | NO   |     | NULL    |       |
| id_precio_producto | int(11) | NO   |     | NULL    |       |
| id_impuesto        | int(11) | NO   |     | NULL    |       |
+--------------------+---------+------+-----+---------+-------+

MariaDB [db_tattoo]> DESCRIBE materiales;
+------------------+--------------+------+-----+---------+-------+
| Field            | Type         | Null | Key | Default | Extra |
+------------------+--------------+------+-----+---------+-------+
| id_material      | int(11)      | NO   |     | NULL    |       |
| nombre           | varchar(25)  | NO   |     | NULL    |       |
| descripcion      | varchar(100) | NO   |     | NULL    |       |
| FK_tipo_material | int(11)      | NO   |     | NULL    |       |
| FK_id_proveedor  | int(11)      | NO   |     | NULL    |       |
+------------------+--------------+------+-----+---------+-------+

MariaDB [db_tattoo]> DESCRIBE personas;
+------------------+---------------------+------+-----+---------+----------------+
| Field            | Type                | Null | Key | Default | Extra          |
+------------------+---------------------+------+-----+---------+----------------+
| id_persona       | int(11)             | NO   |     | NULL    |                |
| nombre           | varchar(25)         | NO   |     | NULL    |                |
| apellido         | varchar(25)         | NO   |     | NULL    |                |
| edad             | int(11)             | NO   |     | NULL    |                |
| dni_persona      | varchar(15)         | NO   |     | NULL    |                |
| pais_origen      | bigint(20) unsigned | NO   | PRI | NULL    | auto_increment |
| fecha_nacimiento | date                | NO   |     | NULL    |                |
| direccion        | varchar(30)         | YES  |     | NULL    |                |
| descripcion      | varchar(100)        | NO   |     | NULL    |                |
| url              | varchar(50)         | YES  |     | NULL    |                |
| telefono         | varchar(15)         | YES  |     | NULL    |                |
| nit              | varchar(15)         | YES  |     | NULL    |                |
| FK_tipo_persona  | int(11)             | NO   |     | NULL    |                |
| FK_tienda_tattoo | int(11)             | YES  |     | NULL    |                |
+------------------+---------------------+------+-----+---------+----------------+

MariaDB [db_tattoo]> DESCRIBE personaxtipper;
+-------------------+---------+------+-----+---------+-------+
| Field             | Type    | Null | Key | Default | Extra |
+-------------------+---------+------+-----+---------+-------+
| id_personaXtipper | int(11) | NO   |     | NULL    |       |
| id_persona        | int(11) | NO   |     | NULL    |       |
| id_tipo_persona   | int(11) | NO   |     | NULL    |       |
+-------------------+---------+------+-----+---------+-------+

MariaDB [db_tattoo]> DESCRIBE preciosproductos;
+----------------------+---------------+------+-----+---------+-------+
| Field                | Type          | Null | Key | Default | Extra |
+----------------------+---------------+------+-----+---------+-------+
| id_precio_producto   | int(11)       | NO   |     | NULL    |       |
| descripcion_producto | varchar(100)  | NO   |     | NULL    |       |
| feccha_precio        | date          | NO   |     | NULL    |       |
| precio_tattoo        | decimal(11,2) | NO   |     | NULL    |       |
| precio_piercing      | decimal(11,2) | NO   |     | NULL    |       |
| FK_impuesto          | int(11)       | NO   |     | NULL    |       |
| FK_valor_impuesto    | int(11)       | NO   |     | NULL    |       |
| precio_total         | decimal(11,2) | NO   |     | NULL    |       |
+----------------------+---------------+------+-----+---------+-------+

MariaDB [db_tattoo]> DESCRIBE productos;
+--------------------+--------------+------+-----+---------+-------+
| Field              | Type         | Null | Key | Default | Extra |
+--------------------+--------------+------+-----+---------+-------+
| id_producto        | int(11)      | NO   |     | NULL    |       |
| nombre             | varchar(25)  | NO   |     | NULL    |       |
| descripcion        | varchar(100) | NO   |     | NULL    |       |
| FK_tipo_producto   | int(11)      | NO   |     | NULL    |       |
| FK_precio_producto | int(11)      | NO   |     | NULL    |       |
+--------------------+--------------+------+-----+---------+-------+

MariaDB [db_tattoo]> DESCRIBE proveedorxmaterial;
+--------------+---------+------+-----+---------+-------+
| Field        | Type    | Null | Key | Default | Extra |
+--------------+---------+------+-----+---------+-------+
| id_proveXmat | int(11) | NO   |     | NULL    |       |
| id_material  | int(11) | NO   |     | NULL    |       |
| id_proveedor | int(11) | NO   |     | NULL    |       |
+--------------+---------+------+-----+---------+-------+

MariaDB [db_tattoo]> DESCRIBE tickets;
+--------------------+-------------+------+-----+---------+-------+
| Field              | Type        | Null | Key | Default | Extra |
+--------------------+-------------+------+-----+---------+-------+
| id_ticket          | int(11)     | NO   |     | NULL    |       |
| medio_pago         | varchar(25) | NO   |     | NULL    |       |
| fecha_ticket       | date        | NO   |     | NULL    |       |
| FK_id_cliente      | int(11)     | NO   |     | NULL    |       |
| FK_detalle_ticket  | int(11)     | NO   |     | NULL    |       |
| FK_precio_producto | int(11)     | NO   |     | NULL    |       |
+--------------------+-------------+------+-----+---------+-------+

MariaDB [db_tattoo]> DESCRIBE tiendastattoo;
+------------------+-------------+------+-----+---------+-------+
| Field            | Type        | Null | Key | Default | Extra |
+------------------+-------------+------+-----+---------+-------+
| id_tienda_tattoo | int(11)     | NO   |     | NULL    |       |
| nombre_tienda    | varchar(50) | NO   |     | NULL    |       |
| direccion        | varchar(25) | NO   |     | NULL    |       |
| telefono         | varchar(15) | YES  |     | NULL    |       |
| nit              | varchar(15) | NO   |     | NULL    |       |
| departamento     | varchar(25) | NO   |     | NULL    |       |
| ciudad           | varchar(25) | NO   |     | NULL    |       |
| FK_horario       | int(11)     | NO   |     | NULL    |       |
+------------------+-------------+------+-----+---------+-------+

MariaDB [db_tattoo]> DESCRIBE tiposmaterial;
+----------------------+-------------+------+-----+---------+-------+
| Field                | Type        | Null | Key | Default | Extra |
+----------------------+-------------+------+-----+---------+-------+
| id_tipo_material     | int(11)     | NO   |     | NULL    |       |
| nombre_tipo_material | varchar(25) | NO   |     | NULL    |       |
+----------------------+-------------+------+-----+---------+-------+

MariaDB [db_tattoo]> DESCRIBE tipospersona;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| id_tipo_persona | int(11)     | NO   |     | NULL    |       |
| tipo_persona    | varchar(25) | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+

MariaDB [db_tattoo]> DESCRIBE tiposproductos;
+----------------------+-------------+------+-----+---------+-------+
| Field                | Type        | Null | Key | Default | Extra |
+----------------------+-------------+------+-----+---------+-------+
| id_tipo_producto     | int(11)     | NO   |     | NULL    |       |
| nombre_tipo_producto | varchar(50) | NO   |     | NULL    |       |
+----------------------+-------------+------+-----+---------+-------+

-- Implementar llaves primarias

Se implementa el archivo de llaves primarias

--- MODIFICAR DATO ERRADO EN PERSONAS PAIS DE ORIGEN NO ES SERIAL ES VARCHAR

ALTER TABLE Personas MODIFY pais_origen VARCHAR(25);
ALTER TABLE Personas DROP INDEX pais_origen;
ALTER TABLE preciosproductos MODIFY FK_valor_impuesto DECIMAL(11,2);
ALTER TABLE Personas MODIFY edad int NULL;

-- LLAVES FORANEAS

Se implementa el archivo de llaves foraneas

-- DESCRIBIR TABLAS CON LLAVES PRIMARIAS Y FORANEAS

DESCRIBE detallesticket;
DESCRIBE horarios;
DESCRIBE impuestos;
DESCRIBE impuestoxproducto;
DESCRIBE materiales;
DESCRIBE personas;
DESCRIBE personaxtipper;
DESCRIBE preciosproductos;
DESCRIBE productos;
DESCRIBE proveedorxmaterial;
DESCRIBE tickets;
DESCRIBE tiendastattoo;
DESCRIBE tiposmaterial;
DESCRIBE tipospersona;
DESCRIBE tiposproductos;

MariaDB [db_tattoo]> DESCRIBE detallesticket;
+-------------------+--------------+------+-----+---------+-------+
| Field             | Type         | Null | Key | Default | Extra |
+-------------------+--------------+------+-----+---------+-------+
| id_detalle_ticket | int(11)      | NO   | PRI | NULL    |       |
| descripcion       | varchar(100) | NO   |     | NULL    |       |
+-------------------+--------------+------+-----+---------+-------+
2 rows in set (0.004 sec)

MariaDB [db_tattoo]> DESCRIBE horarios;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| id_horario | int(11)     | NO   | PRI | NULL    |       |
| Lunes      | varchar(25) | NO   |     | NULL    |       |
| Martes     | varchar(25) | NO   |     | NULL    |       |
| Miercoles  | varchar(25) | NO   |     | NULL    |       |
| jueves     | varchar(25) | NO   |     | NULL    |       |
| Viernes    | varchar(25) | NO   |     | NULL    |       |
| Sabado     | varchar(25) | NO   |     | NULL    |       |
| Domingo    | varchar(25) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
8 rows in set (0.003 sec)

MariaDB [db_tattoo]> DESCRIBE impuestos;
+-----------------+---------------+------+-----+---------+-------+
| Field           | Type          | Null | Key | Default | Extra |
+-----------------+---------------+------+-----+---------+-------+
| id_impuesto     | int(11)       | NO   | PRI | NULL    |       |
| nombre_impuesto | varchar(25)   | NO   |     | NULL    |       |
| valor_impuesto  | decimal(11,2) | NO   |     | NULL    |       |
+-----------------+---------------+------+-----+---------+-------+
3 rows in set (0.090 sec)

MariaDB [db_tattoo]> DESCRIBE impuestoxproducto;
+--------------------+---------+------+-----+---------+-------+
| Field              | Type    | Null | Key | Default | Extra |
+--------------------+---------+------+-----+---------+-------+
| id_impXprodu       | int(11) | NO   | PRI | NULL    |       |
| id_precio_producto | int(11) | NO   | MUL | NULL    |       |
| id_impuesto        | int(11) | NO   | MUL | NULL    |       |
+--------------------+---------+------+-----+---------+-------+
3 rows in set (0.006 sec)

MariaDB [db_tattoo]> DESCRIBE materiales;
+------------------+--------------+------+-----+---------+-------+
| Field            | Type         | Null | Key | Default | Extra |
+------------------+--------------+------+-----+---------+-------+
| id_material      | int(11)      | NO   | PRI | NULL    |       |
| nombre           | varchar(25)  | NO   |     | NULL    |       |
| descripcion      | varchar(100) | NO   |     | NULL    |       |
| FK_tipo_material | int(11)      | NO   | MUL | NULL    |       |
| FK_id_proveedor  | int(11)      | NO   | MUL | NULL    |       |
+------------------+--------------+------+-----+---------+-------+
5 rows in set (0.005 sec)

MariaDB [db_tattoo]> DESCRIBE personas;
+------------------+--------------+------+-----+---------+-------+
| Field            | Type         | Null | Key | Default | Extra |
+------------------+--------------+------+-----+---------+-------+
| id_persona       | int(11)      | NO   | PRI | NULL    |       |
| nombre           | varchar(25)  | NO   |     | NULL    |       |
| apellido         | varchar(25)  | NO   |     | NULL    |       |
| edad             | int(11)      | NO   |     | NULL    |       |
| dni_persona      | varchar(15)  | NO   |     | NULL    |       |
| pais_origen      | varchar(25)  | YES  | UNI | NULL    |       |
| fecha_nacimiento | date         | NO   |     | NULL    |       |
| direccion        | varchar(30)  | YES  |     | NULL    |       |
| descripcion      | varchar(100) | NO   |     | NULL    |       |
| url              | varchar(50)  | YES  |     | NULL    |       |
| telefono         | varchar(15)  | YES  |     | NULL    |       |
| nit              | varchar(15)  | YES  |     | NULL    |       |
| FK_tipo_persona  | int(11)      | NO   | MUL | NULL    |       |
| FK_tienda_tattoo | int(11)      | YES  | MUL | NULL    |       |
+------------------+--------------+------+-----+---------+-------+
14 rows in set (0.002 sec)

MariaDB [db_tattoo]> DESCRIBE personaxtipper;
+-------------------+---------+------+-----+---------+-------+
| Field             | Type    | Null | Key | Default | Extra |
+-------------------+---------+------+-----+---------+-------+
| id_personaXtipper | int(11) | NO   | PRI | NULL    |       |
| id_persona        | int(11) | NO   | MUL | NULL    |       |
| id_tipo_persona   | int(11) | NO   | MUL | NULL    |       |
+-------------------+---------+------+-----+---------+-------+
3 rows in set (0.005 sec)

MariaDB [db_tattoo]> DESCRIBE preciosproductos;
+----------------------+---------------+------+-----+---------+-------+
| Field                | Type          | Null | Key | Default | Extra |
+----------------------+---------------+------+-----+---------+-------+
| id_precio_producto   | int(11)       | NO   | PRI | NULL    |       |
| descripcion_producto | varchar(100)  | NO   |     | NULL    |       |
| feccha_precio        | date          | NO   |     | NULL    |       |
| precio_tattoo        | decimal(11,2) | NO   |     | NULL    |       |
| precio_piercing      | decimal(11,2) | NO   |     | NULL    |       |
| FK_impuesto          | int(11)       | NO   | MUL | NULL    |       |
| FK_valor_impuesto    | decimal(11,2) | YES  |     | NULL    |       |
| precio_total         | decimal(11,2) | NO   |     | NULL    |       |
+----------------------+---------------+------+-----+---------+-------+
8 rows in set (0.003 sec)

MariaDB [db_tattoo]> DESCRIBE productos;
+--------------------+--------------+------+-----+---------+-------+
| Field              | Type         | Null | Key | Default | Extra |
+--------------------+--------------+------+-----+---------+-------+
| id_producto        | int(11)      | NO   | PRI | NULL    |       |
| nombre             | varchar(25)  | NO   |     | NULL    |       |
| descripcion        | varchar(100) | NO   |     | NULL    |       |
| FK_tipo_producto   | int(11)      | NO   | MUL | NULL    |       |
| FK_precio_producto | int(11)      | NO   | MUL | NULL    |       |
+--------------------+--------------+------+-----+---------+-------+
5 rows in set (0.005 sec)

MariaDB [db_tattoo]> DESCRIBE proveedorxmaterial;
+--------------+---------+------+-----+---------+-------+
| Field        | Type    | Null | Key | Default | Extra |
+--------------+---------+------+-----+---------+-------+
| id_proveXmat | int(11) | NO   | PRI | NULL    |       |
| id_material  | int(11) | NO   | MUL | NULL    |       |
| id_proveedor | int(11) | NO   | MUL | NULL    |       |
+--------------+---------+------+-----+---------+-------+
3 rows in set (0.006 sec)

MariaDB [db_tattoo]> DESCRIBE tickets;
+--------------------+-------------+------+-----+---------+-------+
| Field              | Type        | Null | Key | Default | Extra |
+--------------------+-------------+------+-----+---------+-------+
| id_ticket          | int(11)     | NO   | PRI | NULL    |       |
| medio_pago         | varchar(25) | NO   |     | NULL    |       |
| fecha_ticket       | date        | NO   |     | NULL    |       |
| FK_id_cliente      | int(11)     | NO   | MUL | NULL    |       |
| FK_detalle_ticket  | int(11)     | NO   | MUL | NULL    |       |
| FK_precio_producto | int(11)     | NO   | MUL | NULL    |       |
+--------------------+-------------+------+-----+---------+-------+
6 rows in set (0.006 sec)

MariaDB [db_tattoo]> DESCRIBE tiendastattoo;
+------------------+-------------+------+-----+---------+-------+
| Field            | Type        | Null | Key | Default | Extra |
+------------------+-------------+------+-----+---------+-------+
| id_tienda_tattoo | int(11)     | NO   | PRI | NULL    |       |
| nombre_tienda    | varchar(50) | NO   |     | NULL    |       |
| direccion        | varchar(25) | NO   |     | NULL    |       |
| telefono         | varchar(15) | YES  |     | NULL    |       |
| nit              | varchar(15) | NO   |     | NULL    |       |
| departamento     | varchar(25) | NO   |     | NULL    |       |
| ciudad           | varchar(25) | NO   |     | NULL    |       |
| FK_horario       | int(11)     | NO   | MUL | NULL    |       |
+------------------+-------------+------+-----+---------+-------+
8 rows in set (0.006 sec)

MariaDB [db_tattoo]> DESCRIBE tiposmaterial;
+----------------------+-------------+------+-----+---------+-------+
| Field                | Type        | Null | Key | Default | Extra |
+----------------------+-------------+------+-----+---------+-------+
| id_tipo_material     | int(11)     | NO   | PRI | NULL    |       |
| nombre_tipo_material | varchar(25) | NO   |     | NULL    |       |
+----------------------+-------------+------+-----+---------+-------+
2 rows in set (0.003 sec)

MariaDB [db_tattoo]> DESCRIBE tipospersona;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| id_tipo_persona | int(11)     | NO   | PRI | NULL    |       |
| tipo_persona    | varchar(25) | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
2 rows in set (0.003 sec)

MariaDB [db_tattoo]> DESCRIBE tiposproductos;
+----------------------+-------------+------+-----+---------+-------+
| Field                | Type        | Null | Key | Default | Extra |
+----------------------+-------------+------+-----+---------+-------+
| id_tipo_producto     | int(11)     | NO   | PRI | NULL    |       |
| nombre_tipo_producto | varchar(50) | NO   |     | NULL    |       |
+----------------------+-------------+------+-----+---------+-------+

-- IMPLEMENTAR TRIGERS

MariaDB [db_tattoo]> CREATE TRIGGER calc_precio_total BEFORE INSERT ON PreciosProductos
    -> FOR EACH ROW
    -> BEGIN
    -> SET new.precio_total = (new.precio_tattoo + new.precio_piercing) + ((new.precio_tattoo + new.precio_piercing)*new.FK_valor_impuesto);
    -> END;
    -> //
Query OK, 0 rows affected (0.226 sec)

MariaDB [db_tattoo]> Delimiter ;
MariaDB [db_tattoo]>

MariaDB [db_tattoo]> CREATE TRIGGER cal_edad BEFORE INSERT ON Personas
    -> FOR EACH ROW
    -> BEGIN
    -> SET new.edad = TIMESTAMPDIFF(YEAR,new.fecha_nacimiento,CURDATE());
    -> END;
    -> //
Query OK, 0 rows affected (0.198 sec)

MariaDB [db_tattoo]> Delimiter ;

-- Poblar tablas

se utiliza el insert table SQL en orden de jerarquias

SELECT id_persona AS 'ID', CONCAT(nombre,apellido) AS 'Persona', 
fecha_nacimiento AS 'FechaNacimiento', TIMESTAMPDIFF(YEAR,fecha_nacimiento,CURDATE()) AS 'Edad'
FROM Personas;

SELECT id_persona AS 'ID', CONCAT(nombre,apellido) AS 'Persona'
FROM Personas
WHERE FK_tipo_persona = 1;

SELECT COUNT(p.FK_tipo_persona) AS 'Cantidad Personal', tp.tipo_persona
FROM Personas AS p
INNER JOIN tipospersona AS tp
ON p.FK_tipo_persona = tp.id_tipo_persona
GROUP BY p.FK_tipo_persona;



