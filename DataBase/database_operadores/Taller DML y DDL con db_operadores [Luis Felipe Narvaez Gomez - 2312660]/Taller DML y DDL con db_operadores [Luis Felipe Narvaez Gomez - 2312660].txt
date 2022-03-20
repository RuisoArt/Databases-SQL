
NOTA: Este archivo a pesar de su formato SQL, no debe correrse en software de Databases, debe abrirse en un editor de texto plano como Bloc de Notas o bien cambiar la extencion a ".txt".


--Datos del Estudiante:

-- Nombre: Ing.Luis Felipe Narvaez Gomez
-- Facultad: Ingenieria de Sistemas
-- Universidad: Santo Tomas seccional Tunja
-- Materia: Bases de Datos
-- Semestre: 2021-2


-- ................................................................................. Apuntes de DML .................................................................................


-- este lenguaje permite trabajar sone la informacion almacenada en una base de datos (sobre los registros)

INSERT --> adiciona registror a una tabla de la base de datos INSERT INTO nombre_tabla(campo1,campo2...) VALUES (valor1,valor2...);
SELECT --> recupera la informacion que le digamos. Normalmente se usa en conjunto con otras sentencias y operaciones/comparaciones algebraicas
JOIN --> usado en conjunto con SELECT, es utilizado pa combinar una o mas tablas, tomando un campo en comun entre las dos
UPDATE --> Actualiza campos en una tabla , es utiliado con sentencias de operacion comparacion. UPDATE nombre_tabla SET campo1 = valor1, campo2 = valor 2;
DELETE --> Elimina registros de una tabla, tambien es utilizado en conjunto con otras sentencias de operacion o comparacion

-- Ejercicio (MySQL)

-- Acceder a Maria DB

C:\Users\ruiso>cd ..

C:\Users>cd ..

C:\>d:

D:\>cd D:\Software\Xampp\mysql\bin

D:\Software\Xampp\mysql\bin>

-- Inicializar Maria DB

D:\Software\Xampp\mysql\bin>mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 19
Server version: 10.4.21-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]>

-- Crear base de datos

MariaDB [(none)]> CREATE DATABASE db_operador;

-- Poner en uso la base de datos

MariaDB [(none)]> USE db_operador;

-- Crear tabla principal de ejemplo

MariaDB [db_operador]> CREATE TABLE tblUsuarios(
    -> idx TINYINT(2) PRIMARY KEY AUTO_INCREMENT,
    -> usuario VARCHAR(20),
    -> nombre VARCHAR(20),
    -> sexo VARCHAR(1),
    -> nivel TINYINT(2),
    -> email VARCHAR(50),
    -> telefono VARCHAR(20),
    -> marca VARCHAR(20),
    -> operador VARCHAR(20),
    -> saldo FLOAT,
    -> activo BOOLEAN
    -> );

-- Poblar la tabla con datos

MariaDB [db_operador]> INSERT INTO tblUsuarios
    -> VALUES
    -> ('1','BRE2271','BRENDA','M','2','brenda@live.com','655-330-5736','SAMSUNG','IUSACELL','100','1'),
    -> ('2','OSC4677','OSCAR','H','3','oscar@gmail.com','655-143-4181','LG','TELCEL','0','1'),
    -> ('3','JOS7086','JOSE','H','3','francisco@gmail.com','655-143-3922','NOKIA','MOVISTAR','150','1'),
    -> ('4','LUI6115','LUIS','H','0','enrique@outlook.com','655-137-1279','SAMSUNG','TELCEL','50','1'),
    -> ('5','LUI7072','LUIS','H','1','luis@hotmail.com','655-100-8260','NOKIA','IUSACELL','50','0'),
    -> ('6','DAN2832','DANIEL','H','0','daniel@outlook.com','655-145-2586','SONY','UNEFON','100','1'),
    -> ('7','JAQ5351','JAQUELINE','M','0','jaqueline@outlook.com','655-330-5514','BLACKBERRY','AXEL','0','1'),
    -> ('8','ROM6520','ROMAN','H','2','roman@gmail.com','655-330-3263','LG','IUSACELL','50','1'),
    -> ('9','BLA9739','BLAS','H','0','blas@hotmail.com','655-330-3871','LG','UNEFON','100','1'),
    -> ('10','JES4752','JESSICA','M','1','jessica@hotmail.com','655-143-6861','SAMSUNG','TELCEL','500','1'),
    -> ('11','DIA6570','DIANA','M','1','diana@live.com','655-143-3952','SONY','UNEFON','100','0'),
    -> ('12','RIC8283','RICARDO','H','2','ricardo@hotmail.com','655-145-6049','MOTOROLA','IUSACELL','150','1'),
    -> ('13','VAL6882','VALENTINA','M','0','valentina@live.com','655-137-4253','BLACKBERRY','AT&T','50','0'),
    -> ('14','BRE8106','BRENDA','M','3','brenda2@gmail.com','655-100-1351','MOTOROLA','NEXTEL','150','1'),
    -> ('15','LUC4982','LUCIA','M','3','lucia@gmail.com','655-145-4992','BLACKBERRY','IUSACELL','0','1'),
    -> ('16','JUA2337','JUAN','H','0','juan@outlook.com','655-100-6517','SAMSUNG','AXEL','0','0'),
    -> ('17','ELP2984','ELPIDIO','H','1','elpidio@outlook.com','655-145-9938','MOTOROLA','MOVISTAR','500','1'),
    -> ('18','JES9640','JESSICA','M','3','jessica2@live.com','655-330-5143','SONY','IUSACELL','200','1'),
    -> ('19','LET4015','LETICIA','M','2','leticia@yahoo.com','655-143-4019','BLACKBERRY','UNEFON','100','1'),
    -> ('20','LUI1076','LUIS','H','3','luis2@live.com','655-100-5085','SONY','UNEFON','150','1'),
    -> ('21','HUG5441','HUGO','H','2','hugo@live.com','655-137-3935','MOTOROLA','AT&T','500','1');

-- Mostrar los registros almacenados en la tabla

MariaDB [db_operador]> SELECT * FROM tblUsuarios
    -> ;
