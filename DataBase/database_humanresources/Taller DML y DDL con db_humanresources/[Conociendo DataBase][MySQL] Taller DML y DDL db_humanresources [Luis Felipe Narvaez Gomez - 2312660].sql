NOTA: Este archivo a pesar de su formato SQL, no debe correrse en software de Databases, debe abrirse en un editor de texto plano como Bloc de Notas o bien cambiar la extencion a ".txt".


--Datos del Estudiante:

-- Nombre: Ing.Luis Felipe Narvaez Gomez
-- Facultad: Ingenieria de Sistemas
-- Universidad: Santo Tomas seccional Tunja
-- Materia: Bases de Datos
-- Semestre: 2021-2

-- ................................................................................. CONOCIENDO EL DATABASE  .................................................................................

-- Mostrar todas las tablas

ariaDB [bd_humanresources]> SHOW FULL tables FROM bd_humanresources;
+-----------------------------+------------+
| Tables_in_bd_humanresources | Table_type |
+-----------------------------+------------+
| countries                   | BASE TABLE |
| departments                 | BASE TABLE |
| employees                   | BASE TABLE |
| job_history                 | BASE TABLE |
| jobs                        | BASE TABLE |
| locations                   | BASE TABLE |
| regions                     | BASE TABLE |
+-----------------------------+------------+
7 rows in set (0.001 sec)

MariaDB [bd_humanresources]>
