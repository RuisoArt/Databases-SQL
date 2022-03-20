/*
Universidad Santo Tomas seccional Tunja
Facultad de Ingenieria de Sistemas
Asignatura Bases de Datos
Ing.Luis Felipe Narváez Gómez - 2312660
2021-2
*/

/*Subir un archivo de texto resolviendo para cada numeral la expresión correspondiente en álgebra relacional, 
validar la respuesta en relax, proponer 4 expresiones que sean válidas:
NOTA: no correr o cargar el siguiente archivo como sentencias SQL en un motor de DataBase. */

-- ........................................................................................................................
--- 1. Empleado cuyo dni = 123456789
π nombreEmpleado,dni (σ dni='123456789' (empleado))
π nombreEmpleado,apellido, dni (σ dni='123456789' (empleado))
SELECT nombreEmpleado, dni FROM empleado WHERE dni = '123456789';
-- ........................................................................................................................
--- 2. Mostrar columnas nombreEmpleado y fechaNacimiento de la relacion empleado
π nombreEmpleado,fechaNacimiento (empleado)
SELECT nombreEmpleado, fechaNacimiento FROM empleado;
-- ........................................................................................................................
--- 3. Producto cartesiano entre empleado y departamento
empleado ⨯ departamento
SELECT * FROM empleado, departamento;
SELECT * FROM empleado CROSS JOIN departamento;
-- ........................................................................................................................
--- 4. Producto natural entre empleado y departamento
empleado ⨝ departamento
SELECT * FROM empleado NATURAL JOIN departamento;
-- ........................................................................................................................
--- EXTRA_1. Producto natural a partir del cartesiano
σ empleado.idDepartamento = departamento.idDepartamento (empleado ⨝ departamento)
-- ........................................................................................................................
--- 5. Columnas nombreEmpleado, apellido y nombreDepartamento del producto natural entre empleado y departamento
π nombreEmpleado,apellido,nombreDepartamento (empleado ⨝ departamento)
SELECT nombreEmpleado,apellido,nombreDepartamento 
FROM empleado NATURAL JOIN departamento;
-- ........................................................................................................................
--- 6. El nombre, apellido y departamento del jefe de cada departamento
π nombreEmpleado, apellido, nombreDepartamento (σ jefe_dni≠null (empleado ⨝ departamento))

SELECT nombreEmpleado, apellido, nombreDepartamento
FROM empleado NATURAL JOIN departamento
WHERE jefe_dni IS NOT null;
-- ........................................................................................................................
--- 7. El nombre de departamento y su ubicacion
π nombreDepartamento, ubicacion (departamento ⨝ ubicaciones_departamento)
SELECT nombreDepartamento, ubicacion
FROM departamento NATURAL JOIN ubicaciones_departamento;
-- ........................................................................................................................
--- 8. Nombre del departmento y su fecha de inicio
π nombreDepartamento, fechaInicio (departamento)
SELECT nombreDepartamento, fechaInicio FROM departamento;
-- ........................................................................................................................
--- 9. Nombre del Departamento con el nombre y ubicación del proyecto
π nombreDepartamento,nombreProyecto,ubicacion (departamento ⨝ proyecto)
SELECT nombreDepartamento,nombreProyecto,ubicacion FROM departamento NATURAL JOIN proyecto;
-- ........................................................................................................................
--- 10. Nombre y apellido del empleado, con el nombre del proyecto y el numero de horas asignadas
π empleado.nombreEmpleado, empleado.apellido, proyecto.nombreProyecto, horas.horas
	( 
		( 
			( empleado ⨝ empleado.jefe_dni = departamento.jefe_dni departamento ) ⨝
			departamento.idDepartamento = proyecto.idDepartamento proyecto 
		)
		⨝ proyecto.idProyecto = horas.idProyecto horas
	)

SELECT empleado.nombreEmpleado, empleado.apellido, proyecto.nombreProyecto, horas.horas
FROM empleado
INNER JOIN departamento
ON empleado.jefe_dni = departamento.jefe_dni
INNER JOIN proyecto
ON departamento.idDepartamento = proyecto.idDepartamento
INNER JOIN horas
ON proyecto.idProyecto = horas.idProyecto;
-- ........................................................................................................................
--- 11. Nombre del empleado con el nombre de su jefe
empleados = π dni, nombreEmpleado ρ Trabajador (empleado)
jefes = π jefe_dni,nombreEmpleado ρ Empleador (empleado)
σ dni=jefe_dni (empleados ⨯ jefes)

