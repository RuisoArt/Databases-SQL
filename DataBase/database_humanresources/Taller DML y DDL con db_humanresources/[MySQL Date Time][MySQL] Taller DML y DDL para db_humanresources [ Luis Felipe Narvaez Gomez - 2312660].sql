--Datos del Estudiante:

-- Nombre: Ing.Luis Felipe Narvaez Gomez
-- Facultad: Ingenieria de Sistemas
-- Universidad: Santo Tomas seccional Tunja
-- Materia: Bases de Datos
-- Semestre: 2021-2

--
-- ................................................................................. MySQL Date Time ................................................................................. 

--1.  Write a query to get the distinct Mondays from hire_date in employees tables.
--1.  Escriba una consulta para obtener los distintos lunes de hire_date en las tablas de empleados.

-- si yo quisiera saber que dia es hoy por consulta podria utilizar la consulta

SELECT DAYNAME(CURDATE());

MariaDB [bd_humanresources]> SELECT DAYNAME(CURDATE());
+--------------------+
| DAYNAME(CURDATE()) |
+--------------------+
| Friday             |
+--------------------+

-- Si quisiera saber el dia de una fecha en concreto, como los que aparecen en la columna HIRE_DATE

SELECT EMPLOYEE_ID AS 'ID', FIRST_NAME AS 'Empleado', 
HIRE_DATE AS 'FechaContratacion', 
DAYNAME(HIRE_DATE) AS 'Dia que fue contratado'
FROM employees;

MariaDB [bd_humanresources]> SELECT EMPLOYEE_ID AS 'ID', FIRST_NAME AS 'Empleado',
    -> HIRE_DATE AS 'FechaContratacion',
    -> DAYNAME(HIRE_DATE) AS 'Dia que fue contratado'
    -> FROM employees;
+-----+-------------+-------------------+------------------------+
| ID  | Empleado    | FechaContratacion | Dia que fue contratado |
+-----+-------------+-------------------+------------------------+
| 100 | Steven      | 1987-06-17        | Wednesday              |
| 101 | Neena       | 1987-06-18        | Thursday               |
| 102 | Lex         | 1987-06-19        | Friday                 |
| 103 | Alexander   | 1987-06-20        | Saturday               |
| 104 | Bruce       | 1987-06-21        | Sunday                 |
| 105 | David       | 1987-06-22        | Monday                 |
| 106 | Valli       | 1987-06-23        | Tuesday                |
| 107 | Diana       | 1987-06-24        | Wednesday              |
| 108 | Nancy       | 1987-06-25        | Thursday               |
| 109 | Daniel      | 1987-06-26        | Friday                 |
| 110 | John        | 1987-06-27        | Saturday               |
| 111 | Ismael      | 1987-06-28        | Sunday                 |
| 112 | Jose Manuel | 1987-06-29        | Monday                 |
| 113 | Luis        | 1987-06-30        | Tuesday                |
| 114 | Den         | 1987-07-01        | Wednesday              |
| 115 | Alexander   | 1987-07-02        | Thursday               |
| 116 | Shelli      | 1987-07-03        | Friday                 |
| 117 | Sigal       | 1987-07-04        | Saturday               |
| 118 | Guy         | 1987-07-05        | Sunday                 |
| 119 | Karen       | 1987-07-06        | Monday                 |
| 120 | Matthew     | 1987-07-07        | Tuesday                |
| 121 | Adam        | 1987-07-08        | Wednesday              |
| 122 | Payam       | 1987-07-09        | Thursday               |
| 123 | Shanta      | 1987-07-10        | Friday                 |
| 124 | Kevin       | 1987-07-11        | Saturday               |
| 125 | Julia       | 1987-07-12        | Sunday                 |
| 126 | Irene       | 1987-07-13        | Monday                 |
| 127 | James       | 1987-07-14        | Tuesday                |
| 128 | Steven      | 1987-07-15        | Wednesday              |
| 129 | Laura       | 1987-07-16        | Thursday               |
| 130 | Mozhe       | 1987-07-17        | Friday                 |
| 131 | James       | 1987-07-18        | Saturday               |
| 132 | TJ          | 1987-07-19        | Sunday                 |
| 133 | Jason       | 1987-07-20        | Monday                 |
| 134 | Michael     | 1987-07-21        | Tuesday                |
| 135 | Ki          | 1987-07-22        | Wednesday              |
| 136 | Hazel       | 1987-07-23        | Thursday               |
| 137 | Renske      | 1987-07-24        | Friday                 |
| 138 | Stephen     | 1987-07-25        | Saturday               |
| 139 | John        | 1987-07-26        | Sunday                 |
| 140 | Joshua      | 1987-07-27        | Monday                 |
| 141 | Trenna      | 1987-07-28        | Tuesday                |
| 142 | Curtis      | 1987-07-29        | Wednesday              |
| 143 | Randall     | 1987-07-30        | Thursday               |
| 144 | Peter       | 1987-07-31        | Friday                 |
| 145 | John        | 1987-08-01        | Saturday               |
| 146 | Karen       | 1987-08-02        | Sunday                 |
| 147 | Alberto     | 1987-08-03        | Monday                 |
| 148 | Gerald      | 1987-08-04        | Tuesday                |
| 149 | Eleni       | 1987-08-05        | Wednesday              |
| 150 | Peter       | 1987-08-06        | Thursday               |
| 151 | David       | 1987-08-07        | Friday                 |
| 152 | Peter       | 1987-08-08        | Saturday               |
| 153 | Christopher | 1987-08-09        | Sunday                 |
| 154 | Nanette     | 1987-08-10        | Monday                 |
| 155 | Oliver      | 1987-08-11        | Tuesday                |
| 156 | Janette     | 1987-08-12        | Wednesday              |
| 157 | Patrick     | 1987-08-13        | Thursday               |
| 158 | Allan       | 1987-08-14        | Friday                 |
| 159 | Lindsey     | 1987-08-15        | Saturday               |
| 160 | Louise      | 1987-08-16        | Sunday                 |
| 161 | Sarath      | 1987-08-17        | Monday                 |
| 162 | Clara       | 1987-08-18        | Tuesday                |
| 163 | Danielle    | 1987-08-19        | Wednesday              |
| 164 | Mattea      | 1987-08-20        | Thursday               |
| 165 | David       | 1987-08-21        | Friday                 |
| 166 | Sundar      | 1987-08-22        | Saturday               |
| 167 | Amit        | 1987-08-23        | Sunday                 |
| 168 | Lisa        | 1987-08-24        | Monday                 |
| 169 | Harrison    | 1987-08-25        | Tuesday                |
| 170 | Tayler      | 1987-08-26        | Wednesday              |
| 171 | William     | 1987-08-27        | Thursday               |
| 172 | Elizabeth   | 1987-08-28        | Friday                 |
| 173 | Sundita     | 1987-08-29        | Saturday               |
| 174 | Ellen       | 1987-08-30        | Sunday                 |
| 175 | Alyssa      | 1987-08-31        | Monday                 |
| 176 | Jonathon    | 1987-09-01        | Tuesday                |
| 177 | Jack        | 1987-09-02        | Wednesday              |
| 178 | Kimberely   | 1987-09-03        | Thursday               |
| 179 | Charles     | 1987-09-04        | Friday                 |
| 180 | Winston     | 1987-09-05        | Saturday               |
| 181 | Jean        | 1987-09-06        | Sunday                 |
| 182 | Martha      | 1987-09-07        | Monday                 |
| 183 | Girard      | 1987-09-08        | Tuesday                |
| 184 | Nandita     | 1987-09-09        | Wednesday              |
| 185 | Alexis      | 1987-09-10        | Thursday               |
| 186 | Julia       | 1987-09-11        | Friday                 |
| 187 | Anthony     | 1987-09-12        | Saturday               |
| 188 | Kelly       | 1987-09-13        | Sunday                 |
| 189 | Jennifer    | 1987-09-14        | Monday                 |
| 190 | Timothy     | 1987-09-15        | Tuesday                |
| 191 | Randall     | 1987-09-16        | Wednesday              |
| 192 | Sarah       | 1987-09-17        | Thursday               |
| 193 | Britney     | 1987-09-18        | Friday                 |
| 194 | Samuel      | 1987-09-19        | Saturday               |
| 195 | Vance       | 1987-09-20        | Sunday                 |
| 196 | Alana       | 1987-09-21        | Monday                 |
| 197 | Kevin       | 1987-09-22        | Tuesday                |
| 198 | Donald      | 1987-09-23        | Wednesday              |
| 199 | Douglas     | 1987-09-24        | Thursday               |
| 200 | Jennifer    | 1987-09-25        | Friday                 |
| 201 | Michael     | 1987-09-26        | Saturday               |
| 202 | Pat         | 1987-09-27        | Sunday                 |
| 203 | Susan       | 1987-09-28        | Monday                 |
| 204 | Hermann     | 1987-09-29        | Tuesday                |
| 205 | Shelley     | 1987-09-30        | Wednesday              |
| 206 | William     | 1987-10-01        | Thursday               |
+-----+-------------+-------------------+------------------------+

