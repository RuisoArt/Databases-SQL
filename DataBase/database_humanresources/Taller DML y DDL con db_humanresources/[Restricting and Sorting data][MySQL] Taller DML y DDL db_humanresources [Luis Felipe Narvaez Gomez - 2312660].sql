NOTA: Este archivo a pesar de su formato SQL, no debe correrse en software de Databases, debe abrirse en un editor de texto plano como Bloc de Notas o bien cambiar la extencion a ".txt".


--Datos del Estudiante:

-- Nombre: Ing.Luis Felipe Narvaez Gomez
-- Facultad: Ingenieria de Sistemas
-- Universidad: Santo Tomas seccional Tunja
-- Materia: Bases de Datos
-- Semestre: 2021-2

---  ................................................................................. MySQL Restricting and Sorting data  ................................................................................. 

-- 1.  Write a query to display the names (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000.
-- 1.  Escriba una consulta para mostrar los nombres (first_name, last_name) y el salario de todos los empleados cuyo salario no esté en el rango de $ 10,000 a $ 15,000.

SELECT first_name, last_name, salary
FROM employees
WHERE SALARY NOT BETWEEN 10.00 AND 15.00;

MariaDB [bd_humanresources]> SELECT first_name, last_name, salary
    -> FROM employees
    -> WHERE SALARY NOT BETWEEN 10.00 AND 15.00;
+-------------+-------------+----------+
| first_name  | last_name   | salary   |
+-------------+-------------+----------+
| Steven      | King        | 24000.00 |
| Neena       | Kochhar     | 17000.00 |
| Lex         | De Haan     | 17000.00 |
| Alexander   | Hunold      |  9000.00 |
| Bruce       | Ernst       |  6000.00 |
| David       | Austin      |  4800.00 |
| Valli       | Pataballa   |  4800.00 |
| Diana       | Lorentz     |  4200.00 |
| Nancy       | Greenberg   | 12000.00 |
| Daniel      | Faviet      |  9000.00 |
| John        | Chen        |  8200.00 |
| Ismael      | Sciarra     |  7700.00 |
| Jose Manuel | Urman       |  7800.00 |
| Luis        | Popp        |  6900.00 |
| Den         | Raphaely    | 11000.00 |
| Alexander   | Khoo        |  3100.00 |
| Shelli      | Baida       |  2900.00 |
| Sigal       | Tobias      |  2800.00 |
| Guy         | Himuro      |  2600.00 |
| Karen       | Colmenares  |  2500.00 |
| Matthew     | Weiss       |  8000.00 |
| Adam        | Fripp       |  8200.00 |
| Payam       | Kaufling    |  7900.00 |
| Shanta      | Vollman     |  6500.00 |
| Kevin       | Mourgos     |  5800.00 |
| Julia       | Nayer       |  3200.00 |
| Irene       | Mikkilineni |  2700.00 |
| James       | Landry      |  2400.00 |
| Steven      | Markle      |  2200.00 |
| Laura       | Bissot      |  3300.00 |
| Mozhe       | Atkinson    |  2800.00 |
| James       | Marlow      |  2500.00 |
| TJ          | Olson       |  2100.00 |
| Jason       | Mallin      |  3300.00 |
| Michael     | Rogers      |  2900.00 |
| Ki          | Gee         |  2400.00 |
| Hazel       | Philtanker  |  2200.00 |
| Renske      | Ladwig      |  3600.00 |
| Stephen     | Stiles      |  3200.00 |
| John        | Seo         |  2700.00 |
| Joshua      | Patel       |  2500.00 |
| Trenna      | Rajs        |  3500.00 |
| Curtis      | Davies      |  3100.00 |
| Randall     | Matos       |  2600.00 |
| Peter       | Vargas      |  2500.00 |
| John        | Russell     | 14000.00 |
| Karen       | Partners    | 13500.00 |
| Alberto     | Errazuriz   | 12000.00 |
| Gerald      | Cambrault   | 11000.00 |
| Eleni       | Zlotkey     | 10500.00 |
| Peter       | Tucker      | 10000.00 |
| David       | Bernstein   |  9500.00 |
| Peter       | Hall        |  9000.00 |
| Christopher | Olsen       |  8000.00 |
| Nanette     | Cambrault   |  7500.00 |
| Oliver      | Tuvault     |  7000.00 |
| Janette     | King        | 10000.00 |
| Patrick     | Sully       |  9500.00 |
| Allan       | McEwen      |  9000.00 |
| Lindsey     | Smith       |  8000.00 |
| Louise      | Doran       |  7500.00 |
| Sarath      | Sewall      |  7000.00 |
| Clara       | Vishney     | 10500.00 |
| Danielle    | Greene      |  9500.00 |
| Mattea      | Marvins     |  7200.00 |
| David       | Lee         |  6800.00 |
| Sundar      | Ande        |  6400.00 |
| Amit        | Banda       |  6200.00 |
| Lisa        | Ozer        | 11500.00 |
| Harrison    | Bloom       | 10000.00 |
| Tayler      | Fox         |  9600.00 |
| William     | Smith       |  7400.00 |
| Elizabeth   | Bates       |  7300.00 |
| Sundita     | Kumar       |  6100.00 |
| Ellen       | Abel        | 11000.00 |
| Alyssa      | Hutton      |  8800.00 |
| Jonathon    | Taylor      |  8600.00 |
| Jack        | Livingston  |  8400.00 |
| Kimberely   | Grant       |  7000.00 |
| Charles     | Johnson     |  6200.00 |
| Winston     | Taylor      |  3200.00 |
| Jean        | Fleaur      |  3100.00 |
| Martha      | Sullivan    |  2500.00 |
| Girard      | Geoni       |  2800.00 |
| Nandita     | Sarchand    |  4200.00 |
| Alexis      | Bull        |  4100.00 |
| Julia       | Dellinger   |  3400.00 |
| Anthony     | Cabrio      |  3000.00 |
| Kelly       | Chung       |  3800.00 |
| Jennifer    | Dilly       |  3600.00 |
| Timothy     | Gates       |  2900.00 |
| Randall     | Perkins     |  2500.00 |
| Sarah       | Bell        |  4000.00 |
| Britney     | Everett     |  3900.00 |
| Samuel      | McCain      |  3200.00 |
| Vance       | Jones       |  2800.00 |
| Alana       | Walsh       |  3100.00 |
| Kevin       | Feeney      |  3000.00 |
| Donald      | OConnell    |  2600.00 |
| Douglas     | Grant       |  2600.00 |
| Jennifer    | Whalen      |  4400.00 |
| Michael     | Hartstein   | 13000.00 |
| Pat         | Fay         |  6000.00 |
| Susan       | Mavris      |  6500.00 |
| Hermann     | Baer        | 10000.00 |
| Shelley     | Higgins     | 12000.00 |
| William     | Gietz       |  8300.00 |
+-------------+-------------+----------+

-- 2.  Write a query to display the name (first_name, last_name) and department ID of all employees in departments 30 or 100 in ascending order.
-- 1.  Escriba una consulta para mostrar el nombre (first_name, last_name) y el ID de departamento de todos los empleados de los departamentos 30 o 100 en orden ascendente.

SELECT e.first_name, e.last_name, e.department_id, d.department_name
FROM employees AS e
INNER JOIN departments AS d
ON e.department_id = d.department_id
WHERE e.DEPARTMENT_ID IN (30,100)
ORDER BY e.department_id ASC;

MariaDB [bd_humanresources]> SELECT e.first_name, e.last_name, e.department_id, d.department_name
    -> FROM employees AS e
    -> INNER JOIN departments AS d
    -> ON e.department_id = d.department_id
    -> WHERE e.DEPARTMENT_ID IN (30,100)
    -> ORDER BY e.department_id ASC;
+-------------+------------+---------------+-----------------+
| first_name  | last_name  | department_id | department_name |
+-------------+------------+---------------+-----------------+
| Den         | Raphaely   |            30 | Purchasing      |
| Alexander   | Khoo       |            30 | Purchasing      |
| Shelli      | Baida      |            30 | Purchasing      |
| Sigal       | Tobias     |            30 | Purchasing      |
| Guy         | Himuro     |            30 | Purchasing      |
| Karen       | Colmenares |            30 | Purchasing      |
| Nancy       | Greenberg  |           100 | Finance         |
| Daniel      | Faviet     |           100 | Finance         |
| John        | Chen       |           100 | Finance         |
| Ismael      | Sciarra    |           100 | Finance         |
| Jose Manuel | Urman      |           100 | Finance         |
| Luis        | Popp       |           100 | Finance         |
+-------------+------------+---------------+-----------------+

-- 3.  Write a query to display the name (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000 and are in department 30 or 100.
-- 1.  Escriba una consulta para mostrar el nombre (first_name, last_name) y el salario de todos los empleados cuyo salario no esté en el rango de $ 10,000 a $ 15,000 y estén en el departamento 30 o 100.

SELECT e.first_name, e.last_name, e.salary, e.department_id, d.department_name
FROM employees AS e
INNER JOIN departments AS d
ON e.department_id = d.department_id
WHERE e.SALARY NOT BETWEEN 10.00 AND 15.00
AND e.DEPARTMENT_ID IN(30,100);

MariaDB [bd_humanresources]> SELECT e.first_name, e.last_name, e.salary, e.department_id, d.department_name
    -> FROM employees AS e
    -> INNER JOIN departments AS d
    -> ON e.department_id = d.department_id
    -> WHERE e.SALARY NOT BETWEEN 10.00 AND 15.00
    -> AND e.DEPARTMENT_ID IN(30,100);
+-------------+------------+----------+---------------+-----------------+
| first_name  | last_name  | salary   | department_id | department_name |
+-------------+------------+----------+---------------+-----------------+
| Den         | Raphaely   | 11000.00 |            30 | Purchasing      |
| Alexander   | Khoo       |  3100.00 |            30 | Purchasing      |
| Shelli      | Baida      |  2900.00 |            30 | Purchasing      |
| Sigal       | Tobias     |  2800.00 |            30 | Purchasing      |
| Guy         | Himuro     |  2600.00 |            30 | Purchasing      |
| Karen       | Colmenares |  2500.00 |            30 | Purchasing      |
| Nancy       | Greenberg  | 12000.00 |           100 | Finance         |
| Daniel      | Faviet     |  9000.00 |           100 | Finance         |
| John        | Chen       |  8200.00 |           100 | Finance         |
| Ismael      | Sciarra    |  7700.00 |           100 | Finance         |
| Jose Manuel | Urman      |  7800.00 |           100 | Finance         |
| Luis        | Popp       |  6900.00 |           100 | Finance         |
+-------------+------------+----------+---------------+-----------------+

-- 4.  Write a query to display the name (first_name, last_name) and hire date for all employees who were hired in 1987.
-- 1.  Escriba una consulta para mostrar el nombre (first_name, last_name) y la fecha de contratación de todos los empleados que fueron contratados en 1987.

SELECT first_name, last_name, hire_date
FROM employees
WHERE HIRE_DATE BETWEEN '1987-01-01' AND '1987-12-31';

MariaDB [bd_humanresources]> SELECT first_name, last_name, hire_date
    -> FROM employees
    -> WHERE HIRE_DATE BETWEEN '1987-01-01' AND '1987-12-31';
+-------------+-------------+------------+
| first_name  | last_name   | hire_date  |
+-------------+-------------+------------+
| Steven      | King        | 1987-06-17 |
| Neena       | Kochhar     | 1987-06-18 |
| Lex         | De Haan     | 1987-06-19 |
| Alexander   | Hunold      | 1987-06-20 |
| Bruce       | Ernst       | 1987-06-21 |
| David       | Austin      | 1987-06-22 |
| Valli       | Pataballa   | 1987-06-23 |
| Diana       | Lorentz     | 1987-06-24 |
| Nancy       | Greenberg   | 1987-06-25 |
| Daniel      | Faviet      | 1987-06-26 |
| John        | Chen        | 1987-06-27 |
| Ismael      | Sciarra     | 1987-06-28 |
| Jose Manuel | Urman       | 1987-06-29 |
| Luis        | Popp        | 1987-06-30 |
| Den         | Raphaely    | 1987-07-01 |
| Alexander   | Khoo        | 1987-07-02 |
| Shelli      | Baida       | 1987-07-03 |
| Sigal       | Tobias      | 1987-07-04 |
| Guy         | Himuro      | 1987-07-05 |
| Karen       | Colmenares  | 1987-07-06 |
| Matthew     | Weiss       | 1987-07-07 |
| Adam        | Fripp       | 1987-07-08 |
| Payam       | Kaufling    | 1987-07-09 |
| Shanta      | Vollman     | 1987-07-10 |
| Kevin       | Mourgos     | 1987-07-11 |
| Julia       | Nayer       | 1987-07-12 |
| Irene       | Mikkilineni | 1987-07-13 |
| James       | Landry      | 1987-07-14 |
| Steven      | Markle      | 1987-07-15 |
| Laura       | Bissot      | 1987-07-16 |
| Mozhe       | Atkinson    | 1987-07-17 |
| James       | Marlow      | 1987-07-18 |
| TJ          | Olson       | 1987-07-19 |
| Jason       | Mallin      | 1987-07-20 |
| Michael     | Rogers      | 1987-07-21 |
| Ki          | Gee         | 1987-07-22 |
| Hazel       | Philtanker  | 1987-07-23 |
| Renske      | Ladwig      | 1987-07-24 |
| Stephen     | Stiles      | 1987-07-25 |
| John        | Seo         | 1987-07-26 |
| Joshua      | Patel       | 1987-07-27 |
| Trenna      | Rajs        | 1987-07-28 |
| Curtis      | Davies      | 1987-07-29 |
| Randall     | Matos       | 1987-07-30 |
| Peter       | Vargas      | 1987-07-31 |
| John        | Russell     | 1987-08-01 |
| Karen       | Partners    | 1987-08-02 |
| Alberto     | Errazuriz   | 1987-08-03 |
| Gerald      | Cambrault   | 1987-08-04 |
| Eleni       | Zlotkey     | 1987-08-05 |
| Peter       | Tucker      | 1987-08-06 |
| David       | Bernstein   | 1987-08-07 |
| Peter       | Hall        | 1987-08-08 |
| Christopher | Olsen       | 1987-08-09 |
| Nanette     | Cambrault   | 1987-08-10 |
| Oliver      | Tuvault     | 1987-08-11 |
| Janette     | King        | 1987-08-12 |
| Patrick     | Sully       | 1987-08-13 |
| Allan       | McEwen      | 1987-08-14 |
| Lindsey     | Smith       | 1987-08-15 |
| Louise      | Doran       | 1987-08-16 |
| Sarath      | Sewall      | 1987-08-17 |
| Clara       | Vishney     | 1987-08-18 |
| Danielle    | Greene      | 1987-08-19 |
| Mattea      | Marvins     | 1987-08-20 |
| David       | Lee         | 1987-08-21 |
| Sundar      | Ande        | 1987-08-22 |
| Amit        | Banda       | 1987-08-23 |
| Lisa        | Ozer        | 1987-08-24 |
| Harrison    | Bloom       | 1987-08-25 |
| Tayler      | Fox         | 1987-08-26 |
| William     | Smith       | 1987-08-27 |
| Elizabeth   | Bates       | 1987-08-28 |
| Sundita     | Kumar       | 1987-08-29 |
| Ellen       | Abel        | 1987-08-30 |
| Alyssa      | Hutton      | 1987-08-31 |
| Jonathon    | Taylor      | 1987-09-01 |
| Jack        | Livingston  | 1987-09-02 |
| Kimberely   | Grant       | 1987-09-03 |
| Charles     | Johnson     | 1987-09-04 |
| Winston     | Taylor      | 1987-09-05 |
| Jean        | Fleaur      | 1987-09-06 |
| Martha      | Sullivan    | 1987-09-07 |
| Girard      | Geoni       | 1987-09-08 |
| Nandita     | Sarchand    | 1987-09-09 |
| Alexis      | Bull        | 1987-09-10 |
| Julia       | Dellinger   | 1987-09-11 |
| Anthony     | Cabrio      | 1987-09-12 |
| Kelly       | Chung       | 1987-09-13 |
| Jennifer    | Dilly       | 1987-09-14 |
| Timothy     | Gates       | 1987-09-15 |
| Randall     | Perkins     | 1987-09-16 |
| Sarah       | Bell        | 1987-09-17 |
| Britney     | Everett     | 1987-09-18 |
| Samuel      | McCain      | 1987-09-19 |
| Vance       | Jones       | 1987-09-20 |
| Alana       | Walsh       | 1987-09-21 |
| Kevin       | Feeney      | 1987-09-22 |
| Donald      | OConnell    | 1987-09-23 |
| Douglas     | Grant       | 1987-09-24 |
| Jennifer    | Whalen      | 1987-09-25 |
| Michael     | Hartstein   | 1987-09-26 |
| Pat         | Fay         | 1987-09-27 |
| Susan       | Mavris      | 1987-09-28 |
| Hermann     | Baer        | 1987-09-29 |
| Shelley     | Higgins     | 1987-09-30 |
| William     | Gietz       | 1987-10-01 |
+-------------+-------------+------------+

-- 5.  Write a query to display the first_name of all employees who have both "b" and "c" in their first name.
-- 1.  Escriba una consulta para mostrar la first_name de todos los empleados que tienen "b" y "c" en su nombre.

SELECT first_name
FROM employees
WHERE FIRST_NAME LIKE '%c%' OR FIRST_NAME LIKE '%b%';

MariaDB [bd_humanresources]> SELECT first_name
    -> FROM employees
    -> WHERE FIRST_NAME LIKE '%c%' OR FIRST_NAME LIKE '%b%';
+-------------+
| first_name  |
+-------------+
| Elizabeth   |
| Curtis      |
| Bruce       |
| Alberto     |
| Britney     |
| Kimberely   |
| Nancy       |
| Michael     |
| Charles     |
| Vance       |
| Jack        |
| Christopher |
| Michael     |
| Patrick     |
| Clara       |
+-------------+

-- 6.  Write a query to display the last name, job, and salary for all employees whose job is that of a Programmer or a Shipping Clerk, and salary is not equal to $4,500, $10,000, or $15,000.
-- 1.  Escriba una consulta para mostrar el apellido, el trabajo y el salario de todos los empleados cuyo trabajo es el de un programador o un empleado de envío, y el salario no es igual a $ 4,500, $ 10,000 o $ 15,000.

SELECT e.last_name, e.salary, j.JOB_TITLE
FROM employees AS e
INNER JOIN jobs AS j
ON e.job_id = j.job_id
WHERE (j.JOB_TITLE LIKE 'Programmer' OR j.JOB_TITLE LIKE 'Shipping Clerk')
AND
(e.salary NOT IN (4500,10000,15000));

MariaDB [bd_humanresources]> SELECT e.last_name, e.salary, j.JOB_TITLE
    -> FROM employees AS e
    -> INNER JOIN jobs AS j
    -> ON e.job_id = j.job_id
    -> WHERE (j.JOB_TITLE LIKE 'Programmer' OR j.JOB_TITLE LIKE 'Shipping Clerk')
    -> AND
    -> (e.salary NOT IN (4500,10000,15000));
+-----------+---------+----------------+
| last_name | salary  | JOB_TITLE      |
+-----------+---------+----------------+
| Hunold    | 9000.00 | Programmer     |
| Ernst     | 6000.00 | Programmer     |
| Austin    | 4800.00 | Programmer     |
| Pataballa | 4800.00 | Programmer     |
| Lorentz   | 4200.00 | Programmer     |
| Taylor    | 3200.00 | Shipping Clerk |
| Fleaur    | 3100.00 | Shipping Clerk |
| Sullivan  | 2500.00 | Shipping Clerk |
| Geoni     | 2800.00 | Shipping Clerk |
| Sarchand  | 4200.00 | Shipping Clerk |
| Bull      | 4100.00 | Shipping Clerk |
| Dellinger | 3400.00 | Shipping Clerk |
| Cabrio    | 3000.00 | Shipping Clerk |
| Chung     | 3800.00 | Shipping Clerk |
| Dilly     | 3600.00 | Shipping Clerk |
| Gates     | 2900.00 | Shipping Clerk |
| Perkins   | 2500.00 | Shipping Clerk |
| Bell      | 4000.00 | Shipping Clerk |
| Everett   | 3900.00 | Shipping Clerk |
| McCain    | 3200.00 | Shipping Clerk |
| Jones     | 2800.00 | Shipping Clerk |
| Walsh     | 3100.00 | Shipping Clerk |
| Feeney    | 3000.00 | Shipping Clerk |
| OConnell  | 2600.00 | Shipping Clerk |
| Grant     | 2600.00 | Shipping Clerk |
+-----------+---------+----------------+

-- 7.  Write a query to display the last name of employees whose name have exactly 6 characters.
-- 1.  Escriba una consulta para mostrar el apellido de los empleados cuyo nombre tiene exactamente 6 caracteres.

SELECT last_name,CHAR_LENGTH(LAST_NAME) AS 'Numero de Caracteres'
FROM employees
WHERE CHAR_LENGTH(LAST_NAME)=6;

MariaDB [bd_humanresources]> SELECT last_name,CHAR_LENGTH(LAST_NAME) AS 'Numero de Caracteres'
    -> FROM employees
    -> WHERE CHAR_LENGTH(LAST_NAME)=6;
+-----------+----------------------+
| last_name | Numero de Caracteres |
+-----------+----------------------+
| Austin    |                    6 |
| Bissot    |                    6 |
| Cabrio    |                    6 |
| Davies    |                    6 |
| Faviet    |                    6 |
| Feeney    |                    6 |
| Fleaur    |                    6 |
| Greene    |                    6 |
| Himuro    |                    6 |
| Hunold    |                    6 |
| Hutton    |                    6 |
| Ladwig    |                    6 |
| Landry    |                    6 |
| Mallin    |                    6 |
| Markle    |                    6 |
| Marlow    |                    6 |
| Mavris    |                    6 |
| McCain    |                    6 |
| McEwen    |                    6 |
| Rogers    |                    6 |
| Sewall    |                    6 |
| Stiles    |                    6 |
| Taylor    |                    6 |
| Taylor    |                    6 |
| Tobias    |                    6 |
| Tucker    |                    6 |
| Vargas    |                    6 |
| Whalen    |                    6 |
+-----------+----------------------+

-- 8.  Write a query to display the last name of employees having 'e' as the third character.
-- 1.  Escriba una consulta para mostrar el apellido de los empleados que tienen 'e' como tercer carácter.

SELECT last_name AS 'Apellido'
FROM employees
WHERE last_name LIKE '%%%e';


MariaDB [bd_humanresources]> SELECT last_name AS 'Apellido'
    -> FROM employees
    -> WHERE last_name LIKE '%%%e';
+----------+
| Apellido |
+----------+
| Ande     |
| Gee      |
| Greene   |
| Lee      |
| Markle   |
+----------+


-- 9.  Write a query to select all records from employees where last name in 'BLAKE', 'SCOTT', 'KING' and 'FORD'.
-- 1.  Escriba una consulta para seleccionar todos los registros de los empleados donde el apellido en 'BLAKE', 'SCOTT', 'KING' y 'FORD'.

SELECT * FROM employees
WHERE LAST_NAME IN('BLAKE','SCOTT','KING','FORD');

SELECT * FROM employees
WHERE LAST_NAME LIKE 'BLAKE' OR
LAST_NAME LIKE 'SCOTT' OR
LAST_NAME LIKE 'KING' OR
LAST_NAME LIKE 'FORD';

MariaDB [bd_humanresources]> SELECT * FROM employees
    -> WHERE LAST_NAME IN('BLAKE','SCOTT','KING','FORD');
+-------------+------------+-----------+-------+--------------------+------------+---------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | EMAIL | PHONE_NUMBER       | HIRE_DATE  | JOB_ID  | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-----------+-------+--------------------+------------+---------+----------+----------------+------------+---------------+
|         156 | Janette    | King      | JKING | 011.44.1345.429268 | 1987-08-12 | SA_REP  | 10000.00 |           0.35 |        146 |            80 |
|         100 | Steven     | King      | SKING | 515.123.4567       | 1987-06-17 | AD_PRES | 24000.00 |           0.00 |          0 |            90 |
+-------------+------------+-----------+-------+--------------------+------------+---------+----------+----------------+------------+---------------+
2 rows in set (0.001 sec)

MariaDB [bd_humanresources]>

MariaDB [bd_humanresources]> SELECT * FROM employees
    -> WHERE LAST_NAME LIKE 'BLAKE' OR
    -> LAST_NAME LIKE 'SCOTT' OR
    -> LAST_NAME LIKE 'KING' OR
    -> LAST_NAME LIKE 'FORD';
+-------------+------------+-----------+-------+--------------------+------------+---------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | EMAIL | PHONE_NUMBER       | HIRE_DATE  | JOB_ID  | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-----------+-------+--------------------+------------+---------+----------+----------------+------------+---------------+
|         156 | Janette    | King      | JKING | 011.44.1345.429268 | 1987-08-12 | SA_REP  | 10000.00 |           0.35 |        146 |            80 |
|         100 | Steven     | King      | SKING | 515.123.4567       | 1987-06-17 | AD_PRES | 24000.00 |           0.00 |          0 |            90 |
+-------------+------------+-----------+-------+--------------------+------------+---------+----------+----------------+------------+---------------+
