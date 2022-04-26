-- Ing. Luis Felipe Narvaez Gomez

-- Seleccionar los pedidos con importes entre 100 y 500

SELECT *
FROM PEDIDOS
WHERE IMPORTE BETWEEN 100 AND 500;

-- Seleccionar el nombre, el primer apellico y la edad de las personas que en 
-- el primer apellido tengan la letra Z

SELECT NOMBRE, APELLIDO1, EDAD
FROM PERSONAS
WHERE lower(APELLIDO1) LIKE lower('%Z%');

-- Seleccionar el nombre, primer apellido , edad y el departamento de las personas 
-- cuyo nombre sea ANTONIO y el resultado ordenarlo por departamento.

SELECT P.NOMBRE, P.APELLIDO1, P.EDAD, D.DEPARTAMENTO
FROM PERSONAS AS P
INNER JOIN DEPARTAMENTOS AS D
ON P.DEP = D.DEP
WHERE lower(P.NOMBRE) = lower('ANTONIO')
ORDER BY D.DEP ASC;

-- De la tabla pedidos, selecciona  los pedidos de impresoras y los pedidos con un importe mayor a 500
-- Pero en este caso se separaran en dos concultas unidas por la sentencia UNION

SELECT * 
FROM PEDIDOS
WHERE lower(PRODUCTO)=lower('Impresora')

UNION

SELECT *
FROM PEDIDOS
WHERE IMPORTE>500

;

-- Selecciona los pedidos cuyo IMPORTE sea mayor que el IMPORTE medio de todos los PEDIDOS

SELECT *
FROM PEDIDOS
WHERE IMPORTE > (
	SELECT AVG(IMPORTE) FROM PEDIDOS
);

-- Selecciona el nmero de personas que tienen menos de 50 años

SELECT COUNT(*) AS 'Personas menores de 50'
FROM PERSONAS
WHERE EDAD<50;

-- Selecciona los 2 primeros pedidos que tengan un importe mayor a 80

SELECT *
FROM PEDIDOS
WHERE IMPORTE>80 LIMIT 2;

-- Seleccionar aquellos pedidos que tengan un importe de 150, 500, 600 y ordenarlos por la columna IMporte

SELECT *
FROM PEDIDOS
WHERE IMPORTE IN (150,500,600)
ORDER BY IMPORTE ASC;

-- crear una nueva tabla denominada TABLA 2
-- incluir 2 columnas:
-- Primera columna con nobre ID y de tipo numerico entero
-- Segunda Columna con nombre DATOS de tipo texto

CREATE TABLE TABLA2(
	ID INT NOT NULL,
	DATOS TEXT NOT NULL
);

-- insertar 2 nuevas filas en nuestra nueva TABLA 2

INSERT INTO TABLA2 (ID, DATOS) VALUES(1,'primer dato');
INSERT INTO TABLA2 (ID, DATOS) VALUES(2,'segundo dato');

-- Borrar todos los registros de nuestra TABLA 2

DELETE FROM TABLA2;

-- Borrar con todo y estructura de la tabla 2

DROP TABLE TABLA2;

-- Crea una tabla "SALARIOS" con los siguientes campos:
-- ID: numero entre, autoincremental y clave primaria de la tabla
-- NOMBRE: texto que no permita valores nulos
-- EDAD: numero entero y no se permiten valores nulos
-- DIRECCION: texto de 50 posiciones
-- SALARIO: numero con decimales

CREATE TABLE salarios(
	id SERIAL NOT NULL,
	nombre TEXT NOT NULL,
	edad INT NOT NULL,
	direccion VARCHAR(50) NOT NULL,
	salario DECIMAL(5,2) NOT NULL,
	CONSTRAINT PK_SALARIOS PRIMARY KEY (id)
);

-- Insertar en la tabla salarios

INSERT INTO salarios (id, nombre, edad, direccion, salario) VALUES (1,'Antonio',30,'calle 1',200.00);
INSERT INTO salarios (id, nombre, edad, direccion, salario) VALUES (2,'Juan',40,'calle 2', 300.00);

-- RENOMBRAR el tipo de dato de una columna

ALTER TABLE salarios RENAME TO salarios2;

-- Crear una nueva tabla SALARIOS con nombre de SALARIOS2
-- ID: numero entre, autoincremental y clave primaria de la tabla
-- NOMBRE: texto que no permita valores nulos
-- EDAD: numero entero
-- DIRECCION: texto de 50 posiciones
-- SALARIO: entero

CREATE TABLE salarios(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	nombre TEXT NOT NULL,
	edad INTEGER,
	direccion CHAR(50) NOT NULL,
	salario INT NOT NULL
);

--Copiar los datos de la tabla SALARIOS2 en la nueva tabla salarios1

INSERT INTO salarios (id, nombre,edad,direccion,salario) SELECT id, nombre, edad, direccion, salario FROM salarios2;

-- Borrar la tabla salarios 2

DROP TABLE salarios2;

-- Seleccionar los dos ultimos filas de la tabla  personas

SELECT *
FROM PERSONAS 
ORDER BY PER DESC 
LIMIT 2;



