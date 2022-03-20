
NOTA: Este archivo a pesar de su formato SQL, no debe correrse en software de Databases, debe abrirse en un editor de texto plano como Bloc de Notas o bien cambiar la extencion a ".txt".


--Datos del Estudiante:

-- Nombre: Ing.Luis Felipe Narvaez Gomez
-- Facultad: Ingenieria de Sistemas
-- Universidad: Santo Tomas seccional Tunja
-- Materia: Bases de Datos
-- Semestre: 2021-2

-- ................................................................................. CREAR LAS TABLAS Y LA BASE DE DATOS .................................................................................
-- Acceder a MariaDb para trabar con el motor de MySQL

C:\Users\ruiso>cd ..

C:\Users>cd..

C:\>d:

D:\>cd D:\Software\Xampp\mysql\bin

D:\Software\Xampp MySQL\mysql\bin
db_humanresources


D:\Software\Xampp\mysql\bin>mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 18
Server version: 10.4.21-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]>

-- Crear la base de datos

MariaDB [(none)]> CREATE DATABASE bd_humanresources;
Query OK, 1 row affected (0.097 sec)

-- Usar la base de datos

MariaDB [(none)]> USE bd_humanresources;
Database changed
MariaDB [bd_humanresources]>

-- dar parametros de entrada y trabajo

MariaDB [bd_humanresources]> SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
Query OK, 0 rows affected (0.010 sec)

MariaDB [bd_humanresources]> START TRANSACTION;
Query OK, 0 rows affected (0.018 sec)

MariaDB [bd_humanresources]> SET time_zone = "+00:00";
Query OK, 0 rows affected (0.002 sec)

MariaDB [bd_humanresources]>

-- Estructura de tabla para la tabla `countries`
--

