--Datos del Estudiante:

-- Nombre: Ing.Luis Felipe Narvaez Gomez
-- Facultad: Ingenieria de Sistemas
-- Universidad: Santo Tomas seccional Tunja
-- Materia: Bases de Datos
-- Semestre: 2021-2

---  ................................................................................. Aggregate Functions and Group by ................................................................................. 

--1.  Write a query to list the number of jobs available in the employees table.
--1.  Escriba una consulta para enumerar el número de trabajos disponibles en la tabla empleados.

SELECT e.job_id, j.JOB_TITLE
FROM employees AS e
INNER JOIN jobs AS j
ON e.job_id = j.job_id
GROUP BY j.JOB_TITLE
ORDER BY j.JOB_TITLE ASC;

MariaDB [bd_humanresources]> -- en caso de referirse a disponibilidad por cuantos trabajos hay y no por cuales se pueden tomar, tenemos:

MariaDB [bd_humanresources]> SELECT e.job_id, j.JOB_TITLE
    -> FROM employees AS e
    -> INNER JOIN jobs AS j
    -> ON e.job_id = j.job_id
    -> GROUP BY j.JOB_TITLE
    -> ORDER BY j.JOB_TITLE ASC;
+------------+---------------------------------+
| job_id     | JOB_TITLE                       |
+------------+---------------------------------+
| FI_ACCOUNT | Accountant                      |
| AC_MGR     | Accounting Manager              |
| AD_ASST    | Administration Assistant        |
| AD_VP      | Administration Vice President   |
| FI_MGR     | Finance Manager                 |
| HR_REP     | Human Resources Representative  |
| MK_MAN     | Marketing Manager               |
| MK_REP     | Marketing Representative        |
| AD_PRES    | President                       |
| IT_PROG    | Programmer                      |
| AC_ACCOUNT | Public Accountant               |
| PR_REP     | Public Relations Representative |
| PU_CLERK   | Purchasing Clerk                |
| PU_MAN     | Purchasing Manager              |
| SA_MAN     | Sales Manager                   |
| SA_REP     | Sales Representative            |
| SH_CLERK   | Shipping Clerk                  |
| ST_CLERK   | Stock Clerk                     |
| ST_MAN     | Stock Manager                   |
+------------+---------------------------------+

--2.  Write a query to get the number of employees with the same job.
--1.  Escriba una consulta para obtener el número de empleados con el mismo trabajo.

SELECT e.job_id, j.JOB_TITLE, COUNT(*) AS "Numero de Trabajadores"
FROM employees AS e
INNER JOIN jobs AS j
ON e.job_id = j.job_id
GROUP BY j.JOB_TITLE
ORDER BY j.JOB_TITLE ASC;

MariaDB [bd_humanresources]> SELECT e.job_id, j.JOB_TITLE, COUNT(*) AS "Numero de Trabajadores"
    -> FROM employees AS e
    -> INNER JOIN jobs AS j
    -> ON e.job_id = j.job_id
    -> GROUP BY j.JOB_TITLE
    -> ORDER BY j.JOB_TITLE ASC;
+------------+---------------------------------+------------------------+
| job_id     | JOB_TITLE                       | Numero de Trabajadores |
+------------+---------------------------------+------------------------+
| FI_ACCOUNT | Accountant                      |                      5 |
| AC_MGR     | Accounting Manager              |                      1 |
| AD_ASST    | Administration Assistant        |                      1 |
| AD_VP      | Administration Vice President   |                      2 |
| FI_MGR     | Finance Manager                 |                      1 |
| HR_REP     | Human Resources Representative  |                      1 |
| MK_MAN     | Marketing Manager               |                      1 |
| MK_REP     | Marketing Representative        |                      1 |
| AD_PRES    | President                       |                      1 |
| IT_PROG    | Programmer                      |                      5 |
| AC_ACCOUNT | Public Accountant               |                      1 |
| PR_REP     | Public Relations Representative |                      1 |
| PU_CLERK   | Purchasing Clerk                |                      5 |
| PU_MAN     | Purchasing Manager              |                      1 |
| SA_MAN     | Sales Manager                   |                      5 |
| SA_REP     | Sales Representative            |                     30 |
| SH_CLERK   | Shipping Clerk                  |                     20 |
| ST_CLERK   | Stock Clerk                     |                     20 |
| ST_MAN     | Stock Manager                   |                      5 |
+------------+---------------------------------+------------------------+