+-----+---------+-----------+------+-------+-----------------------+--------------+------------+----------+-------+--------+
| idx | usuario | nombre    | sexo | nivel | email                 | telefono     | marca      | operador | saldo | activo |
+-----+---------+-----------+------+-------+-----------------------+--------------+------------+----------+-------+--------+
|   1 | BRE2271 | BRENDA    | M    |     2 | brenda@live.com       | 655-330-5736 | SAMSUNG    | IUSACELL |   100 |      1 |
|   2 | OSC4677 | OSCAR     | H    |     3 | oscar@gmail.com       | 655-143-4181 | LG         | TELCEL   |     0 |      1 |
|   3 | JOS7086 | JOSE      | H    |     3 | francisco@gmail.com   | 655-143-3922 | NOKIA      | MOVISTAR |   150 |      1 |
|   4 | LUI6115 | LUIS      | H    |     0 | enrique@outlook.com   | 655-137-1279 | SAMSUNG    | TELCEL   |    50 |      1 |
|   5 | LUI7072 | LUIS      | H    |     1 | luis@hotmail.com      | 655-100-8260 | NOKIA      | IUSACELL |    50 |      0 |
|   6 | DAN2832 | DANIEL    | H    |     0 | daniel@outlook.com    | 655-145-2586 | SONY       | UNEFON   |   100 |      1 |
|   7 | JAQ5351 | JAQUELINE | M    |     0 | jaqueline@outlook.com | 655-330-5514 | BLACKBERRY | AXEL     |     0 |      1 |
|   8 | ROM6520 | ROMAN     | H    |     2 | roman@gmail.com       | 655-330-3263 | LG         | IUSACELL |    50 |      1 |
|   9 | BLA9739 | BLAS      | H    |     0 | blas@hotmail.com      | 655-330-3871 | LG         | UNEFON   |   100 |      1 |
|  10 | JES4752 | JESSICA   | M    |     1 | jessica@hotmail.com   | 655-143-6861 | SAMSUNG    | TELCEL   |   500 |      1 |
|  11 | DIA6570 | DIANA     | M    |     1 | diana@live.com        | 655-143-3952 | SONY       | UNEFON   |   100 |      0 |
|  12 | RIC8283 | RICARDO   | H    |     2 | ricardo@hotmail.com   | 655-145-6049 | MOTOROLA   | IUSACELL |   150 |      1 |
|  13 | VAL6882 | VALENTINA | M    |     0 | valentina@live.com    | 655-137-4253 | BLACKBERRY | AT&T     |    50 |      0 |
|  14 | BRE8106 | BRENDA    | M    |     3 | brenda2@gmail.com     | 655-100-1351 | MOTOROLA   | NEXTEL   |   150 |      1 |
|  15 | LUC4982 | LUCIA     | M    |     3 | lucia@gmail.com       | 655-145-4992 | BLACKBERRY | IUSACELL |     0 |      1 |
|  16 | JUA2337 | JUAN      | H    |     0 | juan@outlook.com      | 655-100-6517 | SAMSUNG    | AXEL     |     0 |      0 |
|  17 | ELP2984 | ELPIDIO   | H    |     1 | elpidio@outlook.com   | 655-145-9938 | MOTOROLA   | MOVISTAR |   500 |      1 |
|  18 | JES9640 | JESSICA   | M    |     3 | jessica2@live.com     | 655-330-5143 | SONY       | IUSACELL |   200 |      1 |
|  19 | LET4015 | LETICIA   | M    |     2 | leticia@yahoo.com     | 655-143-4019 | BLACKBERRY | UNEFON   |   100 |      1 |
|  20 | LUI1076 | LUIS      | H    |     3 | luis2@live.com        | 655-100-5085 | SONY       | UNEFON   |   150 |      1 |
|  21 | HUG5441 | HUGO      | H    |     2 | hugo@live.com         | 655-137-3935 | MOTOROLA   | AT&T     |   500 |      1 |
+-----+---------+-----------+------+-------+-----------------------+--------------+------------+----------+-------+--------+
21 rows in set (0.001 sec)

-- Listar los nombres de los Usuarios

MariaDB [db_operador]> SELECT nombre FROM tblUsuarios;
+-----------+
| nombre    |
+-----------+
| BRENDA    |
| OSCAR     |
| JOSE      |
| LUIS      |
| LUIS      |
| DANIEL    |
| JAQUELINE |
| ROMAN     |
| BLAS      |
| JESSICA   |
| DIANA     |
| RICARDO   |
| VALENTINA |
| BRENDA    |
| LUCIA     |
| JUAN      |
| ELPIDIO   |
| JESSICA   |
| LETICIA   |
| LUIS      |
| HUGO      |
+-----------+

--  Calcular el saldo maximo de los usuarios de sexo "Mujer"=='M'

MariaDB [db_operador]> SELECT MAX(saldo) FROM tblUsuarios WHERE sexo='M';
+------------+
| MAX(saldo) |
+------------+
|        500 |
+------------+

-- Listar los usuarios por nombre, sexo y saldo

MariaDB [db_operador]> SELECT nombre,sexo,saldo FROM tblUsuarios;
+-----------+------+-------+
| nombre    | sexo | saldo |
+-----------+------+-------+
| BRENDA    | M    |   100 |
| OSCAR     | H    |     0 |
| JOSE      | H    |   150 |
| LUIS      | H    |    50 |
| LUIS      | H    |    50 |
| DANIEL    | H    |   100 |
| JAQUELINE | M    |     0 |
| ROMAN     | H    |    50 |
| BLAS      | H    |   100 |
| JESSICA   | M    |   500 |
| DIANA     | M    |   100 |
| RICARDO   | H    |   150 |
| VALENTINA | M    |    50 |
| BRENDA    | M    |   150 |
| LUCIA     | M    |     0 |
| JUAN      | H    |     0 |
| ELPIDIO   | H    |   500 |
| JESSICA   | M    |   200 |
| LETICIA   | M    |   100 |
| LUIS      | H    |   150 |
| HUGO      | H    |   500 |
+-----------+------+-------+

-- consultar el nombre, sexo y saldo de los usuarios que tengan el maximo saldo

MariaDB [db_operador]> SELECT nombre,sexo,saldo FROM tblUsuarios WHERE saldo IN(SELECT MAX(saldo) FROM tblUsuarios);
+---------+------+-------+
| nombre  | sexo | saldo |
+---------+------+-------+
| JESSICA | M    |   500 |
| ELPIDIO | H    |   500 |
| HUGO    | H    |   500 |
+---------+------+-------+

--Listar nombre y telefono de los usuarios con el telefono Nokia, Blackberry y Sony

