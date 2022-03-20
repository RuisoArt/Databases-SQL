-- Consultas de elementos de las tablas (tanto en MySQL como en PostgreSQL).

SELECT * FROM restaurante;
SELECT * FROM persona;
SELECT * FROM tipopersonaxpersona;
SELECT * FROM tipopersona;
SELECT * FROM chef;
SELECT * FROM menus;
SELECT * FROM recetas;
SELECT * FROM porcionxreceta;
SELECT * FROM porciones;
SELECT * FROM ingredientesxporcion;
SELECT * FROM ingredientes;
SELECT * FROM acompxreceta;
SELECT * FROM acompanamientos;
SELECT * FROM tipoacompanamiento;

-- Usar base de datos especifica (Consola de Comandos MariaDB MySQL).
MariaDB [(none)]> USE bd_restaurant
Database changed
MariaDB [bd_restaurant]>
-- Mostrar Tablas (Consola de Comandos MariaDB MySQL).
MariaDB [bd_restaurant]> SHOW FULL tables FROM bd_restaurant
-- Mostrar atributos de las tablas (Consola de Comandos MariaDB MySQL).
DESCRIBE restaurante;
DESCRIBE persona;
DESCRIBE tipopersonaxpersona;
DESCRIBE tipopersona;
DESCRIBE chef;
DESCRIBE menus;
DESCRIBE recetas;
DESCRIBE porcionxreceta;
DESCRIBE porciones;
DESCRIBE ingredientesxporcion;
DESCRIBE ingredientes;
DESCRIBE acompxreceta;
DESCRIBE acompanamientos;
DESCRIBE tipoacompanamiento;
-- Agregar un campo (MySQL).
ALTER TABLE chef ADD generoChef VARCHAR(25) AFTER paisOrigen;
-- Quitar un campo (MySQL).
ALTER TABLE chef DROP COLUMN generoChef;
-- Renombrar un campo  (MySQL).
ALTER TABLE chef CHANGE TipoPersona_idTipoPersona FK_TipoPersona INT;
-- Cambiar el tipo de dato a uno existente (MySQL).
ALTER TABLE chef MODIFY FK_TipoPersona INT NOT NULL;
-- Crear un índice (MySQL).
ALTER TABLE chef ADD INDEX (idChef);
-- Crear Nueva Tabla (MySQL).
CREATE TABLE tabla_ejemplo ( atributo_Uno INT, atributo_DOS INT );
-- Crear Llave Primaria (MySQL).
ALTER TABLE tabla_ejemplo ADD idEjemplo INT NOT NULL;
ALTER TABLE tabla_ejemplo ADD PRIMARY KEY (idEjemplo);
-- Eliminar Llave Primaria (MySQL).
ALTER TABLE tabla_ejemplo DROP PRIMARY KEY;
ALTER TABLE tabla_ejemplo DROP COLUMN idEjemplo;
-- Recrear Llave Primaria (MySQL).
ALTER TABLE tabla_ejemplo ADD idEjemplo INT NOT NULL FIRST;
ALTER TABLE tabla_ejemplo ADD PRIMARY KEY (idEjemplo);
-- Renombrar Tabla (MySQL).
RENAME TABLE tabla_ejemplo TO ejemplos;
-- Crear campo de Llave Foranea (MySQL).
ALTER TABLE ejemplos ADD FK_IdChef INT NOT NULL;
-- Crear llave foranea (MySQL).
ALTER TABLE ejemplos
ADD CONSTRAINT FK_IdChef
FOREIGN KEY (FK_IdChef)
REFERENCES chef(idChef)
ON UPDATE CASCADE
ON DELETE RESTRICT;
-- Eliminar tabla (MySQL).
DROP TABLE ejemplos;
-- Mostrar todas las tablas de una base de datos (MySQL).
SHOW FULL tables FROM bd_restaurant;

-- ...........................................................

-- Mostrar atributos de las tablas (PostgreSQL PgAdmin)
SELECT table_name, column_name, data_type 
FROM information_schema.columns
WHERE table_name = 'restaurante';