--3.  Write a query to get the difference between the highest and lowest salaries.
--1.  Escriba una consulta para obtener la diferencia entre los salarios más altos y más bajos.

SELECT j.JOB_TITLE, j.MIN_SALARY, j.MAX_SALARY, (j.MAX_SALARY - j.MIN_SALARY) AS "Diferencia entre Max y Min"
FROM employees AS e
INNER JOIN jobs AS j
ON e.job_id = j.job_id
GROUP BY j.JOB_TITLE
ORDER BY j.JOB_TITLE ASC;

MariaDB [bd_humanresources]> SELECT j.JOB_TITLE, j.MIN_SALARY, j.MAX_SALARY, (j.MAX_SALARY - j.MIN_SALARY) AS "Diferencia entre Max y Min"
    -> FROM employees AS e
    -> INNER JOIN jobs AS j
    -> ON e.job_id = j.job_id
    -> GROUP BY j.JOB_TITLE
    -> ORDER BY j.JOB_TITLE ASC;
+---------------------------------+------------+------------+----------------------------+
| JOB_TITLE                       | MIN_SALARY | MAX_SALARY | Diferencia entre Max y Min |
+---------------------------------+------------+------------+----------------------------+
| Accountant                      |       4200 |       9000 |                       4800 |
| Accounting Manager              |       8200 |      16000 |                       7800 |
| Administration Assistant        |       3000 |       6000 |                       3000 |
| Administration Vice President   |      15000 |      30000 |                      15000 |
| Finance Manager                 |       8200 |      16000 |                       7800 |
| Human Resources Representative  |       4000 |       9000 |                       5000 |
| Marketing Manager               |       9000 |      15000 |                       6000 |
| Marketing Representative        |       4000 |       9000 |                       5000 |
| President                       |      20000 |      40000 |                      20000 |
| Programmer                      |       4000 |      10000 |                       6000 |
| Public Accountant               |       4200 |       9000 |                       4800 |
| Public Relations Representative |       4500 |      10500 |                       6000 |
| Purchasing Clerk                |       2500 |       5500 |                       3000 |
| Purchasing Manager              |       8000 |      15000 |                       7000 |
| Sales Manager                   |      10000 |      20000 |                      10000 |
| Sales Representative            |       6000 |      12000 |                       6000 |
| Shipping Clerk                  |       2500 |       5500 |                       3000 |
| Stock Clerk                     |       2000 |       5000 |                       3000 |
| Stock Manager                   |       5500 |       8500 |                       3000 |
+---------------------------------+------------+------------+----------------------------+

--4.  Write a query to find the manager ID and the salary of the lowest-paid employee for that manager.
--1.  Escriba una consulta para encontrar el ID de gerente y el salario del empleado peor pagado para ese gerente.

-- mostrar la tabla en bruto para ver como se relacionan los id de empleados y gerentes, observando que haya un solo gerente por varios empleados

SELECT EMPLOYEE_ID,FIRST_NAME, SALARY, COMMISSION_PCT, MANAGER_ID FROM employees ORDER BY MANAGER_ID ASC;

-- Para organizar y corroborar que cada empleado tenga su gerente

SELECT e.EMPLOYEE_ID, e.FIRST_NAME, e.MANAGER_ID , ee.FIRST_NAME
FROM employees AS e
INNER JOIN employees AS ee
ON ee.EMPLOYEE_ID = e.MANAGER_ID
ORDER BY MANAGER_ID ASC;