MariaDB [db_operador]> SELECT nombre, telefono FROM tblUsuarios WHERE marca IN('NOKIA','BLACKBERRY','SONY');
+-----------+--------------+
| nombre    | telefono     |
+-----------+--------------+
| JOSE      | 655-143-3922 |
| LUIS      | 655-100-8260 |
| DANIEL    | 655-145-2586 |
| JAQUELINE | 655-330-5514 |
| DIANA     | 655-143-3952 |
| VALENTINA | 655-137-4253 |
| LUCIA     | 655-145-4992 |
| JESSICA   | 655-330-5143 |
| LETICIA   | 655-143-4019 |
| LUIS      | 655-100-5085 |
+-----------+--------------+

--contar los usuarios sin saldo o inactivos

MariaDB [db_operador]> SELECT COUNT(*) FROM tblUsuarios WHERE NOT activo OR saldo <= 0;
+----------+
| COUNT(*) |
+----------+
|        7 |
+----------+

-- Listar el login de los usuarios con nivel 1,2 y/o 3

MariaDB [db_operador]> SELECT usuario FROM tblUsuarios WHERE nivel IN(1,2,3);
+---------+
| usuario |
+---------+
| BRE2271 |
| OSC4677 |
| JOS7086 |
| LUI7072 |
| ROM6520 |
| JES4752 |
| DIA6570 |
| RIC8283 |
| BRE8106 |
| LUC4982 |
| ELP2984 |
| JES9640 |
| LET4015 |
| LUI1076 |
| HUG5441 |
+---------+

-- ................................................................................. SEGUNDA PARTE DEL TALLER SOBRE db_operadores .................................................................................

--Listar los números de teléfono con saldo menor o igual a 300
SELECT telefono FROM tblUsuarios WHERE saldo <= 300;

MariaDB [db_operador]> SELECT telefono FROM tblUsuarios WHERE saldo <= 300;
+--------------+
| telefono     |
+--------------+
| 655-330-5736 |
| 655-143-4181 |
| 655-143-3922 |
| 655-137-1279 |
| 655-100-8260 |
| 655-145-2586 |
| 655-330-5514 |
| 655-330-3263 |
| 655-330-3871 |
| 655-143-3952 |
| 655-145-6049 |
| 655-137-4253 |
| 655-100-1351 |
| 655-145-4992 |
| 655-100-6517 |
| 655-330-5143 |
| 655-143-4019 |
| 655-100-5085 |
+--------------+

--Calcular la suma de los saldos de los usuarios del operador NEXTEL
SELECT SUM(saldo) FROM tblUsuarios WHERE operador = 'NEXTEL';

MariaDB [db_operador]> SELECT SUM(saldo) FROM tblUsuarios WHERE operador = 'NEXTEL';
+------------+
| SUM(saldo) |
+------------+
|        150 |
+------------+

--Contar el número de usuarios por operador
SELECT operador, COUNT(*) FROM tblUsuarios GROUP BY operador;

MariaDB [db_operador]> SELECT operador, COUNT(*) FROM tblUsuarios GROUP BY operador;
+----------+----------+
| operador | COUNT(*) |
+----------+----------+
| AT&T     |        2 |
| AXEL     |        2 |
| IUSACELL |        6 |
| MOVISTAR |        2 |
| NEXTEL   |        1 |
| TELCEL   |        3 |
| UNEFON   |        5 |
+----------+----------+

--Contar el número de usuarios por nivel
SELECT nivel, COUNT(*) FROM tblUsuarios GROUP BY nivel;

MariaDB [db_operador]> SELECT nivel, COUNT(*) FROM tblUsuarios GROUP BY nivel;
+-------+----------+
| nivel | COUNT(*) |
+-------+----------+
|     0 |        6 |
|     1 |        4 |
|     2 |        5 |
|     3 |        6 |
+-------+----------+

--Listar el login de los usuarios con nivel 2
SELECT usuario FROM tblUsuarios WHERE nivel = 2;

MariaDB [db_operador]> SELECT usuario FROM tblUsuarios WHERE nivel = 2;
+---------+
| usuario |
+---------+
| BRE2271 |
| ROM6520 |
| RIC8283 |
| LET4015 |
| HUG5441 |
+---------+

--Mostrar el email de los usuarios que usan gmail
SELECT email FROM tblUsuarios WHERE email LIKE '%gmail.com';

MariaDB [db_operador]> SELECT email FROM tblUsuarios WHERE email LIKE '%gmail.com';
+---------------------+
| email               |
+---------------------+
| oscar@gmail.com     |
| francisco@gmail.com |
| roman@gmail.com     |
| brenda2@gmail.com   |
| lucia@gmail.com     |
+---------------------+

--Listar nombre y teléfono de los usuarios con teléfono LG, SAMSUNG o MOTOROLA
SELECT nombre, telefono FROM tblUsuarios WHERE marca IN('LG', 'SAMSUNG', 'MOTOROLA');

MariaDB [db_operador]> SELECT nombre, telefono FROM tblUsuarios WHERE marca IN('LG', 'SAMSUNG', 'MOTOROLA');
+---------+--------------+
| nombre  | telefono     |
+---------+--------------+
| BRENDA  | 655-330-5736 |
| OSCAR   | 655-143-4181 |
| LUIS    | 655-137-1279 |
| ROMAN   | 655-330-3263 |
| BLAS    | 655-330-3871 |
| JESSICA | 655-143-6861 |
| RICARDO | 655-145-6049 |
| BRENDA  | 655-100-1351 |
| JUAN    | 655-100-6517 |
| ELPIDIO | 655-145-9938 |
| HUGO    | 655-137-3935 |
+---------+--------------+

-- ................................................................................. TERCERA PARTE DEL TALLER SOBRE el DataBase db_operadores .................................................................................

-- 1.  Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG o SAMSUNG
MariaDB [db_operador]> SELECT nombre, telefono FROM tblUsuarios
    -> WHERE (marca != 'LG' AND marca != 'SAMSUNG');
+-----------+--------------+
| nombre    | telefono     |
+-----------+--------------+
| JOSE      | 655-143-3922 |
| LUIS      | 655-100-8260 |
| DANIEL    | 655-145-2586 |
| JAQUELINE | 655-330-5514 |
| DIANA     | 655-143-3952 |
| RICARDO   | 655-145-6049 |
| VALENTINA | 655-137-4253 |
| BRENDA    | 655-100-1351 |
| LUCIA     | 655-145-4992 |
| ELPIDIO   | 655-145-9938 |
| JESSICA   | 655-330-5143 |
| LETICIA   | 655-143-4019 |
| LUIS      | 655-100-5085 |
| HUGO      | 655-137-3935 |
+-----------+--------------+
-- 2.  Listar el login y teléfono de los usuarios con operador telefónico IUSACELL
MariaDB [db_operador]> SELECT usuario, telefono
    -> FROM tblUsuarios
    -> WHERE (operador = 'IUSACELL');