σ dni = jefe_dni ( π dni, nombreEmpleado ρ Trabajador ( empleado ) ⨯ π jefe_dni, nombreEmpleado ρ Empleador ( empleado ) )
-- ........................................................................................................................
--- 12. Nombre y apellido de empleados con salario menor o igual a treinta mil
σ salario≤30000 (π nombreEmpleado, apellido,salario (empleado))
SELECT nombreEmpleado, apellido,salario FROM empleado WHERE salario <= 30000;
-- ........................................................................................................................
--- 13. Nombre y apellidos de empleadas, nombre de departamento y ubicacion de departamentos ubicados en medellin
SELECT ubicacion FROM ubicaciones_departamento; --- No existe la ubicacicon de Medellin asi que se hizo el ejercicio con Bogota

π e.nombreEmpleado, e.apellido, de.nombreDepartamento, ubde.ubicacion 
( 
	( ρ e empleado ⨝ de.idDepartamento = e.idDepartamento ρ de departamento ) 
	⨝ 
	de.idDepartamento = ubde.idDepartamento and ubde.ubicacion = 'Bogota' ρ ubde ubicaciones_departamento
)

SELECT e.nombreEmpleado, e.apellido, de.nombreDepartamento, ubde.ubicacion
FROM empleado AS e
INNER JOIN departamento AS de
ON de.idDepartamento = e.idDepartamento
INNER JOIN ubicaciones_departamento AS ubde
ON de.idDepartamento = ubde.idDepartamento
AND ubde.ubicacion = 'Bogota';
-- ........................................................................................................................
--- 14. Dependientes que son esposas
σ vinculo = 'esposa' (dependientes)
SELECT * FROM dependientes WHERE vinculo = 'esposa';
-- ........................................................................................................................
--- 15. dni, Nombre y apellido del empleado, nombre y vinculacion del dependiente
π e.dni, e.nombreEmpleado, e.apellido, de.nombreDependiente, de.vinculo 
( ρ e empleado ⨝ e.dni = de.dni ρ de dependientes )

SELECT e.dni, e.nombreEmpleado, e.apellido, de.nombreDependiente, de.vinculo 
FROM empleado AS e 
INNER JOIN dependientes AS de
ON e.dni = de.dni;
-- ........................................................................................................................
--- 16. dni, Nombre y apellido del empleado, nombre y vinculacion del dependiente que son hijos
π e.dni, e.nombreEmpleado, e.apellido, de.nombreDependiente, de.vinculo 
( ρ e empleado ⨝ e.dni = de.dni and de.vinculo = 'hijo' or de.vinculo = 'hija' ρ de dependientes )

SELECT e.dni, e.nombreEmpleado, e.apellido, de.nombreDependiente, de.vinculo 
FROM empleado AS e 
INNER JOIN dependientes AS de
ON e.dni = de.dni 
AND de.vinculo = 'hijo' 
OR de.vinculo = 'hija';
-- ........................................................................................................................
--- 4 sentencias sugeridas validas para la base de datos

--- 1. Traer todos los NOMBRES COMPLETOS de las empleadas que ganen un SALARIO mayor a 10000

π nombreEmpleado, apellido σ (genero = 'F' and salario ≥ 10000) empleado
SELECT nombreEmpleado,apellido FROM empleado WHERE (genero='F' AND salario>=10000);

--- 2. Traer todos los NOMBRES COMPLETOS de las empleadas que sean tengan un PROYECTO, con el respectivo NOMBRE del proyecto

π emp.nombreEmpleado, emp.apellido, pro.nombreProyecto
( ρ emp empleado ⨝ emp.idDepartamento = pro.idDepartamento and (emp.genero = 'F') ρ pro proyecto )

SELECT emp.nombreEmpleado, emp.apellido, pro.nombreProyecto
FROM empleado AS emp
INNER JOIN proyecto AS pro
ON emp.idDepartamento = pro.idDepartamento
AND (emp.genero = 'F');

--- 3. Muestre el nombre de los proyectos que duran mas de 10 horas

π nombreProyecto, horas σ horas > 10 ( proyecto ⨝ horas )

SELECT nombreProyecto, horas
FROM proyecto
NATURAL JOIN horas
WHERE horas>10;

--- 4. Dependientes MUJER que trabajen mas de 10 HORAS

π nombreDependiente σ (genero = 'F' and h.horas > 10) ( dependientes ⨝ ρ h horas )

SELECT nombreDependiente 
FROM dependientes
NATURAL JOIN horas AS h
WHERE (genero = 'F' and h.horas>10);
-- ........................................................................................................................

SELECT *
FROM ventas ve
INNER JOIN clientes cl
ON cl.cedula_cliente = ve.cedula_cliente