-- mostrar salario de cada empleado, independiente del gerente

SELECT e.EMPLOYEE_ID, e.FIRST_NAME, e.MANAGER_ID , ee.FIRST_NAME, 
e.SALARY AS 'SalarioEmpleado', e.COMMISSION_PCT AS 'ComisionEmpleado',
(e.SALARY + (e.SALARY*e.COMMISSION_PCT)) AS 'TotalSueldoEmpleado'
FROM employees AS e
INNER JOIN employees AS ee
ON ee.EMPLOYEE_ID = e.MANAGER_ID
ORDER BY MANAGER_ID ASC;

--mostrar salario de cada empleado, independiente del gerente, solo total sueldo

SELECT e.EMPLOYEE_ID, e.FIRST_NAME, e.MANAGER_ID , ee.FIRST_NAME, 
(e.SALARY + (e.SALARY*e.COMMISSION_PCT)) AS 'TotalSueldoEmpleado'
FROM employees AS e
INNER JOIN employees AS ee
ON ee.EMPLOYEE_ID = e.MANAGER_ID
ORDER BY e.MANAGER_ID ASC;

--ahora mostrar que sueldo es el minimo de cada gerente, ostran el empleado

SELECT e.EMPLOYEE_ID, e.FIRST_NAME, e.MANAGER_ID , ee.FIRST_NAME, 
(e.SALARY + (e.SALARY*e.COMMISSION_PCT)) AS 'TotalSueldoEmpleado', MIN((e.SALARY + (e.SALARY*e.COMMISSION_PCT)) ) AS 'Peor sueldo'
FROM employees AS e
INNER JOIN employees AS ee
ON ee.EMPLOYEE_ID = e.MANAGER_ID
GROUP BY e.MANAGER_ID
ORDER BY e.MANAGER_ID ASC;


MariaDB [bd_humanresources]> SELECT e.EMPLOYEE_ID, e.FIRST_NAME, e.MANAGER_ID , ee.FIRST_NAME,
    -> (e.SALARY + (e.SALARY*e.COMMISSION_PCT)) AS 'TotalSueldoEmpleado', MIN((e.SALARY + (e.SALARY*e.COMMISSION_PCT)) ) AS 'Peor sueldo'
    -> FROM employees AS e
    -> INNER JOIN employees AS ee
    -> ON ee.EMPLOYEE_ID = e.MANAGER_ID
    -> GROUP BY e.MANAGER_ID
    -> ORDER BY e.MANAGER_ID ASC;
+-------------+------------+------------+------------+---------------------+-------------+
| EMPLOYEE_ID | FIRST_NAME | MANAGER_ID | FIRST_NAME | TotalSueldoEmpleado | Peor sueldo |
+-------------+------------+------------+------------+---------------------+-------------+
|         101 | Neena      |        100 | Steven     |          17000.0000 |   5800.0000 |
|         108 | Nancy      |        101 | Neena      |          12000.0000 |   4400.0000 |
|         103 | Alexander  |        102 | Lex        |           9000.0000 |   9000.0000 |
|         104 | Bruce      |        103 | Alexander  |           6000.0000 |   4200.0000 |
|         109 | Daniel     |        108 | Nancy      |           9000.0000 |   6900.0000 |
|         115 | Alexander  |        114 | Den        |           3100.0000 |   2500.0000 |
|         125 | Julia      |        120 | Matthew    |           3200.0000 |   2200.0000 |
|         129 | Laura      |        121 | Adam       |           3300.0000 |   2100.0000 |
|         133 | Jason      |        122 | Payam      |           3300.0000 |   2200.0000 |
|         137 | Renske     |        123 | Shanta     |           3600.0000 |   2500.0000 |
|         141 | Trenna     |        124 | Kevin      |           3500.0000 |   2500.0000 |
|         150 | Peter      |        145 | John       |          13000.0000 |   8050.0000 |
|         156 | Janette    |        146 | Karen      |          13500.0000 |   8750.0000 |
|         162 | Clara      |        147 | Alberto    |          13125.0000 |   6820.0000 |
|         168 | Lisa       |        148 | Gerald     |          14375.0000 |   6710.0000 |
|         174 | Ellen      |        149 | Eleni      |          14300.0000 |   6820.0000 |
|         202 | Pat        |        201 | Michael    |           6000.0000 |   6000.0000 |
|         206 | William    |        205 | Shelley    |           8300.0000 |   8300.0000 |
+-------------+------------+------------+------------+---------------------+-------------+