+---------+--------------+
| usuario | telefono     |
+---------+--------------+
| BRE2271 | 655-330-5736 |
| LUI7072 | 655-100-8260 |
| ROM6520 | 655-330-3263 |
| RIC8283 | 655-145-6049 |
| LUC4982 | 655-145-4992 |
| JES9640 | 655-330-5143 |
+---------+--------------+
-- 3.  Listar el login y teléfono de los usuarios con operador telefónico que no sea TELCEL
MariaDB [db_operador]> SELECT usuario, telefono FROM tblUsuarios
    -> WHERE operador != 'TELCEL';
+---------+--------------+
| usuario | telefono     |
+---------+--------------+
| BRE2271 | 655-330-5736 |
| JOS7086 | 655-143-3922 |
| LUI7072 | 655-100-8260 |
| DAN2832 | 655-145-2586 |
| JAQ5351 | 655-330-5514 |
| ROM6520 | 655-330-3263 |
| BLA9739 | 655-330-3871 |
| DIA6570 | 655-143-3952 |
| RIC8283 | 655-145-6049 |
| VAL6882 | 655-137-4253 |
| BRE8106 | 655-100-1351 |
| LUC4982 | 655-145-4992 |
| JUA2337 | 655-100-6517 |
| ELP2984 | 655-145-9938 |
| JES9640 | 655-330-5143 |
| LET4015 | 655-143-4019 |
| LUI1076 | 655-100-5085 |
| HUG5441 | 655-137-3935 |
+---------+--------------+
-- 4.  Calcular el saldo promedio de los usuarios que tienen teléfono marca NOKIA
--¿Como hallar un promedio? AVG()
MariaDB [db_operador]> SELECT marca, AVG(saldo)
    -> FROM tblUsuarios
    -> GROUP BY marca;
+------------+------------+
| marca      | AVG(saldo) |
+------------+------------+
| BLACKBERRY |       37.5 |
| LG         |         50 |
| MOTOROLA   |        325 |
| NOKIA      |        100 |
| SAMSUNG    |      162.5 |
| SONY       |      137.5 |
+------------+------------+
--¿Como Renombrar la columna que trae los promedios para que sea mas diciente? AS 'Nuevo Nombre'
MariaDB [db_operador]> SELECT marca, AVG(saldo) AS 'Promedio_Saldo'
    -> FROM tblUsuarios
    -> GROUP BY marca;
+------------+----------------+
| marca      | Promedio_Saldo |
+------------+----------------+
| BLACKBERRY |           37.5 |
| LG         |             50 |
| MOTOROLA   |            325 |
| NOKIA      |            100 |
| SAMSUNG    |          162.5 |
| SONY       |          137.5 |
+------------+----------------+
-- ¿Como traer solo el promedio de una marca? No hay de Agrupar marcas, solo necesitamos una, asi solo WHERE
MariaDB [db_operador]> SELECT marca, AVG(saldo) AS 'Promedio_Saldo'
    -> FROM tblUsuarios
    -> WHERE marca = 'NOKIA';
+-------+----------------+
| marca | Promedio_Saldo |
+-------+----------------+
| NOKIA |            100 |
+-------+----------------+
-- 5.  Listar el login y teléfono de los usuarios con operador telefónico IUSACELL o AXEL
MariaDB [db_operador]> SELECT usuario, telefono FROM tblUsuarios WHERE (operador='IUSACELL' OR operador='AXEL');
+---------+--------------+
| usuario | telefono     |
+---------+--------------+
| BRE2271 | 655-330-5736 |
| LUI7072 | 655-100-8260 |
| JAQ5351 | 655-330-5514 |
| ROM6520 | 655-330-3263 |
| RIC8283 | 655-145-6049 |
| LUC4982 | 655-145-4992 |
| JUA2337 | 655-100-6517 |
| JES9640 | 655-330-5143 |
+---------+--------------+
-- 6.  Mostrar el email de los usuarios que no usan yahoo
MariaDB [db_operador]> SELECT nombre, email FROM tblUsuarios WHERE email NOT LIKE '%yahoo.com';
+-----------+-----------------------+
| nombre    | email                 |
+-----------+-----------------------+
| BRENDA    | brenda@live.com       |
| OSCAR     | oscar@gmail.com       |
| JOSE      | francisco@gmail.com   |
| LUIS      | enrique@outlook.com   |
| LUIS      | luis@hotmail.com      |
| DANIEL    | daniel@outlook.com    |
| JAQUELINE | jaqueline@outlook.com |
| ROMAN     | roman@gmail.com       |
| BLAS      | blas@hotmail.com      |
| JESSICA   | jessica@hotmail.com   |
| DIANA     | diana@live.com        |
| RICARDO   | ricardo@hotmail.com   |
| VALENTINA | valentina@live.com    |
| BRENDA    | brenda2@gmail.com     |
| LUCIA     | lucia@gmail.com       |
| JUAN      | juan@outlook.com      |
| ELPIDIO   | elpidio@outlook.com   |
| JESSICA   | jessica2@live.com     |
| LUIS      | luis2@live.com        |
| HUGO      | hugo@live.com         |
+-----------+-----------------------+
-- 7.  Listar el login y teléfono de los usuarios con operador telefónico que no sea TELCEL o IUSACELL
MariaDB [db_operador]> SELECT usuario, telefono, operador FROM tblUsuarios WHERE (operador!='TELCEL' AND operador!='IUSACELL');
+---------+--------------+----------+
| usuario | telefono     | operador |
+---------+--------------+----------+
| JOS7086 | 655-143-3922 | MOVISTAR |
| DAN2832 | 655-145-2586 | UNEFON   |
| JAQ5351 | 655-330-5514 | AXEL     |
| BLA9739 | 655-330-3871 | UNEFON   |
| DIA6570 | 655-143-3952 | UNEFON   |
| VAL6882 | 655-137-4253 | AT&T     |
| BRE8106 | 655-100-1351 | NEXTEL   |
| JUA2337 | 655-100-6517 | AXEL     |
| ELP2984 | 655-145-9938 | MOVISTAR |
| LET4015 | 655-143-4019 | UNEFON   |
| LUI1076 | 655-100-5085 | UNEFON   |
| HUG5441 | 655-137-3935 | AT&T     |
+---------+--------------+----------+
-- 8.  Listar el login y teléfono de los usuarios con operador telefónico UNEFON
MariaDB [db_operador]> SELECT usuario, telefono, operador FROM tblUsuarios
    -> WHERE operador = 'UNEFON';