-- ahora si, si solo queremos ver los que fueron contratados el lunes

SELECT EMPLOYEE_ID AS 'ID', FIRST_NAME AS 'Empleado', 
HIRE_DATE AS 'FechaContratacion', 
DAYNAME(HIRE_DATE) AS 'Dia que fue contratado'
FROM employees
WHERE DAYNAME(HIRE_DATE) LIKE 'Monday';

MariaDB [bd_humanresources]> SELECT EMPLOYEE_ID AS 'ID', FIRST_NAME AS 'Empleado',
    -> HIRE_DATE AS 'FechaContratacion',
    -> DAYNAME(HIRE_DATE) AS 'Dia que fue contratado'
    -> FROM employees
    -> WHERE DAYNAME(HIRE_DATE) LIKE 'Monday';
+-----+-------------+-------------------+------------------------+
| ID  | Empleado    | FechaContratacion | Dia que fue contratado |
+-----+-------------+-------------------+------------------------+
| 105 | David       | 1987-06-22        | Monday                 |
| 112 | Jose Manuel | 1987-06-29        | Monday                 |
| 119 | Karen       | 1987-07-06        | Monday                 |
| 126 | Irene       | 1987-07-13        | Monday                 |
| 133 | Jason       | 1987-07-20        | Monday                 |
| 140 | Joshua      | 1987-07-27        | Monday                 |
| 147 | Alberto     | 1987-08-03        | Monday                 |
| 154 | Nanette     | 1987-08-10        | Monday                 |
| 161 | Sarath      | 1987-08-17        | Monday                 |
| 168 | Lisa        | 1987-08-24        | Monday                 |
| 175 | Alyssa      | 1987-08-31        | Monday                 |
| 182 | Martha      | 1987-09-07        | Monday                 |
| 189 | Jennifer    | 1987-09-14        | Monday                 |
| 196 | Alana       | 1987-09-21        | Monday                 |
| 203 | Susan       | 1987-09-28        | Monday                 |
+-----+-------------+-------------------+------------------------+

--2.  Write a query to get the last day of the current year.
--1.  Escriba una consulta para obtener el último día del año en curso.

-- Para el mes actual en curso

MariaDB [bd_humanresources]> SELECT DATE_ADD(DATE_ADD(LAST_DAY(NOW()), INTERVAL 1 DAY),INTERVAL -1 MONTH) PRIMER_DIA;
+------------+
| PRIMER_DIA |
+------------+
| 2021-11-01 |
+------------+
1 row in set (0.120 sec)

MariaDB [bd_humanresources]> SELECT LAST_DAY(NOW()) ULTIMO_DIA;
+------------+
| ULTIMO_DIA |
+------------+
| 2021-11-30 |
+------------+
1 row in set (0.000 sec)


-- Para el año en curso, por alguna razon lo toma desde diciembre del año pasado el primer dia y finaliza el año en noviembre

MariaDB [bd_humanresources]> SELECT DATE_ADD(DATE_ADD(LAST_DAY(NOW()), INTERVAL 1 DAY),INTERVAL -1 YEAR) PRIMER_DIA;
+------------+
| PRIMER_DIA |
+------------+
| 2020-12-01 |
+------------+
1 row in set (0.000 sec)

MariaDB [bd_humanresources]> SELECT LAST_DAY(NOW()) ULTIMO_DIA;
+------------+
| ULTIMO_DIA |
+------------+
| 2021-11-30 |
+------------+
1 row in set (0.000 sec)



--3.  Write a query to calculate the age in year.
--1.  Escriba una consulta para calcular la edad en año.