--5.  Write a query to get the department ID and the total salary payable in each department.
--1.  Escriba una consulta para obtener la identificación del departamento y el salario total pagadero en cada departamento.

SELECT e.EMPLOYEE_ID, e.FIRST_NAME, d.DEPARTMENT_ID, 
COUNT(d.DEPARTMENT_ID) AS 'CantidadID', d.DEPARTMENT_NAME, SUM(e.SALARY) AS 'SalarioDepartamento'
FROM employees AS e
INNER JOIN departments AS d
ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
GROUP BY d.DEPARTMENT_NAME
ORDER BY d.DEPARTMENT_NAME ASC;

MariaDB [bd_humanresources]> SELECT e.EMPLOYEE_ID, e.FIRST_NAME, d.DEPARTMENT_ID, COUNT(d.DEPARTMENT_ID) AS 'CantidadID', d.DEPARTMENT_NAME, SUM(e.SALARY) AS 'SalarioDepartamento'
    -> FROM employees AS e
    -> INNER JOIN departments AS d
    -> ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
    -> GROUP BY d.DEPARTMENT_NAME
    -> ORDER BY d.DEPARTMENT_NAME ASC;
+-------------+------------+---------------+------------+------------------+---------------------+
| EMPLOYEE_ID | FIRST_NAME | DEPARTMENT_ID | CantidadID | DEPARTMENT_NAME  | SalarioDepartamento |
+-------------+------------+---------------+------------+------------------+---------------------+
|         205 | Shelley    |           110 |          2 | Accounting       |            20300.00 |
|         200 | Jennifer   |            10 |          1 | Administration   |             4400.00 |
|         100 | Steven     |            90 |          3 | Executive        |            58000.00 |
|         108 | Nancy      |           100 |          6 | Finance          |            51600.00 |
|         203 | Susan      |            40 |          1 | Human Resources  |             6500.00 |
|         103 | Alexander  |            60 |          5 | IT               |            28800.00 |
|         201 | Michael    |            20 |          2 | Marketing        |            19000.00 |
|         204 | Hermann    |            70 |          1 | Public Relations |            10000.00 |
|         114 | Den        |            30 |          6 | Purchasing       |            24900.00 |
|         145 | John       |            80 |         34 | Sales            |           304500.00 |
|         120 | Matthew    |            50 |         45 | Shipping         |           156400.00 |
+-------------+------------+---------------+------------+------------------+---------------------+


--6.  Write a query to get the average salary for each job ID excluding programmer.
--1.  Escriba una consulta para obtener el salario promedio de cada ID de trabajo excluyendo al programador.

    SELECT e.JOB_ID, COUNT(e.JOB_ID) AS 'CantidadID', AVG(e.SALARY) AS 'PromedioSalario', j.JOB_TITLE
    FROM employees AS e
    INNER JOIN jobs AS j
    ON e.JOB_ID = j.JOB_ID
    WHERE j.JOB_TITLE NOT LIKE 'Programmer'
    GROUP BY e.JOB_ID
    ORDER BY j.JOB_TITLE ASC;

MariaDB [bd_humanresources]>     SELECT e.JOB_ID, COUNT(e.JOB_ID) AS 'CantidadID', AVG(e.SALARY) AS 'PromedioSalario', j.JOB_TITLE
    ->     FROM employees AS e
    ->     INNER JOIN jobs AS j
    ->     ON e.JOB_ID = j.JOB_ID
    ->     WHERE j.JOB_TITLE NOT LIKE 'Programmer'
    ->     GROUP BY e.JOB_ID
    ->     ORDER BY j.JOB_TITLE ASC;