+---------+--------------+----------+
| usuario | telefono     | operador |
+---------+--------------+----------+
| DAN2832 | 655-145-2586 | UNEFON   |
| BLA9739 | 655-330-3871 | UNEFON   |
| DIA6570 | 655-143-3952 | UNEFON   |
| LET4015 | 655-143-4019 | UNEFON   |
| LUI1076 | 655-100-5085 | UNEFON   |
+---------+--------------+----------+
-- 9.  Listar las diferentes marcas de celular en orden alfabético descendentemente
MariaDB [db_operador]> SELECT marca FROM tblUsuarios ORDER BY marca ASC;
+------------+
| marca      |
+------------+
| BLACKBERRY |
| BLACKBERRY |
| BLACKBERRY |
| BLACKBERRY |
| LG         |
| LG         |
| LG         |
| MOTOROLA   |
| MOTOROLA   |
| MOTOROLA   |
| MOTOROLA   |
| NOKIA      |
| NOKIA      |
| SAMSUNG    |
| SAMSUNG    |
| SAMSUNG    |
| SAMSUNG    |
| SONY       |
| SONY       |
| SONY       |
| SONY       |
+------------+

MariaDB [db_operador]> SELECT marca FROM tblUsuarios GROUP BY marca ORDER BY marca ASC ;
+------------+
| marca      |
+------------+
| BLACKBERRY |
| LG         |
| MOTOROLA   |
| NOKIA      |
| SAMSUNG    |
| SONY       |
+------------+
-- 10. Listar las diferentes operadores en orden alfabético aleatorio
MariaDB [db_operador]> SELECT marca FROM tblUsuarios GROUP BY marca ORDER BY RAND();
+------------+
| marca      |
+------------+
| LG         |
| NOKIA      |
| SONY       |
| BLACKBERRY |
| SAMSUNG    |
| MOTOROLA   |
+------------+
-- 11. Listar el login de los usuarios con nivel 0 o 2
MariaDB [db_operador]> SELECT usuario, nivel FROM tblUsuarios WHERE (nivel=0 OR nivel=2);
+---------+-------+
| usuario | nivel |
+---------+-------+
| BRE2271 |     2 |
| LUI6115 |     0 |
| DAN2832 |     0 |
| JAQ5351 |     0 |
| ROM6520 |     2 |
| BLA9739 |     0 |
| RIC8283 |     2 |
| VAL6882 |     0 |
| JUA2337 |     0 |
| LET4015 |     2 |
| HUG5441 |     2 |
+---------+-------+
-- 12. Calcular el saldo promedio de los usuarios que tienen teléfono marca LG
MariaDB [db_operador]> SELECT marca, AVG(saldo) AS 'Promedio_Saldo'
    -> FROM tblUsuarios
    -> WHERE marca = 'LG';
+-------+----------------+
| marca | Promedio_Saldo |
+-------+----------------+
| LG    |             50 |
+-------+----------------+
-- 13. Listar el login de los usuarios con nivel 1 o 3
MariaDB [db_operador]> SELECT usuario, nivel FROM tblUsuarios WHERE nivel IN (1,3);
+---------+-------+
| usuario | nivel |
+---------+-------+
| OSC4677 |     3 |
| JOS7086 |     3 |
| LUI7072 |     1 |
| JES4752 |     1 |
| DIA6570 |     1 |
| BRE8106 |     3 |
| LUC4982 |     3 |
| ELP2984 |     1 |
| JES9640 |     3 |
| LUI1076 |     3 |
+---------+-------+
-- 14. Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca BLACKBERRY
MariaDB [db_operador]> SELECT nombre, telefono, marca FROM tblUsuarios WHERE marca NOT LIKE 'BLACKBERRY';
+---------+--------------+----------+
| nombre  | telefono     | marca    |
+---------+--------------+----------+
| BRENDA  | 655-330-5736 | SAMSUNG  |
| OSCAR   | 655-143-4181 | LG       |
| JOSE    | 655-143-3922 | NOKIA    |
| LUIS    | 655-137-1279 | SAMSUNG  |
| LUIS    | 655-100-8260 | NOKIA    |
| DANIEL  | 655-145-2586 | SONY     |
| ROMAN   | 655-330-3263 | LG       |
| BLAS    | 655-330-3871 | LG       |
| JESSICA | 655-143-6861 | SAMSUNG  |
| DIANA   | 655-143-3952 | SONY     |
| RICARDO | 655-145-6049 | MOTOROLA |
| BRENDA  | 655-100-1351 | MOTOROLA |
| JUAN    | 655-100-6517 | SAMSUNG  |
| ELPIDIO | 655-145-9938 | MOTOROLA |
| JESSICA | 655-330-5143 | SONY     |
| LUIS    | 655-100-5085 | SONY     |
| HUGO    | 655-137-3935 | MOTOROLA |
+---------+--------------+----------+
-- 15. Listar el login de los usuarios con nivel 3
MariaDB [db_operador]> SELECT usuario, nivel FROM tblUsuarios WHERE nivel IN(3);
+---------+-------+
| usuario | nivel |
+---------+-------+
| OSC4677 |     3 |
| JOS7086 |     3 |
| BRE8106 |     3 |
| LUC4982 |     3 |
| JES9640 |     3 |
| LUI1076 |     3 |
+---------+-------+
-- 16. Listar el login de los usuarios con nivel 0
MariaDB [db_operador]> SELECT usuario, nivel FROM tblUsuarios WHERE nivel IN(0);
+---------+-------+
| usuario | nivel |
+---------+-------+
| LUI6115 |     0 |
| DAN2832 |     0 |
| JAQ5351 |     0 |
| BLA9739 |     0 |
| VAL6882 |     0 |
| JUA2337 |     0 |
+---------+-------+
-- 17. Listar el login de los usuarios con nivel 1
MariaDB [db_operador]> SELECT usuario, nivel FROM tblUsuarios WHERE nivel IN(1);
+---------+-------+
| usuario | nivel |
+---------+-------+
| LUI7072 |     1 |
| JES4752 |     1 |
| DIA6570 |     1 |
| ELP2984 |     1 |
+---------+-------+
-- 18. Contar el número de usuarios por sexo
MariaDB [db_operador]> SELECT sexo, COUNT(*) FROM tblUsuarios GROUP BY sexo;
+------+----------+
| sexo | COUNT(*) |
+------+----------+
| H    |       12 |
| M    |        9 |
+------+----------+
-- 19. Listar el login y teléfono de los usuarios con operador telefónico AT&T
MariaDB [db_operador]> SELECT usuario, telefono, operador FROM tblUsuarios WHERE operador LIKE 'AT&T';
+---------+--------------+----------+
| usuario | telefono     | operador |
+---------+--------------+----------+
| VAL6882 | 655-137-4253 | AT&T     |
| HUG5441 | 655-137-3935 | AT&T     |
+---------+--------------+----------+
-- 20. Listar las diferentes operadores en orden alfabético descendentemente
MariaDB [db_operador]> SELECT operador FROM tblUsuarios ORDER BY operador DESC;
+----------+
| operador |
+----------+
| UNEFON   |
| UNEFON   |
| UNEFON   |
| UNEFON   |
| UNEFON   |
| TELCEL   |
| TELCEL   |
| TELCEL   |
| NEXTEL   |
| MOVISTAR |
| MOVISTAR |
| IUSACELL |
| IUSACELL |
| IUSACELL |
| IUSACELL |
| IUSACELL |
| IUSACELL |
| AXEL     |
| AXEL     |
| AT&T     |
| AT&T     |
+----------+
21 rows in set (0.000 sec)

