NOTA: Este archivo a pesar de su formato SQL, no debe correrse en software de Databases, debe abrirse en un editor de texto plano como Bloc de Notas o bien cambiar la extencion a ".txt".


--Datos del Estudiante:

-- Nombre: Ing.Luis Felipe Narvaez Gomez
-- Facultad: Ingenieria de Sistemas
-- Universidad: Santo Tomas seccional Tunja
-- Materia: Bases de Datos
-- Semestre: 2021-2

-- ................................................................................. CREANDO Y APLICANDO LLAVES FORANEAS  (CONSTRAINT)  .................................................................................

ALTER TABLE job_history ADD CONSTRAINT FK_job_id 
FOREIGN KEY FK_job_id (job_id)
REFERENCES jobs (job_id);

MariaDB [bd_humanresources]> ALTER TABLE job_history ADD CONSTRAINT FK_job_id
    -> FOREIGN KEY FK_job_id (job_id)
    -> REFERENCES jobs (job_id);
Query OK, 11 rows affected (0.412 sec)
Records: 11  Duplicates: 0  Warnings: 0

---

ALTER TABLE job_history ADD CONSTRAINT F_department_id
FOREIGN KEY FK_department_id (DEPARTMENT_ID)
REFERENCES departments (DEPARTMENT_ID);

ariaDB [bd_humanresources]> ALTER TABLE job_history ADD CONSTRAINT F_department_id
    -> FOREIGN KEY FK_department_id (DEPARTMENT_ID)
    -> REFERENCES departments (DEPARTMENT_ID);
Query OK, 11 rows affected (0.152 sec)
Records: 11  Duplicates: 0  Warnings: 0


---

ALTER TABLE employees ADD CONSTRAINT FK_emp_job_id
FOREIGN KEY FK_emp_job_id (JOB_ID)
REFERENCES jobs (JOB_ID);

MariaDB [bd_humanresources]> ALTER TABLE employees ADD CONSTRAINT FK_emp_job_id
    -> FOREIGN KEY FK_emp_job_id (JOB_ID)
    -> REFERENCES jobs (JOB_ID);
Query OK, 107 rows affected (0.439 sec)
Records: 107  Duplicates: 0  Warnings: 0

---

ALTER TABLE employees ADD CONSTRAINT FK_manager_id
FOREIGN KEY FK_manager_id (MANAGER_ID)
REFERENCES departments (MANAGER_ID);

MariaDB [bd_humanresources]> ALTER TABLE employees ADD CONSTRAINT FK_manager_id
    -> FOREIGN KEY FK_manager_id (MANAGER_ID)
    -> REFERENCES departments (MANAGER_ID);
Query OK, 107 rows affected (0.428 sec)
Records: 107  Duplicates: 0  Warnings: 0

---

ALTER TABLE employees ADD CONSTRAINT FK_emp_department_id
FOREIGN KEY FK_emp_department_id (DEPARTMENT_ID)
REFERENCES departments (DEPARTMENT_ID);

MariaDB [bd_humanresources]> ALTER TABLE employees ADD CONSTRAINT FK_emp_department_id
    -> FOREIGN KEY FK_emp_department_id (DEPARTMENT_ID)
    -> REFERENCES departments (DEPARTMENT_ID);
Query OK, 107 rows affected (0.175 sec)
Records: 107  Duplicates: 0  Warnings: 0

---

ALTER TABLE departments ADD CONSTRAINT FK_location_id
FOREIGN KEY FK_location_id (LOCATION_ID)
REFERENCES locations (LOCATION_ID);

MariaDB [bd_humanresources]> ALTER TABLE departments ADD CONSTRAINT FK_location_id
    -> FOREIGN KEY FK_location_id (LOCATION_ID)
    -> REFERENCES locations (LOCATION_ID);
Query OK, 27 rows affected (0.400 sec)
Records: 27  Duplicates: 0  Warnings: 0

---

ALTER TABLE locations ADD CONSTRAINT FK_country_id
FOREIGN KEY FK_country_id (COUNTRY_ID)
REFERENCES countries (COUNTRY_ID);

MariaDB [bd_humanresources]> ALTER TABLE locations ADD CONSTRAINT FK_country_id
    -> FOREIGN KEY FK_country_id (COUNTRY_ID)
    -> REFERENCES countries (COUNTRY_ID);
Query OK, 23 rows affected (0.424 sec)
Records: 23  Duplicates: 0  Warnings: 0

---

ALTER TABLE countries ADD CONSTRAINT FK_region_id
FOREIGN KEY FK_region_id (REGION_ID)
REFERENCES regions (REGION_ID);

MariaDB [bd_humanresources]> ALTER TABLE countries ADD CONSTRAINT FK_region_id
    -> FOREIGN KEY FK_region_id (REGION_ID)
    -> REFERENCES regions (REGION_ID);
Query OK, 25 rows affected (0.176 sec)
Records: 25  Duplicates: 0  Warnings: 0