+------------+------------+-----------------+---------------------------------+
| JOB_ID     | CantidadID | PromedioSalario | JOB_TITLE                       |
+------------+------------+-----------------+---------------------------------+
| FI_ACCOUNT |          5 |     7920.000000 | Accountant                      |
| AC_MGR     |          1 |    12000.000000 | Accounting Manager              |
| AD_ASST    |          1 |     4400.000000 | Administration Assistant        |
| AD_VP      |          2 |    17000.000000 | Administration Vice President   |
| FI_MGR     |          1 |    12000.000000 | Finance Manager                 |
| HR_REP     |          1 |     6500.000000 | Human Resources Representative  |
| MK_MAN     |          1 |    13000.000000 | Marketing Manager               |
| MK_REP     |          1 |     6000.000000 | Marketing Representative        |
| AD_PRES    |          1 |    24000.000000 | President                       |
| AC_ACCOUNT |          1 |     8300.000000 | Public Accountant               |
| PR_REP     |          1 |    10000.000000 | Public Relations Representative |
| PU_CLERK   |          5 |     2780.000000 | Purchasing Clerk                |
| PU_MAN     |          1 |    11000.000000 | Purchasing Manager              |
| SA_MAN     |          5 |    12200.000000 | Sales Manager                   |
| SA_REP     |         30 |     8350.000000 | Sales Representative            |
| SH_CLERK   |         20 |     3215.000000 | Shipping Clerk                  |
| ST_CLERK   |         20 |     2785.000000 | Stock Clerk                     |
| ST_MAN     |          5 |     7280.000000 | Stock Manager                   |
+------------+------------+-----------------+---------------------------------+


--7.  Write a query to get the total salary, maximum, minimum, average salary of employees (job ID wise), for department ID 90 only.
--1.  Escriba una consulta para obtener el salario total, máximo, mínimo, salario promedio de los empleados (ID de trabajo en cuanto a ID), solo para ID de departamento 90.

    SELECT e.JOB_ID, j.JOB_TITLE, d.DEPARTMENT_ID,
    COUNT(e.JOB_ID) AS 'CantidadID', AVG(e.SALARY) AS 'PromedioSalario', MAX(e.SALARY) AS 'SalarioMaximo', MIN(e.SALARY) AS 'SalarioMinimo' 
    FROM employees AS e
    INNER JOIN jobs AS j
    ON e.JOB_ID = j.JOB_ID
    INNER JOIN departments AS d
    ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
    WHERE d.DEPARTMENT_ID = 90
    GROUP BY e.JOB_ID
    ORDER BY j.JOB_TITLE ASC;


MariaDB [bd_humanresources]>     SELECT e.JOB_ID, j.JOB_TITLE, d.DEPARTMENT_ID,
    ->     COUNT(e.JOB_ID) AS 'CantidadID', AVG(e.SALARY) AS 'PromedioSalario', MAX(e.SALARY) AS 'SalarioMaximo', MIN(e.SALARY) AS 'SalarioMinimo'
    ->     FROM employees AS e
    ->     INNER JOIN jobs AS j
    ->     ON e.JOB_ID = j.JOB_ID
    ->     INNER JOIN departments AS d
    ->     ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
    ->     WHERE d.DEPARTMENT_ID = 90
    ->     GROUP BY e.JOB_ID
    ->     ORDER BY j.JOB_TITLE ASC;