MariaDB [db_operador]> SELECT operador FROM tblUsuarios GROUP BY operador ORDER BY operador DESC;
+----------+
| operador |
+----------+
| UNEFON   |
| TELCEL   |
| NEXTEL   |
| MOVISTAR |
| IUSACELL |
| AXEL     |
| AT&T     |
+----------+
7 rows in set (0.000 sec)
-- 21. Listar el login de los usuarios inactivos
MariaDB [db_operador]> SELECT usuario, nombre, activo FROM tblUsuarios WHERE activo IN(0);
+---------+-----------+--------+
| usuario | nombre    | activo |
+---------+-----------+--------+
| LUI7072 | LUIS      |      0 |
| DIA6570 | DIANA     |      0 |
| VAL6882 | VALENTINA |      0 |
| JUA2337 | JUAN      |      0 |
+---------+-----------+--------+
-- 22. Listar los números de teléfono sin saldo
MariaDB [db_operador]> SELECT telefono, saldo FROM tblUsuarios WHERE saldo IN(0);
+--------------+-------+
| telefono     | saldo |
+--------------+-------+
| 655-143-4181 |     0 |
| 655-330-5514 |     0 |
| 655-145-4992 |     0 |
| 655-100-6517 |     0 |
+--------------+-------+
-- 23. Calcular el saldo mínimo de los usuarios de sexo “Hombre”
MariaDB [db_operador]> SELECT usuario, nombre, sexo, min(saldo) AS 'saldo_minimo'
    -> FROM tblUsuarios
    -> WHERE sexo LIKE 'H';
+---------+--------+------+--------------+
| usuario | nombre | sexo | saldo_minimo |
+---------+--------+------+--------------+
| OSC4677 | OSCAR  | H    |            0 |
+---------+--------+------+--------------+

MariaDB [db_operador]> SELECT usuario, nombre, sexo, saldo
    -> FROM tblUsuarios
    -> WHERE sexo LIKE 'H'
    -> AND saldo = 0;
+---------+--------+------+-------+
| usuario | nombre | sexo | saldo |
+---------+--------+------+-------+
| OSC4677 | OSCAR  | H    |     0 |
| JUA2337 | JUAN   | H    |     0 |
+---------+--------+------+-------+

-- 24. Listar los números de teléfono con saldo mayor a 300
MariaDB [db_operador]> SELECT nombre, telefono, saldo FROM tblUsuarios WHERE saldo > 300;
+---------+--------------+-------+
| nombre  | telefono     | saldo |
+---------+--------------+-------+
| JESSICA | 655-143-6861 |   500 |
| ELPIDIO | 655-145-9938 |   500 |
| HUGO    | 655-137-3935 |   500 |
+---------+--------------+-------+

-- 25. Contar el número de usuarios por marca de teléfono
MariaDB [db_operador]> SELECT marca, COUNT(*) AS 'Cantidad_Marca' FROM tblUsuarios GROUP BY marca ORDER BY marca DESC;
+------------+----------------+
| marca      | Cantidad_Marca |
+------------+----------------+
| SONY       |              4 |
| SAMSUNG    |              4 |
| NOKIA      |              2 |
| MOTOROLA   |              4 |
| LG         |              3 |
| BLACKBERRY |              4 |
+------------+----------------+

-- 26. Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG
MariaDB [db_operador]> SELECT nombre, telefono, marca FROM tblUsuarios WHERE marca NOT LIKE 'LG';
+-----------+--------------+------------+
| nombre    | telefono     | marca      |
+-----------+--------------+------------+
| BRENDA    | 655-330-5736 | SAMSUNG    |
| JOSE      | 655-143-3922 | NOKIA      |
| LUIS      | 655-137-1279 | SAMSUNG    |
| LUIS      | 655-100-8260 | NOKIA      |
| DANIEL    | 655-145-2586 | SONY       |
| JAQUELINE | 655-330-5514 | BLACKBERRY |
| JESSICA   | 655-143-6861 | SAMSUNG    |
| DIANA     | 655-143-3952 | SONY       |
| RICARDO   | 655-145-6049 | MOTOROLA   |
| VALENTINA | 655-137-4253 | BLACKBERRY |
| BRENDA    | 655-100-1351 | MOTOROLA   |
| LUCIA     | 655-145-4992 | BLACKBERRY |
| JUAN      | 655-100-6517 | SAMSUNG    |
| ELPIDIO   | 655-145-9938 | MOTOROLA   |
| JESSICA   | 655-330-5143 | SONY       |
| LETICIA   | 655-143-4019 | BLACKBERRY |
| LUIS      | 655-100-5085 | SONY       |
| HUGO      | 655-137-3935 | MOTOROLA   |
+-----------+--------------+------------+

-- 27. Listar las diferentes operadores en orden alfabético ascendentemente
MariaDB [db_operador]> SELECT operador FROM tblUsuarios GROUP BY operador ORDER BY operador ASC;
+----------+
| operador |
+----------+
| AT&T     |
| AXEL     |
| IUSACELL |
| MOVISTAR |
| NEXTEL   |
| TELCEL   |
| UNEFON   |
+----------+