""" La primera opcion seria que la base de datos tuviera una una columna que perteneciera a la fecha de nacimiento del empleado.
Sin embargo este no es el caso, pero podemos hacer el ejecicio con la coluna de fecha de contratacion. De esta manera tendremos 
un conteo de años entre el año de contratacion y el año actual"

SELECT EMPLOYEE_ID AS 'ID',
FIRST_NAME AS 'Empleado',
HIRE_DATE AS 'Fecha de contratación',
YEAR(HIRE_DATE) AS 'Año contratacion',
YEAR(LAST_DAY(NOW())) AS 'Año Actual',
TIMESTAMPDIFF(YEAR,HIRE_DATE,CURDATE()) AS 'Años contratado' 
FROM employees;

MariaDB [bd_humanresources]> SELECT EMPLOYEE_ID AS 'ID',
    -> FIRST_NAME AS 'Empleado',
    -> HIRE_DATE AS 'Fecha de contratación',
    -> YEAR(HIRE_DATE) AS 'Año contratacion',
    -> YEAR(LAST_DAY(NOW())) AS 'Año Actual',
    -> TIMESTAMPDIFF(YEAR,HIRE_DATE,CURDATE()) AS 'Años contratado'
    -> FROM employees;
+-----+-------------+-----------------------+------------------+------------+-----------------+
| ID  | Empleado    | Fecha de contratación | Año contratacion | Año Actual | Años contratado |
+-----+-------------+-----------------------+------------------+------------+-----------------+
| 100 | Steven      | 1987-06-17            |             1987 |       2021 |              34 |
| 101 | Neena       | 1987-06-18            |             1987 |       2021 |              34 |
| 102 | Lex         | 1987-06-19            |             1987 |       2021 |              34 |
| 103 | Alexander   | 1987-06-20            |             1987 |       2021 |              34 |
| 104 | Bruce       | 1987-06-21            |             1987 |       2021 |              34 |
| 105 | David       | 1987-06-22            |             1987 |       2021 |              34 |
| 106 | Valli       | 1987-06-23            |             1987 |       2021 |              34 |
| 107 | Diana       | 1987-06-24            |             1987 |       2021 |              34 |
| 108 | Nancy       | 1987-06-25            |             1987 |       2021 |              34 |
| 109 | Daniel      | 1987-06-26            |             1987 |       2021 |              34 |
| 110 | John        | 1987-06-27            |             1987 |       2021 |              34 |
| 111 | Ismael      | 1987-06-28            |             1987 |       2021 |              34 |
| 112 | Jose Manuel | 1987-06-29            |             1987 |       2021 |              34 |
| 113 | Luis        | 1987-06-30            |             1987 |       2021 |              34 |
| 114 | Den         | 1987-07-01            |             1987 |       2021 |              34 |
| 115 | Alexander   | 1987-07-02            |             1987 |       2021 |              34 |
| 116 | Shelli      | 1987-07-03            |             1987 |       2021 |              34 |
| 117 | Sigal       | 1987-07-04            |             1987 |       2021 |              34 |
| 118 | Guy         | 1987-07-05            |             1987 |       2021 |              34 |
| 119 | Karen       | 1987-07-06            |             1987 |       2021 |              34 |
| 120 | Matthew     | 1987-07-07            |             1987 |       2021 |              34 |
| 121 | Adam        | 1987-07-08            |             1987 |       2021 |              34 |
| 122 | Payam       | 1987-07-09            |             1987 |       2021 |              34 |
| 123 | Shanta      | 1987-07-10            |             1987 |       2021 |              34 |
| 124 | Kevin       | 1987-07-11            |             1987 |       2021 |              34 |
| 125 | Julia       | 1987-07-12            |             1987 |       2021 |              34 |
| 126 | Irene       | 1987-07-13            |             1987 |       2021 |              34 |
| 127 | James       | 1987-07-14            |             1987 |       2021 |              34 |
| 128 | Steven      | 1987-07-15            |             1987 |       2021 |              34 |
| 129 | Laura       | 1987-07-16            |             1987 |       2021 |              34 |
| 130 | Mozhe       | 1987-07-17            |             1987 |       2021 |              34 |
| 131 | James       | 1987-07-18            |             1987 |       2021 |              34 |
| 132 | TJ          | 1987-07-19            |             1987 |       2021 |              34 |
| 133 | Jason       | 1987-07-20            |             1987 |       2021 |              34 |
| 134 | Michael     | 1987-07-21            |             1987 |       2021 |              34 |
| 135 | Ki          | 1987-07-22            |             1987 |       2021 |              34 |
| 136 | Hazel       | 1987-07-23            |             1987 |       2021 |              34 |
| 137 | Renske      | 1987-07-24            |             1987 |       2021 |              34 |
| 138 | Stephen     | 1987-07-25            |             1987 |       2021 |              34 |
| 139 | John        | 1987-07-26            |             1987 |       2021 |              34 |
| 140 | Joshua      | 1987-07-27            |             1987 |       2021 |              34 |
| 141 | Trenna      | 1987-07-28            |             1987 |       2021 |              34 |
| 142 | Curtis      | 1987-07-29            |             1987 |       2021 |              34 |
| 143 | Randall     | 1987-07-30            |             1987 |       2021 |              34 |
| 144 | Peter       | 1987-07-31            |             1987 |       2021 |              34 |
| 145 | John        | 1987-08-01            |             1987 |       2021 |              34 |
| 146 | Karen       | 1987-08-02            |             1987 |       2021 |              34 |
| 147 | Alberto     | 1987-08-03            |             1987 |       2021 |              34 |
| 148 | Gerald      | 1987-08-04            |             1987 |       2021 |              34 |
| 149 | Eleni       | 1987-08-05            |             1987 |       2021 |              34 |
| 150 | Peter       | 1987-08-06            |             1987 |       2021 |              34 |
| 151 | David       | 1987-08-07            |             1987 |       2021 |              34 |
| 152 | Peter       | 1987-08-08            |             1987 |       2021 |              34 |
| 153 | Christopher | 1987-08-09            |             1987 |       2021 |              34 |
| 154 | Nanette     | 1987-08-10            |             1987 |       2021 |              34 |
| 155 | Oliver      | 1987-08-11            |             1987 |       2021 |              34 |
| 156 | Janette     | 1987-08-12            |             1987 |       2021 |              34 |
| 157 | Patrick     | 1987-08-13            |             1987 |       2021 |              34 |
| 158 | Allan       | 1987-08-14            |             1987 |       2021 |              34 |
| 159 | Lindsey     | 1987-08-15            |             1987 |       2021 |              34 |
| 160 | Louise      | 1987-08-16            |             1987 |       2021 |              34 |
| 161 | Sarath      | 1987-08-17            |             1987 |       2021 |              34 |
| 162 | Clara       | 1987-08-18            |             1987 |       2021 |              34 |
| 163 | Danielle    | 1987-08-19            |             1987 |       2021 |              34 |
| 164 | Mattea      | 1987-08-20            |             1987 |       2021 |              34 |
| 165 | David       | 1987-08-21            |             1987 |       2021 |              34 |
| 166 | Sundar      | 1987-08-22            |             1987 |       2021 |              34 |
| 167 | Amit        | 1987-08-23            |             1987 |       2021 |              34 |
| 168 | Lisa        | 1987-08-24            |             1987 |       2021 |              34 |
| 169 | Harrison    | 1987-08-25            |             1987 |       2021 |              34 |
| 170 | Tayler      | 1987-08-26            |             1987 |       2021 |              34 |
| 171 | William     | 1987-08-27            |             1987 |       2021 |              34 |
| 172 | Elizabeth   | 1987-08-28            |             1987 |       2021 |              34 |
| 173 | Sundita     | 1987-08-29            |             1987 |       2021 |              34 |
| 174 | Ellen       | 1987-08-30            |             1987 |       2021 |              34 |
| 175 | Alyssa      | 1987-08-31            |             1987 |       2021 |              34 |
| 176 | Jonathon    | 1987-09-01            |             1987 |       2021 |              34 |
| 177 | Jack        | 1987-09-02            |             1987 |       2021 |              34 |
| 178 | Kimberely   | 1987-09-03            |             1987 |       2021 |              34 |
| 179 | Charles     | 1987-09-04            |             1987 |       2021 |              34 |
| 180 | Winston     | 1987-09-05            |             1987 |       2021 |              34 |
| 181 | Jean        | 1987-09-06            |             1987 |       2021 |              34 |
| 182 | Martha      | 1987-09-07            |             1987 |       2021 |              34 |
| 183 | Girard      | 1987-09-08            |             1987 |       2021 |              34 |
| 184 | Nandita     | 1987-09-09            |             1987 |       2021 |              34 |
| 185 | Alexis      | 1987-09-10            |             1987 |       2021 |              34 |
| 186 | Julia       | 1987-09-11            |             1987 |       2021 |              34 |
| 187 | Anthony     | 1987-09-12            |             1987 |       2021 |              34 |
| 188 | Kelly       | 1987-09-13            |             1987 |       2021 |              34 |
| 189 | Jennifer    | 1987-09-14            |             1987 |       2021 |              34 |
| 190 | Timothy     | 1987-09-15            |             1987 |       2021 |              34 |
| 191 | Randall     | 1987-09-16            |             1987 |       2021 |              34 |
| 192 | Sarah       | 1987-09-17            |             1987 |       2021 |              34 |
| 193 | Britney     | 1987-09-18            |             1987 |       2021 |              34 |
| 194 | Samuel      | 1987-09-19            |             1987 |       2021 |              34 |
| 195 | Vance       | 1987-09-20            |             1987 |       2021 |              34 |
| 196 | Alana       | 1987-09-21            |             1987 |       2021 |              34 |
| 197 | Kevin       | 1987-09-22            |             1987 |       2021 |              34 |
| 198 | Donald      | 1987-09-23            |             1987 |       2021 |              34 |
| 199 | Douglas     | 1987-09-24            |             1987 |       2021 |              34 |
| 200 | Jennifer    | 1987-09-25            |             1987 |       2021 |              34 |
| 201 | Michael     | 1987-09-26            |             1987 |       2021 |              34 |
| 202 | Pat         | 1987-09-27            |             1987 |       2021 |              34 |
| 203 | Susan       | 1987-09-28            |             1987 |       2021 |              34 |
| 204 | Hermann     | 1987-09-29            |             1987 |       2021 |              34 |
| 205 | Shelley     | 1987-09-30            |             1987 |       2021 |              34 |
| 206 | William     | 1987-10-01            |             1987 |       2021 |              34 |
+-----+-------------+-----------------------+------------------+------------+-----------------+

"La seguna opcion sin embargo, es calcular una edad aleatoria entre dos fechas apartes de la base de datos"

SELECT ('1997-12-29') AS 'FechaNacimiento',
YEAR(LAST_DAY(NOW())) AS 'Año Actual',
 TIMESTAMPDIFF(YEAR,'1997-12-29',CURDATE()) AS 'edad';

 MariaDB [bd_humanresources]> SELECT ('1997-12-29') AS 'FechaNacimiento',
    -> YEAR(LAST_DAY(NOW())) AS 'Año Actual',
    ->  TIMESTAMPDIFF(YEAR,'1997-12-29',CURDATE()) AS 'edad';
+-----------------+------------+------+
| FechaNacimiento | Año Actual | edad |
+-----------------+------------+------+
| 1997-12-29      |       2021 |   23 |
+-----------------+------------+------+

--4.  Write a query to get the current date in the following format.
--Sample date : 2014-09-04
--Output : September 4, 2014
--1.  Escriba una consulta para obtener la fecha actual en el siguiente formato.
--Fecha de muestra : 2014-09-04
--Producción : 4 de septiembre  de 2014

SELECT DATE_FORMAT(NOW(), '%Y-%m-%d') AS 'Fecha de muestra', DATE_FORMAT(NOW(), '%d de %M de %Y') AS 'Produccion';

MariaDB [db_humanresources]> SELECT DATE_FORMAT(NOW(), '%Y-%m-%d') AS 'Fecha de muestra', DATE_FORMAT(NOW(), '%d de %M de %Y') AS 'Produccion';
+------------------+------------------------+
| Fecha de muestra | Produccion             |
+------------------+------------------------+
| 2021-11-07       | 07 de November de 2021 |
+------------------+------------------------+

--5.  Write a query to extract the year from the current date.
--1.  Escriba una consulta para extraer el año de la fecha actual.

 SELECT DATE(NOW()) AS 'Fecha Actual',
 YEAR(LAST_DAY(NOW())) AS 'Año Actual',
 MONTH(NOW()) AS 'Mes Actual',
 DAY(NOW()) AS 'Dia Actual';

 MariaDB [bd_humanresources]>  SELECT DATE(NOW()) AS 'Fecha Actual',
    ->  YEAR(LAST_DAY(NOW())) AS 'Año Actual',
    ->  MONTH(NOW()) AS 'Mes Actual',
    ->  DAY(NOW()) AS 'Dia Actual';
+--------------+------------+------------+------------+
| Fecha Actual | Año Actual | Mes Actual | Dia Actual |
+--------------+------------+------------+------------+
| 2021-11-05   |       2021 |         11 |          5 |
+--------------+------------+------------+------------+

--6.  Write a query to get the current date in Thursday September 2014 format.
--1.  Escriba una consulta para obtener la fecha actual en formato jueves septiembre 2014.

SELECT EMPLOYEE_ID AS'ID', FIRST_NAME AS 'Empleado', 
HIRE_DATE AS 'FechaContratacion',
DATE_FORMAT(HIRE_DATE, '%W %M %Y') as 'Fecha de contratación'
FROM employees;

MariaDB [bd_humanresources]> SELECT EMPLOYEE_ID AS'ID', FIRST_NAME AS 'Empleado',
    -> HIRE_DATE AS 'FechaContratacion',
    -> DATE_FORMAT(HIRE_DATE, '%W %M %Y') as 'Fecha de contratación'
    -> FROM employees;
+-----+-------------+-------------------+--------------------------+
| ID  | Empleado    | FechaContratacion | Fecha de contratación    |
+-----+-------------+-------------------+--------------------------+
| 100 | Steven      | 1987-06-17        | Wednesday June 1987      |
| 101 | Neena       | 1987-06-18        | Thursday June 1987       |
| 102 | Lex         | 1987-06-19        | Friday June 1987         |
| 103 | Alexander   | 1987-06-20        | Saturday June 1987       |
| 104 | Bruce       | 1987-06-21        | Sunday June 1987         |
| 105 | David       | 1987-06-22        | Monday June 1987         |
| 106 | Valli       | 1987-06-23        | Tuesday June 1987        |
| 107 | Diana       | 1987-06-24        | Wednesday June 1987      |
| 108 | Nancy       | 1987-06-25        | Thursday June 1987       |
| 109 | Daniel      | 1987-06-26        | Friday June 1987         |
| 110 | John        | 1987-06-27        | Saturday June 1987       |
| 111 | Ismael      | 1987-06-28        | Sunday June 1987         |
| 112 | Jose Manuel | 1987-06-29        | Monday June 1987         |
| 113 | Luis        | 1987-06-30        | Tuesday June 1987        |
| 114 | Den         | 1987-07-01        | Wednesday July 1987      |
| 115 | Alexander   | 1987-07-02        | Thursday July 1987       |
| 116 | Shelli      | 1987-07-03        | Friday July 1987         |
| 117 | Sigal       | 1987-07-04        | Saturday July 1987       |
| 118 | Guy         | 1987-07-05        | Sunday July 1987         |
| 119 | Karen       | 1987-07-06        | Monday July 1987         |
| 120 | Matthew     | 1987-07-07        | Tuesday July 1987        |
| 121 | Adam        | 1987-07-08        | Wednesday July 1987      |
| 122 | Payam       | 1987-07-09        | Thursday July 1987       |
| 123 | Shanta      | 1987-07-10        | Friday July 1987         |
| 124 | Kevin       | 1987-07-11        | Saturday July 1987       |
| 125 | Julia       | 1987-07-12        | Sunday July 1987         |
| 126 | Irene       | 1987-07-13        | Monday July 1987         |
| 127 | James       | 1987-07-14        | Tuesday July 1987        |
| 128 | Steven      | 1987-07-15        | Wednesday July 1987      |
| 129 | Laura       | 1987-07-16        | Thursday July 1987       |
| 130 | Mozhe       | 1987-07-17        | Friday July 1987         |
| 131 | James       | 1987-07-18        | Saturday July 1987       |
| 132 | TJ          | 1987-07-19        | Sunday July 1987         |
| 133 | Jason       | 1987-07-20        | Monday July 1987         |
| 134 | Michael     | 1987-07-21        | Tuesday July 1987        |
| 135 | Ki          | 1987-07-22        | Wednesday July 1987      |
| 136 | Hazel       | 1987-07-23        | Thursday July 1987       |
| 137 | Renske      | 1987-07-24        | Friday July 1987         |
| 138 | Stephen     | 1987-07-25        | Saturday July 1987       |
| 139 | John        | 1987-07-26        | Sunday July 1987         |
| 140 | Joshua      | 1987-07-27        | Monday July 1987         |
| 141 | Trenna      | 1987-07-28        | Tuesday July 1987        |
| 142 | Curtis      | 1987-07-29        | Wednesday July 1987      |
| 143 | Randall     | 1987-07-30        | Thursday July 1987       |
| 144 | Peter       | 1987-07-31        | Friday July 1987         |
| 145 | John        | 1987-08-01        | Saturday August 1987     |
| 146 | Karen       | 1987-08-02        | Sunday August 1987       |
| 147 | Alberto     | 1987-08-03        | Monday August 1987       |
| 148 | Gerald      | 1987-08-04        | Tuesday August 1987      |
| 149 | Eleni       | 1987-08-05        | Wednesday August 1987    |
| 150 | Peter       | 1987-08-06        | Thursday August 1987     |
| 151 | David       | 1987-08-07        | Friday August 1987       |
| 152 | Peter       | 1987-08-08        | Saturday August 1987     |
| 153 | Christopher | 1987-08-09        | Sunday August 1987       |
| 154 | Nanette     | 1987-08-10        | Monday August 1987       |
| 155 | Oliver      | 1987-08-11        | Tuesday August 1987      |
| 156 | Janette     | 1987-08-12        | Wednesday August 1987    |
| 157 | Patrick     | 1987-08-13        | Thursday August 1987     |
| 158 | Allan       | 1987-08-14        | Friday August 1987       |
| 159 | Lindsey     | 1987-08-15        | Saturday August 1987     |
| 160 | Louise      | 1987-08-16        | Sunday August 1987       |
| 161 | Sarath      | 1987-08-17        | Monday August 1987       |
| 162 | Clara       | 1987-08-18        | Tuesday August 1987      |
| 163 | Danielle    | 1987-08-19        | Wednesday August 1987    |
| 164 | Mattea      | 1987-08-20        | Thursday August 1987     |
| 165 | David       | 1987-08-21        | Friday August 1987       |
| 166 | Sundar      | 1987-08-22        | Saturday August 1987     |
| 167 | Amit        | 1987-08-23        | Sunday August 1987       |
| 168 | Lisa        | 1987-08-24        | Monday August 1987       |
| 169 | Harrison    | 1987-08-25        | Tuesday August 1987      |
| 170 | Tayler      | 1987-08-26        | Wednesday August 1987    |
| 171 | William     | 1987-08-27        | Thursday August 1987     |
| 172 | Elizabeth   | 1987-08-28        | Friday August 1987       |
| 173 | Sundita     | 1987-08-29        | Saturday August 1987     |
| 174 | Ellen       | 1987-08-30        | Sunday August 1987       |
| 175 | Alyssa      | 1987-08-31        | Monday August 1987       |
| 176 | Jonathon    | 1987-09-01        | Tuesday September 1987   |
| 177 | Jack        | 1987-09-02        | Wednesday September 1987 |
| 178 | Kimberely   | 1987-09-03        | Thursday September 1987  |
| 179 | Charles     | 1987-09-04        | Friday September 1987    |
| 180 | Winston     | 1987-09-05        | Saturday September 1987  |
| 181 | Jean        | 1987-09-06        | Sunday September 1987    |
| 182 | Martha      | 1987-09-07        | Monday September 1987    |
| 183 | Girard      | 1987-09-08        | Tuesday September 1987   |
| 184 | Nandita     | 1987-09-09        | Wednesday September 1987 |
| 185 | Alexis      | 1987-09-10        | Thursday September 1987  |
| 186 | Julia       | 1987-09-11        | Friday September 1987    |
| 187 | Anthony     | 1987-09-12        | Saturday September 1987  |
| 188 | Kelly       | 1987-09-13        | Sunday September 1987    |
| 189 | Jennifer    | 1987-09-14        | Monday September 1987    |
| 190 | Timothy     | 1987-09-15        | Tuesday September 1987   |
| 191 | Randall     | 1987-09-16        | Wednesday September 1987 |
| 192 | Sarah       | 1987-09-17        | Thursday September 1987  |
| 193 | Britney     | 1987-09-18        | Friday September 1987    |
| 194 | Samuel      | 1987-09-19        | Saturday September 1987  |
| 195 | Vance       | 1987-09-20        | Sunday September 1987    |
| 196 | Alana       | 1987-09-21        | Monday September 1987    |
| 197 | Kevin       | 1987-09-22        | Tuesday September 1987   |
| 198 | Donald      | 1987-09-23        | Wednesday September 1987 |
| 199 | Douglas     | 1987-09-24        | Thursday September 1987  |
| 200 | Jennifer    | 1987-09-25        | Friday September 1987    |
| 201 | Michael     | 1987-09-26        | Saturday September 1987  |
| 202 | Pat         | 1987-09-27        | Sunday September 1987    |
| 203 | Susan       | 1987-09-28        | Monday September 1987    |
| 204 | Hermann     | 1987-09-29        | Tuesday September 1987   |
| 205 | Shelley     | 1987-09-30        | Wednesday September 1987 |
| 206 | William     | 1987-10-01        | Thursday October 1987    |
+-----+-------------+-------------------+--------------------------+

--7.  Write a query to get the first name and hire date from employees table where hire date between '1987-06-01' and '1987-07-30'
--1.  Escriba una consulta para obtener el nombre y la fecha de contratación de la tabla de empleados donde la fecha de contratación entre'1987-06-01'y '1987-07-30'

SELECT EMPLOYEE_ID AS 'Id', FIRST_NAME AS 'Empleado', HIRE_DATE AS 'FechaContratacion'
FROM employees
WHERE HIRE_DATE BETWEEN '1987-06-01' and '1987-07-30';

MariaDB [bd_humanresources]> SELECT EMPLOYEE_ID AS 'Id', FIRST_NAME AS 'Empleado', HIRE_DATE AS 'FechaContratacion'
    -> FROM employees
    -> WHERE HIRE_DATE BETWEEN '1987-06-01' and '1987-07-30';
+-----+-------------+-------------------+
| Id  | Empleado    | FechaContratacion |
+-----+-------------+-------------------+
| 100 | Steven      | 1987-06-17        |
| 101 | Neena       | 1987-06-18        |
| 102 | Lex         | 1987-06-19        |
| 103 | Alexander   | 1987-06-20        |
| 104 | Bruce       | 1987-06-21        |
| 105 | David       | 1987-06-22        |
| 106 | Valli       | 1987-06-23        |
| 107 | Diana       | 1987-06-24        |
| 108 | Nancy       | 1987-06-25        |
| 109 | Daniel      | 1987-06-26        |
| 110 | John        | 1987-06-27        |
| 111 | Ismael      | 1987-06-28        |
| 112 | Jose Manuel | 1987-06-29        |
| 113 | Luis        | 1987-06-30        |
| 114 | Den         | 1987-07-01        |
| 115 | Alexander   | 1987-07-02        |
| 116 | Shelli      | 1987-07-03        |
| 117 | Sigal       | 1987-07-04        |
| 118 | Guy         | 1987-07-05        |
| 119 | Karen       | 1987-07-06        |
| 120 | Matthew     | 1987-07-07        |
| 121 | Adam        | 1987-07-08        |
| 122 | Payam       | 1987-07-09        |
| 123 | Shanta      | 1987-07-10        |
| 124 | Kevin       | 1987-07-11        |
| 125 | Julia       | 1987-07-12        |
| 126 | Irene       | 1987-07-13        |
| 127 | James       | 1987-07-14        |
| 128 | Steven      | 1987-07-15        |
| 129 | Laura       | 1987-07-16        |
| 130 | Mozhe       | 1987-07-17        |
| 131 | James       | 1987-07-18        |
| 132 | TJ          | 1987-07-19        |
| 133 | Jason       | 1987-07-20        |
| 134 | Michael     | 1987-07-21        |
| 135 | Ki          | 1987-07-22        |
| 136 | Hazel       | 1987-07-23        |
| 137 | Renske      | 1987-07-24        |
| 138 | Stephen     | 1987-07-25        |
| 139 | John        | 1987-07-26        |
| 140 | Joshua      | 1987-07-27        |
| 141 | Trenna      | 1987-07-28        |
| 142 | Curtis      | 1987-07-29        |
| 143 | Randall     | 1987-07-30        |
+-----+-------------+-------------------+

--8.  Write a query to display the current date in the following format.
--Sample output : Thursday 4th September 2014 00:00:00
--1.  Escriba una consulta para mostrar la fecha actual en el siguiente formato. -
--Resultados de la muestra  :  Jueves  4 de  Septiembre de 2014 00:00:00

SELECT DATE_FORMAT(DATE(NOW()), '%W %d of %M of %Y') AS 'Today',
DATE_FORMAT(NOW(), "%H:%i:%S") AS "Hours",
DATE_FORMAT(NOW(), "%W %d of %M of %Y HOURS= %H:%i:%S") AS "Resultados de la Muestra"; 

MariaDB [bd_humanresources]> SELECT DATE_FORMAT(DATE(NOW()), '%W %d of %M of %Y') AS 'Today',
    -> DATE_FORMAT(NOW(), "%H:%i:%S") AS "Hours",
    -> DATE_FORMAT(NOW(), "%W %d of %M of %Y HOURS= %H:%i:%S") AS "Resultados de la Muestra";
+-------------------------------+----------+-----------------------------------------------+
| Today                         | Hours    | Resultados de la Muestra                      |
+-------------------------------+----------+-----------------------------------------------+
| Friday 05 of November of 2021 | 12:53:26 | Friday 05 of November of 2021 HOURS= 12:53:26 |
+-------------------------------+----------+-----------------------------------------------+


--9.  Write a query to display the current date in the following format: Sample output: 05/09/2014
--1.  Escriba una consulta para mostrar la fecha actual en el siguienteformato:  Salida de muestra: 05/09/2014

SELECT DATE_FORMAT(DATE(NOW()), '%d/%m/%Y') AS 'Today';


MariaDB [bd_humanresources]> SELECT DATE_FORMAT(DATE(NOW()), '%d/%m/%Y') AS 'Today';
+------------+
| Today      |
+------------+
| 05/11/2021 |
+------------+


--10. Write a query to get the firstname, lastname who joined in the month of June.
--1.  Escribe una consulta para obtener el nombre, apellido que se unió en el mes de junio.

SELECT CONCAT(FIRST_NAME," ",LAST_NAME) AS 'Empleado',
HIRE_DATE AS 'FechaContratacion',
DATE_FORMAT(HIRE_DATE, '%M') AS 'Mes de contratación'
FROM employees
WHERE DATE_FORMAT(HIRE_DATE, '%M') LIKE 'June';


MariaDB [bd_humanresources]> SELECT CONCAT(FIRST_NAME," ",LAST_NAME) AS 'Empleado',
    -> HIRE_DATE AS 'FechaContratacion',
    -> DATE_FORMAT(HIRE_DATE, '%M') AS 'Mes de contratación'
    -> FROM employees
    -> WHERE DATE_FORMAT(HIRE_DATE, '%M') LIKE 'June';
+-------------------+-------------------+---------------------+
| Empleado          | FechaContratacion | Mes de contratación |
+-------------------+-------------------+---------------------+
| Steven King       | 1987-06-17        | June                |
| Neena Kochhar     | 1987-06-18        | June                |
| Lex De Haan       | 1987-06-19        | June                |
| Alexander Hunold  | 1987-06-20        | June                |
| Bruce Ernst       | 1987-06-21        | June                |
| David Austin      | 1987-06-22        | June                |
| Valli Pataballa   | 1987-06-23        | June                |
| Diana Lorentz     | 1987-06-24        | June                |
| Nancy Greenberg   | 1987-06-25        | June                |
| Daniel Faviet     | 1987-06-26        | June                |
| John Chen         | 1987-06-27        | June                |
| Ismael Sciarra    | 1987-06-28        | June                |
| Jose Manuel Urman | 1987-06-29        | June                |
| Luis Popp         | 1987-06-30        | June                |
+-------------------+-------------------+---------------------+

--11. Write a query to get the years in which more than 10 employees joined.
--1.  Escribe una consulta para conocer los años en los que se unieron más de 10 empleados.

-- Para conocer el año en que fueron contratados varios de los trabajadores

SELECT CONCAT(FIRST_NAME," ",LAST_NAME) AS 'Empleado', YEAR(HIRE_DATE) AS 'Año de contratación'
FROM employees;

-- Ahora para contar cada año cuentos empleados hay, basta con agrupar los años distintos de contratacion y contar el numero de filas agrupadas por año

SELECT YEAR(HIRE_DATE) AS 'Año de contratación', COUNT(*) AS 'Cantidad Contratos'
FROM employees
GROUP BY YEAR(HIRE_DATE)
HAVING COUNT(HIRE_DATE)<10;

MariaDB [db_humanresources]> SELECT YEAR(HIRE_DATE) AS 'Año de contratación', COUNT(*) AS 'Cantidad Contratos'
    -> FROM employees
    -> GROUP BY YEAR(HIRE_DATE);
+---------------------+--------------------+
| Año de contratación | Cantidad Contratos |
+---------------------+--------------------+
|                1987 |                107 |
+---------------------+--------------------+

--12. Write a query to get first name of employees who joined in 1987.
--1.  Escriba una consulta para obtener el nombre de los empleados que se unieron en 1987.

SELECT CONCAT(FIRST_NAME," ",LAST_NAME) AS 'Empleado', YEAR(HIRE_DATE) AS 'Años de contratación'
FROM employees
WHERE YEAR(HIRE_DATE) = 1987;

MariaDB [db_humanresources]> SELECT CONCAT(FIRST_NAME," ",LAST_NAME) AS 'Empleado', YEAR(HIRE_DATE) AS 'Años de contratación'
    -> FROM employees
    -> WHERE YEAR(HIRE_DATE) = 1987;
+-------------------+----------------------+
| Empleado          | Años de contratación |
+-------------------+----------------------+
| Steven King       |                 1987 |
| Neena Kochhar     |                 1987 |
| Lex De Haan       |                 1987 |
| Alexander Hunold  |                 1987 |
| Bruce Ernst       |                 1987 |
| David Austin      |                 1987 |
| Valli Pataballa   |                 1987 |
| Diana Lorentz     |                 1987 |
| Nancy Greenberg   |                 1987 |
| Daniel Faviet     |                 1987 |
| John Chen         |                 1987 |
| Ismael Sciarra    |                 1987 |
| Jose Manuel Urman |                 1987 |
| Luis Popp         |                 1987 |
| Den Raphaely      |                 1987 |
| Alexander Khoo    |                 1987 |
| Shelli Baida      |                 1987 |
| Sigal Tobias      |                 1987 |
| Guy Himuro        |                 1987 |
| Karen Colmenares  |                 1987 |
| Matthew Weiss     |                 1987 |
| Adam Fripp        |                 1987 |
| Payam Kaufling    |                 1987 |
| Shanta Vollman    |                 1987 |
| Kevin Mourgos     |                 1987 |
| Julia Nayer       |                 1987 |
| Irene Mikkilineni |                 1987 |
| James Landry      |                 1987 |
| Steven Markle     |                 1987 |
| Laura Bissot      |                 1987 |
| Mozhe Atkinson    |                 1987 |
| James Marlow      |                 1987 |
| TJ Olson          |                 1987 |
| Jason Mallin      |                 1987 |
| Michael Rogers    |                 1987 |
| Ki Gee            |                 1987 |
| Hazel Philtanker  |                 1987 |
| Renske Ladwig     |                 1987 |
| Stephen Stiles    |                 1987 |
| John Seo          |                 1987 |
| Joshua Patel      |                 1987 |
| Trenna Rajs       |                 1987 |
| Curtis Davies     |                 1987 |
| Randall Matos     |                 1987 |
| Peter Vargas      |                 1987 |
| John Russell      |                 1987 |
| Karen Partners    |                 1987 |
| Alberto Errazuriz |                 1987 |
| Gerald Cambrault  |                 1987 |
| Eleni Zlotkey     |                 1987 |
| Peter Tucker      |                 1987 |
| David Bernstein   |                 1987 |
| Peter Hall        |                 1987 |
| Christopher Olsen |                 1987 |
| Nanette Cambrault |                 1987 |
| Oliver Tuvault    |                 1987 |
| Janette King      |                 1987 |
| Patrick Sully     |                 1987 |
| Allan McEwen      |                 1987 |
| Lindsey Smith     |                 1987 |
| Louise Doran      |                 1987 |
| Sarath Sewall     |                 1987 |
| Clara Vishney     |                 1987 |
| Danielle Greene   |                 1987 |
| Mattea Marvins    |                 1987 |
| David Lee         |                 1987 |
| Sundar Ande       |                 1987 |
| Amit Banda        |                 1987 |
| Lisa Ozer         |                 1987 |
| Harrison Bloom    |                 1987 |
| Tayler Fox        |                 1987 |
| William Smith     |                 1987 |
| Elizabeth Bates   |                 1987 |
| Sundita Kumar     |                 1987 |
| Ellen Abel        |                 1987 |
| Alyssa Hutton     |                 1987 |
| Jonathon Taylor   |                 1987 |
| Jack Livingston   |                 1987 |
| Kimberely Grant   |                 1987 |
| Charles Johnson   |                 1987 |
| Winston Taylor    |                 1987 |
| Jean Fleaur       |                 1987 |
| Martha Sullivan   |                 1987 |
| Girard Geoni      |                 1987 |
| Nandita Sarchand  |                 1987 |
| Alexis Bull       |                 1987 |
| Julia Dellinger   |                 1987 |
| Anthony Cabrio    |                 1987 |
| Kelly Chung       |                 1987 |
| Jennifer Dilly    |                 1987 |
| Timothy Gates     |                 1987 |
| Randall Perkins   |                 1987 |
| Sarah Bell        |                 1987 |
| Britney Everett   |                 1987 |
| Samuel McCain     |                 1987 |
| Vance Jones       |                 1987 |
| Alana Walsh       |                 1987 |
| Kevin Feeney      |                 1987 |
| Donald OConnell   |                 1987 |
| Douglas Grant     |                 1987 |
| Jennifer Whalen   |                 1987 |
| Michael Hartstein |                 1987 |
| Pat Fay           |                 1987 |
| Susan Mavris      |                 1987 |
| Hermann Baer      |                 1987 |
| Shelley Higgins   |                 1987 |
| William Gietz     |                 1987 |
+-------------------+----------------------+

--13. Write a query to get first name, hire date and experience of the employees.
--1.  Escriba una consulta para obtener el nombre, la fecha de contratación y la experiencia de los empleados.

SELECT CONCAT(FIRST_NAME," ",LAST_NAME) AS 'Empleado', 
YEAR(HIRE_DATE) AS 'Fecha contratación', 
(YEAR(NOW()) - YEAR(HIRE_DATE)) AS 'Experiencia Empresa'
FROM employees;


MariaDB [db_humanresources]> SELECT CONCAT(FIRST_NAME," ",LAST_NAME) AS 'Empleado',
    -> YEAR(HIRE_DATE) AS 'Fecha contratación',
    -> (YEAR(NOW()) - YEAR(HIRE_DATE)) AS 'Experiencia Empresa'
    -> FROM employees;
+-------------------+--------------------+---------------------+
| Empleado          | Fecha contratación | Experiencia Empresa |
+-------------------+--------------------+---------------------+
| Steven King       |               1987 |                  34 |
| Neena Kochhar     |               1987 |                  34 |
| Lex De Haan       |               1987 |                  34 |
| Alexander Hunold  |               1987 |                  34 |
| Bruce Ernst       |               1987 |                  34 |
| David Austin      |               1987 |                  34 |
| Valli Pataballa   |               1987 |                  34 |
| Diana Lorentz     |               1987 |                  34 |
| Nancy Greenberg   |               1987 |                  34 |
| Daniel Faviet     |               1987 |                  34 |
| John Chen         |               1987 |                  34 |
| Ismael Sciarra    |               1987 |                  34 |
| Jose Manuel Urman |               1987 |                  34 |
| Luis Popp         |               1987 |                  34 |
| Den Raphaely      |               1987 |                  34 |
| Alexander Khoo    |               1987 |                  34 |
| Shelli Baida      |               1987 |                  34 |
| Sigal Tobias      |               1987 |                  34 |
| Guy Himuro        |               1987 |                  34 |
| Karen Colmenares  |               1987 |                  34 |
| Matthew Weiss     |               1987 |                  34 |
| Adam Fripp        |               1987 |                  34 |
| Payam Kaufling    |               1987 |                  34 |
| Shanta Vollman    |               1987 |                  34 |
| Kevin Mourgos     |               1987 |                  34 |
| Julia Nayer       |               1987 |                  34 |
| Irene Mikkilineni |               1987 |                  34 |
| James Landry      |               1987 |                  34 |
| Steven Markle     |               1987 |                  34 |
| Laura Bissot      |               1987 |                  34 |
| Mozhe Atkinson    |               1987 |                  34 |
| James Marlow      |               1987 |                  34 |
| TJ Olson          |               1987 |                  34 |
| Jason Mallin      |               1987 |                  34 |
| Michael Rogers    |               1987 |                  34 |
| Ki Gee            |               1987 |                  34 |
| Hazel Philtanker  |               1987 |                  34 |
| Renske Ladwig     |               1987 |                  34 |
| Stephen Stiles    |               1987 |                  34 |
| John Seo          |               1987 |                  34 |
| Joshua Patel      |               1987 |                  34 |
| Trenna Rajs       |               1987 |                  34 |
| Curtis Davies     |               1987 |                  34 |
| Randall Matos     |               1987 |                  34 |
| Peter Vargas      |               1987 |                  34 |
| John Russell      |               1987 |                  34 |
| Karen Partners    |               1987 |                  34 |
| Alberto Errazuriz |               1987 |                  34 |
| Gerald Cambrault  |               1987 |                  34 |
| Eleni Zlotkey     |               1987 |                  34 |
| Peter Tucker      |               1987 |                  34 |
| David Bernstein   |               1987 |                  34 |
| Peter Hall        |               1987 |                  34 |
| Christopher Olsen |               1987 |                  34 |
| Nanette Cambrault |               1987 |                  34 |
| Oliver Tuvault    |               1987 |                  34 |
| Janette King      |               1987 |                  34 |
| Patrick Sully     |               1987 |                  34 |
| Allan McEwen      |               1987 |                  34 |
| Lindsey Smith     |               1987 |                  34 |
| Louise Doran      |               1987 |                  34 |
| Sarath Sewall     |               1987 |                  34 |
| Clara Vishney     |               1987 |                  34 |
| Danielle Greene   |               1987 |                  34 |
| Mattea Marvins    |               1987 |                  34 |
| David Lee         |               1987 |                  34 |
| Sundar Ande       |               1987 |                  34 |
| Amit Banda        |               1987 |                  34 |
| Lisa Ozer         |               1987 |                  34 |
| Harrison Bloom    |               1987 |                  34 |
| Tayler Fox        |               1987 |                  34 |
| William Smith     |               1987 |                  34 |
| Elizabeth Bates   |               1987 |                  34 |
| Sundita Kumar     |               1987 |                  34 |
| Ellen Abel        |               1987 |                  34 |
| Alyssa Hutton     |               1987 |                  34 |
| Jonathon Taylor   |               1987 |                  34 |
| Jack Livingston   |               1987 |                  34 |
| Kimberely Grant   |               1987 |                  34 |
| Charles Johnson   |               1987 |                  34 |
| Winston Taylor    |               1987 |                  34 |
| Jean Fleaur       |               1987 |                  34 |
| Martha Sullivan   |               1987 |                  34 |
| Girard Geoni      |               1987 |                  34 |
| Nandita Sarchand  |               1987 |                  34 |
| Alexis Bull       |               1987 |                  34 |
| Julia Dellinger   |               1987 |                  34 |
| Anthony Cabrio    |               1987 |                  34 |
| Kelly Chung       |               1987 |                  34 |
| Jennifer Dilly    |               1987 |                  34 |
| Timothy Gates     |               1987 |                  34 |
| Randall Perkins   |               1987 |                  34 |
| Sarah Bell        |               1987 |                  34 |
| Britney Everett   |               1987 |                  34 |
| Samuel McCain     |               1987 |                  34 |
| Vance Jones       |               1987 |                  34 |
| Alana Walsh       |               1987 |                  34 |
| Kevin Feeney      |               1987 |                  34 |
| Donald OConnell   |               1987 |                  34 |
| Douglas Grant     |               1987 |                  34 |
| Jennifer Whalen   |               1987 |                  34 |
| Michael Hartstein |               1987 |                  34 |
| Pat Fay           |               1987 |                  34 |
| Susan Mavris      |               1987 |                  34 |
| Hermann Baer      |               1987 |                  34 |
| Shelley Higgins   |               1987 |                  34 |
| William Gietz     |               1987 |                  34 |
+-------------------+--------------------+---------------------+

--14. Write a query to get the department ID, year, and number of employees joined.
--1.  Escriba una consulta para obtener el ID del departamento, el año y el número de empleados que se unieron.

SELECT d.DEPARTMENT_ID, d.DEPARTMENT_NAME, YEAR(e.HIRE_DATE) AS 'Año de contratación', COUNT(e.HIRE_DATE) AS 'Cantidad Contratos'
FROM employees AS e
INNER JOIN departments AS d
ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
GROUP BY d.DEPARTMENT_NAME ;

MariaDB [db_humanresources]> SELECT d.DEPARTMENT_ID, d.DEPARTMENT_NAME, YEAR(e.HIRE_DATE) AS 'Año de contratación', COUNT(e.HIRE_DATE) AS 'Cantidad Contratos'
    -> FROM employees AS e
    -> INNER JOIN departments AS d
    -> ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
    -> GROUP BY d.DEPARTMENT_NAME ;
+---------------+------------------+---------------------+--------------------+
| DEPARTMENT_ID | DEPARTMENT_NAME  | Año de contratación | Cantidad Contratos |
+---------------+------------------+---------------------+--------------------+
|           110 | Accounting       |                1987 |                  2 |
|            10 | Administration   |                1987 |                  1 |
|            90 | Executive        |                1987 |                  3 |
|           100 | Finance          |                1987 |                  6 |
|            40 | Human Resources  |                1987 |                  1 |
|            60 | IT               |                1987 |                  5 |
|            20 | Marketing        |                1987 |                  2 |
|            70 | Public Relations |                1987 |                  1 |
|            30 | Purchasing       |                1987 |                  6 |
|            80 | Sales            |                1987 |                 34 |
|            50 | Shipping         |                1987 |                 45 |
+---------------+------------------+---------------------+--------------------+