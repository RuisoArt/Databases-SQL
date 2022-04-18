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

-- Actualizar el registro anteriormente creado porque Luis Pulido tiene 67 años en vez de 89

UPDATE PERSONAS
SET EDAD=67
WHERE ( (lower(NOMBRE)=lower('Luis')) AND (upper(APELLIDO1)=upper('pulido')) );

SELECT *
FROM PERSONAS;

-- Borrar el ultimo registro , el anterior, realizando lla seleccion por el nombre y los dos apellidos

DELETE
FROM PERSONAS
WHERE (
lower(NOMBRE)=lower('Luis') AND
lower(APELLIDO1)=lower('Pulido') AND
lower(APELLIDO2)=lower('Gomez')
);

SELECT *
FROM PERSONAS;

-- Seleccionar que tipo de productos hemos vendido sin repetirse

SELECT DISTINCT PRODUCTO
FROM PEDIDOS;