-- 28. Calcular la suma de los saldos de los usuarios de la operador telefónica UNEFON
MariaDB [db_operador]> SELECT usuario, operador, saldo FROM tblUsuarios WHERE operador LIKE 'UNEFON';
+---------+----------+-------+
| usuario | operador | saldo |
+---------+----------+-------+
| DAN2832 | UNEFON   |   100 |
| BLA9739 | UNEFON   |   100 |
| DIA6570 | UNEFON   |   100 |
| LET4015 | UNEFON   |   100 |
| LUI1076 | UNEFON   |   150 |
+---------+----------+-------+
5 rows in set (0.000 sec)

MariaDB [db_operador]> SELECT operador, SUM(saldo) AS 'Total' FROM tblUsuarios WHERE operador LIKE 'UNEFON';
+----------+-------+
| operador | Total |
+----------+-------+
| UNEFON   |   550 |
+----------+-------+
1 row in set (0.000 sec)

-- 29. Mostrar el email de los usuarios que usan hotmail
MariaDB [db_operador]> SELECT usuario, email FROM tblUsuarios WHERE email LIKE '%hotmail.com';
+---------+---------------------+
| usuario | email               |
+---------+---------------------+
| LUI7072 | luis@hotmail.com    |
| BLA9739 | blas@hotmail.com    |
| JES4752 | jessica@hotmail.com |
| RIC8283 | ricardo@hotmail.com |
+---------+---------------------+

-- 30. Listar los nombres de los usuarios sin saldo o inactivos
MariaDB [db_operador]> SELECT usuario, nombre, saldo, activo FROM tblUsuarios WHERE (saldo = 0 OR activo = 0);
+---------+-----------+-------+--------+
| usuario | nombre    | saldo | activo |
+---------+-----------+-------+--------+
| OSC4677 | OSCAR     |     0 |      1 |
| LUI7072 | LUIS      |    50 |      0 |
| JAQ5351 | JAQUELINE |     0 |      1 |
| DIA6570 | DIANA     |   100 |      0 |
| VAL6882 | VALENTINA |    50 |      0 |
| LUC4982 | LUCIA     |     0 |      1 |
| JUA2337 | JUAN      |     0 |      0 |
+---------+-----------+-------+--------+

-- 31. Listar el login y teléfono de los usuarios con operador telefónico IUSACELL o TELCEL
MariaDB [db_operador]> SELECT usuario, nombre, telefono, operador
    -> FROM tblUsuarios
    -> WHERE operador IN('IUSACELL','UNEFON');
+---------+---------+--------------+----------+
| usuario | nombre  | telefono     | operador |
+---------+---------+--------------+----------+
| BRE2271 | BRENDA  | 655-330-5736 | IUSACELL |
| LUI7072 | LUIS    | 655-100-8260 | IUSACELL |
| DAN2832 | DANIEL  | 655-145-2586 | UNEFON   |
| ROM6520 | ROMAN   | 655-330-3263 | IUSACELL |
| BLA9739 | BLAS    | 655-330-3871 | UNEFON   |
| DIA6570 | DIANA   | 655-143-3952 | UNEFON   |
| RIC8283 | RICARDO | 655-145-6049 | IUSACELL |
| LUC4982 | LUCIA   | 655-145-4992 | IUSACELL |
| JES9640 | JESSICA | 655-330-5143 | IUSACELL |
| LET4015 | LETICIA | 655-143-4019 | UNEFON   |
| LUI1076 | LUIS    | 655-100-5085 | UNEFON   |
+---------+---------+--------------+----------+
11 rows in set (0.000 sec)

MariaDB [db_operador]> SELECT usuario, nombre, telefono, operador
    -> FROM tblUsuarios
    -> WHERE operador LIKE 'IUSACELL' OR operador LIKE 'UNEFON';
+---------+---------+--------------+----------+
| usuario | nombre  | telefono     | operador |
+---------+---------+--------------+----------+
| BRE2271 | BRENDA  | 655-330-5736 | IUSACELL |
| LUI7072 | LUIS    | 655-100-8260 | IUSACELL |
| DAN2832 | DANIEL  | 655-145-2586 | UNEFON   |
| ROM6520 | ROMAN   | 655-330-3263 | IUSACELL |
| BLA9739 | BLAS    | 655-330-3871 | UNEFON   |
| DIA6570 | DIANA   | 655-143-3952 | UNEFON   |
| RIC8283 | RICARDO | 655-145-6049 | IUSACELL |
| LUC4982 | LUCIA   | 655-145-4992 | IUSACELL |
| JES9640 | JESSICA | 655-330-5143 | IUSACELL |
| LET4015 | LETICIA | 655-143-4019 | UNEFON   |
| LUI1076 | LUIS    | 655-100-5085 | UNEFON   |
+---------+---------+--------------+----------+
11 rows in set (0.000 sec)

MariaDB [db_operador]>

-- 32. Listar las diferentes marcas de celular en orden alfabético ascendentemente
MariaDB [db_operador]> SELECT marca FROM tblUsuarios GROUP BY marca ORDER BY marca ASC;
+------------+
| marca      |
+------------+
| BLACKBERRY |
| LG         |
| MOTOROLA   |
| NOKIA      |
| SAMSUNG    |
| SONY       |
+------------+
6 rows in set (0.000 sec)

-- 33. Listar las diferentes marcas de celular en orden alfabético aleatorio
MariaDB [db_operador]> SELECT marca FROM tblUsuarios GROUP BY marca ORDER BY RAND();
+------------+
| marca      |
+------------+
| SAMSUNG    |
| MOTOROLA   |
| SONY       |
| BLACKBERRY |
| NOKIA      |
| LG         |
+------------+

-- 34. Listar el login y teléfono de los usuarios con operador telefónico IUSACELL o UNEFON
MariaDB [db_operador]> SELECT usuario, nombre, telefono, operador FROM tblUsuarios WHERE operador IN('IUSACELL','UNEFON');
+---------+---------+--------------+----------+
| usuario | nombre  | telefono     | operador |
+---------+---------+--------------+----------+
| BRE2271 | BRENDA  | 655-330-5736 | IUSACELL |
| LUI7072 | LUIS    | 655-100-8260 | IUSACELL |
| DAN2832 | DANIEL  | 655-145-2586 | UNEFON   |
| ROM6520 | ROMAN   | 655-330-3263 | IUSACELL |
| BLA9739 | BLAS    | 655-330-3871 | UNEFON   |
| DIA6570 | DIANA   | 655-143-3952 | UNEFON   |
| RIC8283 | RICARDO | 655-145-6049 | IUSACELL |
| LUC4982 | LUCIA   | 655-145-4992 | IUSACELL |
| JES9640 | JESSICA | 655-330-5143 | IUSACELL |
| LET4015 | LETICIA | 655-143-4019 | UNEFON   |
| LUI1076 | LUIS    | 655-100-5085 | UNEFON   |
+---------+---------+--------------+----------+