MariaDB [bd_humanresources]> CREATE TABLE `countries` (
    ->   `COUNTRY_ID` varchar(2) NOT NULL,
    ->   `COUNTRY_NAME` varchar(40) DEFAULT NULL,
    ->   `REGION_ID` decimal(10,0) DEFAULT NULL
    -> ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
Query OK, 0 rows affected (0.198 sec)

MariaDB [bd_humanresources]> DESCRIBE countries
    -> ;
+--------------+---------------+------+-----+---------+-------+
| Field        | Type          | Null | Key | Default | Extra |
+--------------+---------------+------+-----+---------+-------+
| COUNTRY_ID   | varchar(2)    | NO   |     | NULL    |       |
| COUNTRY_NAME | varchar(40)   | YES  |     | NULL    |       |
| REGION_ID    | decimal(10,0) | YES  |     | NULL    |       |
+--------------+---------------+------+-----+---------+-------+
3 rows in set (0.165 sec)

MariaDB [bd_humanresources]>

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departments`
--

MariaDB [bd_humanresources]> CREATE TABLE `departments` (
    ->   `DEPARTMENT_ID` decimal(4,0) NOT NULL DEFAULT 0,
    ->   `DEPARTMENT_NAME` varchar(30) NOT NULL,
    ->   `MANAGER_ID` decimal(6,0) DEFAULT NULL,
    ->   `LOCATION_ID` decimal(4,0) DEFAULT NULL
    -> ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
Query OK, 0 rows affected (0.375 sec)

MariaDB [bd_humanresources]> DESCRIBE departments;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| DEPARTMENT_ID   | decimal(4,0) | NO   |     | 0       |       |
| DEPARTMENT_NAME | varchar(30)  | NO   |     | NULL    |       |
| MANAGER_ID      | decimal(6,0) | YES  |     | NULL    |       |
| LOCATION_ID     | decimal(4,0) | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
4 rows in set (0.005 sec)

MariaDB [bd_humanresources]>

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employees`
--

MariaDB [bd_humanresources]> CREATE TABLE `employees` (
    ->   `EMPLOYEE_ID` decimal(6,0) NOT NULL DEFAULT 0,
    ->   `FIRST_NAME` varchar(20) DEFAULT NULL,
    ->   `LAST_NAME` varchar(25) NOT NULL,
    ->   `EMAIL` varchar(25) NOT NULL,
    ->   `PHONE_NUMBER` varchar(20) DEFAULT NULL,
    ->   `HIRE_DATE` date NOT NULL,
    ->   `JOB_ID` varchar(10) NOT NULL,
    ->   `SALARY` decimal(8,2) DEFAULT NULL,
    ->   `COMMISSION_PCT` decimal(2,2) DEFAULT NULL,
    ->   `MANAGER_ID` decimal(6,0) DEFAULT NULL,
    ->   `DEPARTMENT_ID` decimal(4,0) DEFAULT NULL
    -> ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
Query OK, 0 rows affected (0.037 sec)

MariaDB [bd_humanresources]> DESCRIBE employees;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| EMPLOYEE_ID    | decimal(6,0) | NO   |     | 0       |       |
| FIRST_NAME     | varchar(20)  | YES  |     | NULL    |       |
| LAST_NAME      | varchar(25)  | NO   |     | NULL    |       |
| EMAIL          | varchar(25)  | NO   |     | NULL    |       |
| PHONE_NUMBER   | varchar(20)  | YES  |     | NULL    |       |
| HIRE_DATE      | date         | NO   |     | NULL    |       |
| JOB_ID         | varchar(10)  | NO   |     | NULL    |       |
| SALARY         | decimal(8,2) | YES  |     | NULL    |       |
| COMMISSION_PCT | decimal(2,2) | YES  |     | NULL    |       |
| MANAGER_ID     | decimal(6,0) | YES  |     | NULL    |       |
| DEPARTMENT_ID  | decimal(4,0) | YES  |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
11 rows in set (0.003 sec)

MariaDB [bd_humanresources]>

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

MariaDB [bd_humanresources]> CREATE TABLE `jobs` (
    ->   `JOB_ID` varchar(10) NOT NULL DEFAULT '',
    ->   `JOB_TITLE` varchar(35) NOT NULL,
    ->   `MIN_SALARY` decimal(6,0) DEFAULT NULL,
    ->   `MAX_SALARY` decimal(6,0) DEFAULT NULL
    -> ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
Query OK, 0 rows affected (0.050 sec)

MariaDB [bd_humanresources]> DESCRIBE jobs;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| JOB_ID     | varchar(10)  | NO   |     |         |       |
| JOB_TITLE  | varchar(35)  | NO   |     | NULL    |       |
| MIN_SALARY | decimal(6,0) | YES  |     | NULL    |       |
| MAX_SALARY | decimal(6,0) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
4 rows in set (0.005 sec)

MariaDB [bd_humanresources]>

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_history`
--

MariaDB [bd_humanresources]> CREATE TABLE `job_history` (
    ->   `EMPLOYEE_ID` decimal(6,0) NOT NULL,
    ->   `START_DATE` date NOT NULL,
    ->   `END_DATE` date NOT NULL,
    ->   `JOB_ID` varchar(10) NOT NULL,
    ->   `DEPARTMENT_ID` decimal(4,0) DEFAULT NULL
    -> ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
Query OK, 0 rows affected (0.061 sec)

MariaDB [bd_humanresources]> DESCRIBE job_history;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| EMPLOYEE_ID   | decimal(6,0) | NO   |     | NULL    |       |
| START_DATE    | date         | NO   |     | NULL    |       |
| END_DATE      | date         | NO   |     | NULL    |       |
| JOB_ID        | varchar(10)  | NO   |     | NULL    |       |
| DEPARTMENT_ID | decimal(4,0) | YES  |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
5 rows in set (0.102 sec)

MariaDB [bd_humanresources]>

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `locations`
--

MariaDB [bd_humanresources]> CREATE TABLE `locations` (
    ->   `LOCATION_ID` decimal(4,0) NOT NULL DEFAULT 0,
    ->   `STREET_ADDRESS` varchar(40) DEFAULT NULL,
    ->   `POSTAL_CODE` varchar(12) DEFAULT NULL,
    ->   `CITY` varchar(30) NOT NULL,
    ->   `STATE_PROVINCE` varchar(25) DEFAULT NULL,
    ->   `COUNTRY_ID` varchar(2) DEFAULT NULL
    -> ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
Query OK, 0 rows affected (0.141 sec)

MariaDB [bd_humanresources]> DESCRIBE locations;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| LOCATION_ID    | decimal(4,0) | NO   |     | 0       |       |
| STREET_ADDRESS | varchar(40)  | YES  |     | NULL    |       |
| POSTAL_CODE    | varchar(12)  | YES  |     | NULL    |       |
| CITY           | varchar(30)  | NO   |     | NULL    |       |
| STATE_PROVINCE | varchar(25)  | YES  |     | NULL    |       |
| COUNTRY_ID     | varchar(2)   | YES  |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
6 rows in set (0.004 sec)

MariaDB [bd_humanresources]>

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regions`
--

MariaDB [bd_humanresources]> CREATE TABLE `regions` (
    ->   `REGION_ID` decimal(5,0) NOT NULL,
    ->   `REGION_NAME` varchar(25) DEFAULT NULL
    -> ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
Query OK, 0 rows affected (0.126 sec)

MariaDB [bd_humanresources]> DESCRIBE regions;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| REGION_ID   | decimal(5,0) | NO   |     | NULL    |       |
| REGION_NAME | varchar(25)  | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+