+---------+-------------------------------+---------------+------------+-----------------+---------------+---------------+
| JOB_ID  | JOB_TITLE                     | DEPARTMENT_ID | CantidadID | PromedioSalario | SalarioMaximo | SalarioMinimo |
+---------+-------------------------------+---------------+------------+-----------------+---------------+---------------+
| AD_VP   | Administration Vice President |            90 |          2 |    17000.000000 |      17000.00 |      17000.00 |
| AD_PRES | President                     |            90 |          1 |    24000.000000 |      24000.00 |      24000.00 |
+---------+-------------------------------+---------------+------------+-----------------+---------------+---------------+


--8.  Write a query to get the job ID and maximum salary of the employees where maximum salary is greater than or equal to $4000.
--1.  Escriba una consulta para obtener la identificación del trabajo y el salario máximo de los empleados donde el salario máximo es mayor o igual a $ 4000.

    SELECT e.EMPLOYEE_ID, e.FIRST_NAME, e.JOB_ID, j.JOB_TITLE, e.SALARY
    FROM employees AS e
    INNER JOIN jobs AS j
    ON e.JOB_ID = j.JOB_ID
    WHERE e.SALARY >= 4000
    ORDER BY j.JOB_TITLE ASC;

MariaDB [bd_humanresources]>     SELECT e.EMPLOYEE_ID, e.FIRST_NAME, e.JOB_ID, j.JOB_TITLE, e.SALARY
    ->     FROM employees AS e
    ->     INNER JOIN jobs AS j
    ->     ON e.JOB_ID = j.JOB_ID
    ->     WHERE e.SALARY >= 4000
    ->     ORDER BY j.JOB_TITLE ASC;
