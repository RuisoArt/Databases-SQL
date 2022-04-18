-- Mostrar las columnas de nombre, apellido1, edad y dni de la tabla personas
-- ordenadas por el DNI de menor a mayor
-- y cuya edad sea superior a 40 años

SELECT NOMBRE, APELLIDO1, EDAD, DNI
FROM PERSONAS
WHERE EDAD>40
ORDER BY DNI ASC;

-- Mostrar todas las personas que se llaman Antonio o Pedro ordenadas por edad

SELECT *
FROM PERSONAS
WHERE ( (lower(NOMBRE)=lower('antonio')) OR (lower(NOMBRE)=lower('pedro')) )
ORDER BY EDAD ASC;

-- Insertar una nueva persona en la base de datos y verificar que se ha realizado con exito la consulta

INSERT INTO PERSONAS
VALUES(7,'Luis','Pulido','Gomez','XYZ456789',89,2,0);

SELECT *
FROM PERSONAS;

-- 