SELECT table_name, column_name, data_type 
FROM information_schema.columns
WHERE table_name = 'persona';

SELECT table_name, column_name, data_type 
FROM information_schema.columns
WHERE table_name = 'tipopersonaxpersona';

SELECT table_name, column_name, data_type 
FROM information_schema.columns
WHERE table_name = 'tipopersona';

SELECT table_name, column_name, data_type 
FROM information_schema.columns
WHERE table_name = 'chef';

SELECT table_name, column_name, data_type 
FROM information_schema.columns
WHERE table_name = 'menus';

SELECT table_name, column_name, data_type 
FROM information_schema.columns
WHERE table_name = 'recetas';

SELECT table_name, column_name, data_type 
FROM information_schema.columns
WHERE table_name = 'porcionxreceta';

SELECT table_name, column_name, data_type 
FROM information_schema.columns
WHERE table_name = 'porciones';

SELECT table_name, column_name, data_type 
FROM information_schema.columns
WHERE table_name = 'ingredientesxporcion';

SELECT table_name, column_name, data_type 
FROM information_schema.columns
WHERE table_name = 'ingredientes';

SELECT table_name, column_name, data_type 
FROM information_schema.columns
WHERE table_name = 'acompxreceta';

SELECT table_name, column_name, data_type 
FROM information_schema.columns
WHERE table_name = 'acompanamientos';

SELECT table_name, column_name, data_type 
FROM information_schema.columns
WHERE table_name = 'tipoacompanamiento';

-- Agregar un campo (PostgreSQL).
ALTER TABLE chef ADD COLUMN generoChef VARCHAR(25);

-- Quitar un campo (PostgreSQL).
ALTER TABLE chef DROP COLUMN generoChef;

-- Renombrar un campo  (PostgreSQL).
ALTER TABLE chef RENAME COLUMN TipoPersona_idTipoPersona TO FK_TipoPersona;

-- Cambiar el tipo de dato a uno existente (PostgreSQL).
ALTER TABLE chef ALTER COLUMN FK_TipoPersona SET DATA TYPE INT;

-- Crear un índice (postgreSQL).
CREATE INDEX ON chef (idChef);

-- Crear Nueva Tabla (PostgreSQL).
CREATE TABLE tabla_ejemplo 
(
	atributo_Uno INT NOT NULL, 
	atributo_DOS INT NOT NULL
);

-- Crear Llave Primaria (PostgreSQL).
ALTER TABLE tabla_ejemplo ADD COLUMN idEjemplo INT;
ALTER TABLE tabla_ejemplo ADD PRIMARY KEY (idEjemplo);

-- Eliminar Llave Primaria (PostgreSQL).
ALTER TABLE tabla_ejemplo DROP CONSTRAINT tabla_ejemplo_pkey;
ALTER TABLE tabla_ejemplo DROP COLUMN idEjemplo;

-- Renombrar Tabla (PostgreSQL).
ALTER TABLE tabla_ejemplo RENAME TO ejemplos;

-- Crear llave foranea (PostgreSQL).

ALTER TABLE ejemplos ADD COLUMN FK_Ejemplo INT;

ALTER TABLE ejemplos ADD CONSTRAINT FK_Ejemplo
    FOREIGN KEY (FK_Ejemplo)
    REFERENCES chef (idChef)  
	ON UPDATE CASCADE
	ON DELETE RESTRICT;
;

-- eliminar Llave Foranea (PostgreSQL)

ALTER TABLE ejemplos DROP CONSTRAINT FK_ejemplo;
ALTER TABLE ejemplos DROP COLUMN FK_Ejemplo;

-- Eliminar tabla (MySQL).
DROP TABLE ejemplos;



--.................................................................
--REFERENCIAS:
-- https://www.todopostgresql.com/comandos-postgresql-alter/
-- https://www.postgresql.org/docs/9.1/sql-commands.html
-- 