-- 35. Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca MOTOROLA o NOKIA
MariaDB [db_operador]> SELECT usuario, nombre, telefono, marca FROM tblUsuarios WHERE marca IN('MOTOROLA','NOKIA');
+---------+---------+--------------+----------+
| usuario | nombre  | telefono     | marca    |
+---------+---------+--------------+----------+
| JOS7086 | JOSE    | 655-143-3922 | NOKIA    |
| LUI7072 | LUIS    | 655-100-8260 | NOKIA    |
| RIC8283 | RICARDO | 655-145-6049 | MOTOROLA |
| BRE8106 | BRENDA  | 655-100-1351 | MOTOROLA |
| ELP2984 | ELPIDIO | 655-145-9938 | MOTOROLA |
| HUG5441 | HUGO    | 655-137-3935 | MOTOROLA |
+---------+---------+--------------+----------+

-- 36. Calcular la suma de los saldos de los usuarios del operador telefónica TELCEL
MariaDB [db_operador]> SELECT operador, SUM(saldo) AS 'Total_Saldo' FROM tblUsuarios WHERE operador LIKE 'TELCEL';
+----------+-------------+
| operador | Total_Saldo |
+----------+-------------+
| TELCEL   |         550 |
+----------+-------------+

-- ................................................................................. CUARTA PARTE DEL TALLER SOBRE db_operadores .................................................................................

-- Proponga 4 consultas diferentes a las expuestas anteriormente.

-- el minimo maximo media y suma de saldo de un operador especifico en orden acendente
MariaDB [db_operador]> SELECT operador, min(saldo) AS 'Saldo Minimo', max(saldo) AS 'Saldo Maximo', AVG(saldo) AS 'Saldo Medio', sum(saldo) AS 'Total Saldo'
    -> FROM tblUsuarios
    -> GROUP BY operador
    -> ORDER BY operador ASC;
+----------+--------------+--------------+--------------------+-------------+
| operador | Saldo Minimo | Saldo Maximo | Saldo Medio        | Total Saldo |
+----------+--------------+--------------+--------------------+-------------+
| AT&T     |           50 |          500 |                275 |         550 |
| AXEL     |            0 |            0 |                  0 |           0 |
| IUSACELL |            0 |          200 |  91.66666666666667 |         550 |
| MOVISTAR |          150 |          500 |                325 |         650 |
| NEXTEL   |          150 |          150 |                150 |         150 |
| TELCEL   |            0 |          500 | 183.33333333333334 |         550 |
| UNEFON   |          100 |          150 |                110 |         550 |
+----------+--------------+--------------+--------------------+-------------+
7 rows in set (0.001 sec)

-- Cantida de correos especificos en orden desendente
MariaDB [db_operador]> SELECT email, COUNT(*) AS 'Cantidad'
    -> FROM tblUsuarios
    -> GROUP BY email
    -> ORDER BY email DESC;
+-----------------------+----------+
| email                 | Cantidad |
+-----------------------+----------+
| valentina@live.com    |        1 |
| roman@gmail.com       |        1 |
| ricardo@hotmail.com   |        1 |
| oscar@gmail.com       |        1 |
| luis@hotmail.com      |        1 |
| luis2@live.com        |        1 |
| lucia@gmail.com       |        1 |
| leticia@yahoo.com     |        1 |
| juan@outlook.com      |        1 |
| jessica@hotmail.com   |        1 |
| jessica2@live.com     |        1 |
| jaqueline@outlook.com |        1 |
| hugo@live.com         |        1 |
| francisco@gmail.com   |        1 |
| enrique@outlook.com   |        1 |
| elpidio@outlook.com   |        1 |
| diana@live.com        |        1 |
| daniel@outlook.com    |        1 |
| brenda@live.com       |        1 |
| brenda2@gmail.com     |        1 |
| blas@hotmail.com      |        1 |
+-----------------------+----------+
21 rows in set (0.001 sec)

-- usuarios activos con marca y operador en orden acendentes
MariaDB [db_operador]> SELECT email, COUNT(*) AS 'Cantidad' FROM tblUsuarios WHERE email LIKE '%live.com';
+-----------------+----------+
| email           | Cantidad |
+-----------------+----------+
| brenda@live.com |        6 |
+-----------------+----------+

MariaDB [db_operador]> SELECT email, COUNT(*) AS 'Cantidad' FROM tblUsuarios WHERE email LIKE '%gmail.com';
+-----------------+----------+
| email           | Cantidad |
+-----------------+----------+
| oscar@gmail.com |        5 |
+-----------------+----------+

MariaDB [db_operador]> SELECT email, COUNT(*) AS 'Cantidad' FROM tblUsuarios WHERE email LIKE '%hotmail.com';
+------------------+----------+
| email            | Cantidad |
+------------------+----------+
| luis@hotmail.com |        4 |
+------------------+----------+
1 row in set (0.000 sec)

MariaDB [db_operador]> SELECT email, COUNT(*) AS 'Cantidad' FROM tblUsuarios WHERE email LIKE '%outlook.com';
+---------------------+----------+
| email               | Cantidad |
+---------------------+----------+
| enrique@outlook.com |        5 |
+---------------------+----------+

MariaDB [db_operador]> SELECT email, COUNT(*) AS 'Cantidad' FROM tblUsuarios WHERE email LIKE '%yahoo.com';
+-------------------+----------+
| email             | Cantidad |
+-------------------+----------+
| leticia@yahoo.com |        1 |
+-------------------+----------+
1 row in set (0.000 sec)

-- cantidad de hombres y mujeres en orden desendente

MariaDB [db_operador]> SELECT sexo, COUNT(*) AS 'Cantidad'
    -> FROM tblUsuarios
    -> GROUP BY sexo
    -> ORDER BY sexo DESC;
+------+----------+
| sexo | Cantidad |
+------+----------+
| M    |        9 |
| H    |       12 |
+------+----------+
2 rows in set (0.000 sec)