+-------------+-------------+------------+---------------------------------+----------+
| EMPLOYEE_ID | FIRST_NAME  | JOB_ID     | JOB_TITLE                       | SALARY   |
+-------------+-------------+------------+---------------------------------+----------+
|         113 | Luis        | FI_ACCOUNT | Accountant                      |  6900.00 |
|         110 | John        | FI_ACCOUNT | Accountant                      |  8200.00 |
|         111 | Ismael      | FI_ACCOUNT | Accountant                      |  7700.00 |
|         112 | Jose Manuel | FI_ACCOUNT | Accountant                      |  7800.00 |
|         109 | Daniel      | FI_ACCOUNT | Accountant                      |  9000.00 |
|         205 | Shelley     | AC_MGR     | Accounting Manager              | 12000.00 |
|         200 | Jennifer    | AD_ASST    | Administration Assistant        |  4400.00 |
|         101 | Neena       | AD_VP      | Administration Vice President   | 17000.00 |
|         102 | Lex         | AD_VP      | Administration Vice President   | 17000.00 |
|         108 | Nancy       | FI_MGR     | Finance Manager                 | 12000.00 |
|         203 | Susan       | HR_REP     | Human Resources Representative  |  6500.00 |
|         201 | Michael     | MK_MAN     | Marketing Manager               | 13000.00 |
|         202 | Pat         | MK_REP     | Marketing Representative        |  6000.00 |
|         100 | Steven      | AD_PRES    | President                       | 24000.00 |
|         103 | Alexander   | IT_PROG    | Programmer                      |  9000.00 |
|         107 | Diana       | IT_PROG    | Programmer                      |  4200.00 |
|         104 | Bruce       | IT_PROG    | Programmer                      |  6000.00 |
|         105 | David       | IT_PROG    | Programmer                      |  4800.00 |
|         106 | Valli       | IT_PROG    | Programmer                      |  4800.00 |
|         206 | William     | AC_ACCOUNT | Public Accountant               |  8300.00 |
|         204 | Hermann     | PR_REP     | Public Relations Representative | 10000.00 |
|         114 | Den         | PU_MAN     | Purchasing Manager              | 11000.00 |
|         148 | Gerald      | SA_MAN     | Sales Manager                   | 11000.00 |
|         145 | John        | SA_MAN     | Sales Manager                   | 14000.00 |
|         149 | Eleni       | SA_MAN     | Sales Manager                   | 10500.00 |
|         146 | Karen       | SA_MAN     | Sales Manager                   | 13500.00 |
|         147 | Alberto     | SA_MAN     | Sales Manager                   | 12000.00 |
|         160 | Louise      | SA_REP     | Sales Representative            |  7500.00 |
|         176 | Jonathon    | SA_REP     | Sales Representative            |  8600.00 |
|         157 | Patrick     | SA_REP     | Sales Representative            |  9500.00 |
|         173 | Sundita     | SA_REP     | Sales Representative            |  6100.00 |
|         154 | Nanette     | SA_REP     | Sales Representative            |  7500.00 |
|         170 | Tayler      | SA_REP     | Sales Representative            |  9600.00 |
|         151 | David       | SA_REP     | Sales Representative            |  9500.00 |
|         167 | Amit        | SA_REP     | Sales Representative            |  6200.00 |
|         164 | Mattea      | SA_REP     | Sales Representative            |  7200.00 |
|         161 | Sarath      | SA_REP     | Sales Representative            |  7000.00 |
|         177 | Jack        | SA_REP     | Sales Representative            |  8400.00 |
|         158 | Allan       | SA_REP     | Sales Representative            |  9000.00 |
|         174 | Ellen       | SA_REP     | Sales Representative            | 11000.00 |
|         155 | Oliver      | SA_REP     | Sales Representative            |  7000.00 |
|         171 | William     | SA_REP     | Sales Representative            |  7400.00 |
|         152 | Peter       | SA_REP     | Sales Representative            |  9000.00 |
|         168 | Lisa        | SA_REP     | Sales Representative            | 11500.00 |
|         165 | David       | SA_REP     | Sales Representative            |  6800.00 |
|         162 | Clara       | SA_REP     | Sales Representative            | 10500.00 |
|         178 | Kimberely   | SA_REP     | Sales Representative            |  7000.00 |
|         159 | Lindsey     | SA_REP     | Sales Representative            |  8000.00 |
|         175 | Alyssa      | SA_REP     | Sales Representative            |  8800.00 |
|         156 | Janette     | SA_REP     | Sales Representative            | 10000.00 |
|         172 | Elizabeth   | SA_REP     | Sales Representative            |  7300.00 |
|         153 | Christopher | SA_REP     | Sales Representative            |  8000.00 |
|         169 | Harrison    | SA_REP     | Sales Representative            | 10000.00 |
|         150 | Peter       | SA_REP     | Sales Representative            | 10000.00 |
|         166 | Sundar      | SA_REP     | Sales Representative            |  6400.00 |
|         163 | Danielle    | SA_REP     | Sales Representative            |  9500.00 |
|         179 | Charles     | SA_REP     | Sales Representative            |  6200.00 |
|         184 | Nandita     | SH_CLERK   | Shipping Clerk                  |  4200.00 |
|         185 | Alexis      | SH_CLERK   | Shipping Clerk                  |  4100.00 |
|         192 | Sarah       | SH_CLERK   | Shipping Clerk                  |  4000.00 |
|         124 | Kevin       | ST_MAN     | Stock Manager                   |  5800.00 |
|         121 | Adam        | ST_MAN     | Stock Manager                   |  8200.00 |
|         122 | Payam       | ST_MAN     | Stock Manager                   |  7900.00 |
|         123 | Shanta      | ST_MAN     | Stock Manager                   |  6500.00 |
|         120 | Matthew     | ST_MAN     | Stock Manager                   |  8000.00 |
+-------------+-------------+------------+---------------------------------+----------+

-- Ahora observando que sean de cada departamento, el problema es que no puedes descriminar empleado y querer agrupar el departamento completo cumpliendo el WHERE

    SELECT e.EMPLOYEE_ID, e.FIRST_NAME, e.JOB_ID, j.JOB_TITLE, e.SALARY
    FROM employees AS e
    INNER JOIN jobs AS j
    ON e.JOB_ID = j.JOB_ID
    WHERE e.SALARY >= 4000
    GROUP BY j.JOB_TITLE
    ORDER BY j.JOB_TITLE ASC;

MariaDB [bd_humanresources]>     SELECT e.EMPLOYEE_ID, e.FIRST_NAME, e.JOB_ID, j.JOB_TITLE, e.SALARY
    ->     FROM employees AS e
    ->     INNER JOIN jobs AS j
    ->     ON e.JOB_ID = j.JOB_ID
    ->     WHERE e.SALARY >= 4000
    ->     GROUP BY j.JOB_TITLE
    ->     ORDER BY j.JOB_TITLE ASC;
+-------------+------------+------------+---------------------------------+----------+
| EMPLOYEE_ID | FIRST_NAME | JOB_ID     | JOB_TITLE                       | SALARY   |
+-------------+------------+------------+---------------------------------+----------+
|         109 | Daniel     | FI_ACCOUNT | Accountant                      |  9000.00 |
|         205 | Shelley    | AC_MGR     | Accounting Manager              | 12000.00 |
|         200 | Jennifer   | AD_ASST    | Administration Assistant        |  4400.00 |
|         101 | Neena      | AD_VP      | Administration Vice President   | 17000.00 |
|         108 | Nancy      | FI_MGR     | Finance Manager                 | 12000.00 |
|         203 | Susan      | HR_REP     | Human Resources Representative  |  6500.00 |
|         201 | Michael    | MK_MAN     | Marketing Manager               | 13000.00 |
|         202 | Pat        | MK_REP     | Marketing Representative        |  6000.00 |
|         100 | Steven     | AD_PRES    | President                       | 24000.00 |
|         103 | Alexander  | IT_PROG    | Programmer                      |  9000.00 |
|         206 | William    | AC_ACCOUNT | Public Accountant               |  8300.00 |
|         204 | Hermann    | PR_REP     | Public Relations Representative | 10000.00 |
|         114 | Den        | PU_MAN     | Purchasing Manager              | 11000.00 |
|         145 | John       | SA_MAN     | Sales Manager                   | 14000.00 |
|         150 | Peter      | SA_REP     | Sales Representative            | 10000.00 |
|         184 | Nandita    | SH_CLERK   | Shipping Clerk                  |  4200.00 |
|         120 | Matthew    | ST_MAN     | Stock Manager                   |  8000.00 |
+-------------+------------+------------+---------------------------------+----------+

--9.  Write a query to get the average salary for all departments employing more than 10 employees.
--1.  Escriba una consulta para obtener el salario promedio de todos los departamentos que emplean a más de 10 empleados.

    SELECT e.JOB_ID, COUNT(e.JOB_ID) AS 'CantidadID', AVG(e.SALARY) AS 'PromedioSalario', j.JOB_TITLE
    FROM employees AS e
    INNER JOIN jobs AS j
    ON e.JOB_ID = j.JOB_ID
    GROUP BY e.JOB_ID
    HAVING COUNT(e.JOB_ID) > 10
    ORDER BY j.JOB_TITLE ASC;

    MariaDB [bd_humanresources]>     SELECT e.JOB_ID, COUNT(e.JOB_ID) AS 'CantidadID', AVG(e.SALARY) AS 'PromedioSalario', j.JOB_TITLE
    ->     FROM employees AS e
    ->     INNER JOIN jobs AS j
    ->     ON e.JOB_ID = j.JOB_ID
    ->     GROUP BY e.JOB_ID
    ->     HAVING COUNT(e.JOB_ID) > 10
    ->     ORDER BY j.JOB_TITLE ASC;
+----------+------------+-----------------+----------------------+
| JOB_ID   | CantidadID | PromedioSalario | JOB_TITLE            |
+----------+------------+-----------------+----------------------+
| SA_REP   |         30 |     8350.000000 | Sales Representative |
| SH_CLERK |         20 |     3215.000000 | Shipping Clerk       |
| ST_CLERK |         20 |     2785.000000 | Stock Clerk          |
+----------+------------+-----------------+----------------------+
