NOTA: Este archivo a pesar de su formato SQL, no debe correrse en software de Databases, debe abrirse en un editor de texto plano como Bloc de Notas o bien cambiar la extencion a ".txt".


--Datos del Estudiante:

-- Nombre: Ing.Luis Felipe Narvaez Gomez
-- Facultad: Ingenieria de Sistemas
-- Universidad: Santo Tomas seccional Tunja
-- Materia: Bases de Datos
-- Semestre: 2021-2

-- ................................................................................. MySQL Basic Select Statement  .................................................................................

-- 1.  Write a query to display the names (first_name, last_name) using alias name "First Name", "Last Name".
-- 1. Escriba una consulta para mostrar los nombres (first_name, last_name) utilizando el nombre de alias "Nombre", "Apellido".

MariaDB [bd_humanresources]> SELECT first_name AS 'Nombre', last_name AS 'Apellido' FROM employees;
+-------------+-------------+
| Nombre      | Apellido    |
+-------------+-------------+
| Ellen       | Abel        |
| Sundar      | Ande        |
| Mozhe       | Atkinson    |
| David       | Austin      |
| Hermann     | Baer        |
| Shelli      | Baida       |
| Amit        | Banda       |
| Elizabeth   | Bates       |
| Sarah       | Bell        |
| David       | Bernstein   |
| Laura       | Bissot      |
| Harrison    | Bloom       |
| Alexis      | Bull        |
| Anthony     | Cabrio      |
| Gerald      | Cambrault   |
| Nanette     | Cambrault   |
| John        | Chen        |
| Kelly       | Chung       |
| Karen       | Colmenares  |
| Curtis      | Davies      |
| Lex         | De Haan     |
| Julia       | Dellinger   |
| Jennifer    | Dilly       |
| Louise      | Doran       |
| Bruce       | Ernst       |
| Alberto     | Errazuriz   |
| Britney     | Everett     |
| Daniel      | Faviet      |
| Pat         | Fay         |
| Kevin       | Feeney      |
| Jean        | Fleaur      |
| Tayler      | Fox         |
| Adam        | Fripp       |
| Timothy     | Gates       |
| Ki          | Gee         |
| Girard      | Geoni       |
| William     | Gietz       |
| Douglas     | Grant       |
| Kimberely   | Grant       |
| Nancy       | Greenberg   |
| Danielle    | Greene      |
| Peter       | Hall        |
| Michael     | Hartstein   |
| Shelley     | Higgins     |
| Guy         | Himuro      |
| Alexander   | Hunold      |
| Alyssa      | Hutton      |
| Charles     | Johnson     |
| Vance       | Jones       |
| Payam       | Kaufling    |
| Alexander   | Khoo        |
| Janette     | King        |
| Steven      | King        |
| Neena       | Kochhar     |
| Sundita     | Kumar       |
| Renske      | Ladwig      |
| James       | Landry      |
| David       | Lee         |
| Jack        | Livingston  |
| Diana       | Lorentz     |
| Jason       | Mallin      |
| Steven      | Markle      |
| James       | Marlow      |
| Mattea      | Marvins     |
| Randall     | Matos       |
| Susan       | Mavris      |
| Samuel      | McCain      |
| Allan       | McEwen      |
| Irene       | Mikkilineni |
| Kevin       | Mourgos     |
| Julia       | Nayer       |
| Donald      | OConnell    |
| Christopher | Olsen       |
| TJ          | Olson       |
| Lisa        | Ozer        |
| Karen       | Partners    |
| Valli       | Pataballa   |
| Joshua      | Patel       |
| Randall     | Perkins     |
| Hazel       | Philtanker  |
| Luis        | Popp        |
| Trenna      | Rajs        |
| Den         | Raphaely    |
| Michael     | Rogers      |
| John        | Russell     |
| Nandita     | Sarchand    |
| Ismael      | Sciarra     |
| John        | Seo         |
| Sarath      | Sewall      |
| Lindsey     | Smith       |
| William     | Smith       |
| Stephen     | Stiles      |
| Martha      | Sullivan    |
| Patrick     | Sully       |
| Jonathon    | Taylor      |
| Winston     | Taylor      |
| Sigal       | Tobias      |
| Peter       | Tucker      |
| Oliver      | Tuvault     |
| Jose Manuel | Urman       |
| Peter       | Vargas      |
| Clara       | Vishney     |
| Shanta      | Vollman     |
| Alana       | Walsh       |
| Matthew     | Weiss       |
| Jennifer    | Whalen      |
| Eleni       | Zlotkey     |
+-------------+-------------+

-- 2.  Write a query to get unique department ID from employee table.
-- 2.  Escriba una consulta para obtener un ID de departamento único de la tabla de empleados.

MariaDB [bd_humanresources]> SELECT DISTINCT department_id FROM employees;
+---------------+
| department_id |
+---------------+
|             0 |
|            10 |
|            20 |
|            30 |
|            40 |
|            50 |
|            60 |
|            70 |
|            80 |
|            90 |
|           100 |
|           110 |
+---------------+

MariaDB [bd_humanresources]> SELECT department_id FROM employees GROUP BY department_id;
+---------------+
| department_id |
+---------------+
|             0 |
|            10 |
|            20 |
|            30 |
|            40 |
|            50 |
|            60 |
|            70 |
|            80 |
|            90 |
|           100 |
|           110 |
+---------------+

SELECT DISTINCT e.department_id, d.department_name
FROM employees AS e
INNER JOIN departments AS d
ON e.department_id  = d.department_id;

MariaDB [bd_humanresources]> SELECT DISTINCT e.department_id, d.department_name
    -> FROM employees AS e
    -> INNER JOIN departments AS d
    -> ON e.department_id  = d.department_id;
+---------------+------------------+
| department_id | department_name  |
+---------------+------------------+
|            10 | Administration   |
|            20 | Marketing        |
|            30 | Purchasing       |
|            40 | Human Resources  |
|            50 | Shipping         |
|            60 | IT               |
|            70 | Public Relations |
|            80 | Sales            |
|            90 | Executive        |
|           100 | Finance          |
|           110 | Accounting       |
+---------------+------------------+


-- 3.  Write a query to get the details of all employees according to first name in descending order.
-- 3.  Escriba una consulta para obtener los detalles de todos los empleados según el nombre en orden descendente.

MariaDB [bd_humanresources]> SELECT * FROM employees ORDER BY first_name DESC;
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME  | LAST_NAME   | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
|         180 | Winston     | Taylor      | WTAYLOR  | 650.507.9876       | 1987-09-05 | SH_CLERK   |  3200.00 |           0.00 |        120 |            50 |
|         206 | William     | Gietz       | WGIETZ   | 515.123.8181       | 1987-10-01 | AC_ACCOUNT |  8300.00 |           0.00 |        205 |           110 |
|         171 | William     | Smith       | WSMITH   | 011.44.1343.629268 | 1987-08-27 | SA_REP     |  7400.00 |           0.15 |        148 |            80 |
|         195 | Vance       | Jones       | VJONES   | 650.501.4876       | 1987-09-20 | SH_CLERK   |  2800.00 |           0.00 |        123 |            50 |
|         106 | Valli       | Pataballa   | VPATABAL | 590.423.4560       | 1987-06-23 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |
|         141 | Trenna      | Rajs        | TRAJS    | 650.121.8009       | 1987-07-28 | ST_CLERK   |  3500.00 |           0.00 |        124 |            50 |
|         132 | TJ          | Olson       | TJOLSON  | 650.124.8234       | 1987-07-19 | ST_CLERK   |  2100.00 |           0.00 |        121 |            50 |
|         190 | Timothy     | Gates       | TGATES   | 650.505.3876       | 1987-09-15 | SH_CLERK   |  2900.00 |           0.00 |        122 |            50 |
|         170 | Tayler      | Fox         | TFOX     | 011.44.1343.729268 | 1987-08-26 | SA_REP     |  9600.00 |           0.20 |        148 |            80 |
|         203 | Susan       | Mavris      | SMAVRIS  | 515.123.7777       | 1987-09-28 | HR_REP     |  6500.00 |           0.00 |        101 |            40 |
|         173 | Sundita     | Kumar       | SKUMAR   | 011.44.1343.329268 | 1987-08-29 | SA_REP     |  6100.00 |           0.10 |        148 |            80 |
|         166 | Sundar      | Ande        | SANDE    | 011.44.1346.629268 | 1987-08-22 | SA_REP     |  6400.00 |           0.10 |        147 |            80 |
|         100 | Steven      | King        | SKING    | 515.123.4567       | 1987-06-17 | AD_PRES    | 24000.00 |           0.00 |          0 |            90 |
|         128 | Steven      | Markle      | SMARKLE  | 650.124.1434       | 1987-07-15 | ST_CLERK   |  2200.00 |           0.00 |        120 |            50 |
|         138 | Stephen     | Stiles      | SSTILES  | 650.121.2034       | 1987-07-25 | ST_CLERK   |  3200.00 |           0.00 |        123 |            50 |
|         117 | Sigal       | Tobias      | STOBIAS  | 515.127.4564       | 1987-07-04 | PU_CLERK   |  2800.00 |           0.00 |        114 |            30 |
|         116 | Shelli      | Baida       | SBAIDA   | 515.127.4563       | 1987-07-03 | PU_CLERK   |  2900.00 |           0.00 |        114 |            30 |
|         205 | Shelley     | Higgins     | SHIGGINS | 515.123.8080       | 1987-09-30 | AC_MGR     | 12000.00 |           0.00 |        101 |           110 |
|         123 | Shanta      | Vollman     | SVOLLMAN | 650.123.4234       | 1987-07-10 | ST_MAN     |  6500.00 |           0.00 |        100 |            50 |
|         161 | Sarath      | Sewall      | SSEWALL  | 011.44.1345.529268 | 1987-08-17 | SA_REP     |  7000.00 |           0.25 |        146 |            80 |
|         192 | Sarah       | Bell        | SBELL    | 650.501.1876       | 1987-09-17 | SH_CLERK   |  4000.00 |           0.00 |        123 |            50 |
|         194 | Samuel      | McCain      | SMCCAIN  | 650.501.3876       | 1987-09-19 | SH_CLERK   |  3200.00 |           0.00 |        123 |            50 |
|         137 | Renske      | Ladwig      | RLADWIG  | 650.121.1234       | 1987-07-24 | ST_CLERK   |  3600.00 |           0.00 |        123 |            50 |
|         143 | Randall     | Matos       | RMATOS   | 650.121.2874       | 1987-07-30 | ST_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         191 | Randall     | Perkins     | RPERKINS | 650.505.4876       | 1987-09-16 | SH_CLERK   |  2500.00 |           0.00 |        122 |            50 |
|         144 | Peter       | Vargas      | PVARGAS  | 650.121.2004       | 1987-07-31 | ST_CLERK   |  2500.00 |           0.00 |        124 |            50 |
|         152 | Peter       | Hall        | PHALL    | 011.44.1344.478968 | 1987-08-08 | SA_REP     |  9000.00 |           0.25 |        145 |            80 |
|         150 | Peter       | Tucker      | PTUCKER  | 011.44.1344.129268 | 1987-08-06 | SA_REP     | 10000.00 |           0.30 |        145 |            80 |
|         122 | Payam       | Kaufling    | PKAUFLIN | 650.123.3234       | 1987-07-09 | ST_MAN     |  7900.00 |           0.00 |        100 |            50 |
|         157 | Patrick     | Sully       | PSULLY   | 011.44.1345.929268 | 1987-08-13 | SA_REP     |  9500.00 |           0.35 |        146 |            80 |
|         202 | Pat         | Fay         | PFAY     | 603.123.6666       | 1987-09-27 | MK_REP     |  6000.00 |           0.00 |        201 |            20 |
|         155 | Oliver      | Tuvault     | OTUVAULT | 011.44.1344.486508 | 1987-08-11 | SA_REP     |  7000.00 |           0.15 |        145 |            80 |
|         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568       | 1987-06-18 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
|         154 | Nanette     | Cambrault   | NCAMBRAU | 011.44.1344.987668 | 1987-08-10 | SA_REP     |  7500.00 |           0.20 |        145 |            80 |
|         184 | Nandita     | Sarchand    | NSARCHAN | 650.509.1876       | 1987-09-09 | SH_CLERK   |  4200.00 |           0.00 |        121 |            50 |
|         108 | Nancy       | Greenberg   | NGREENBE | 515.124.4569       | 1987-06-25 | FI_MGR     | 12000.00 |           0.00 |        101 |           100 |
|         130 | Mozhe       | Atkinson    | MATKINSO | 650.124.6234       | 1987-07-17 | ST_CLERK   |  2800.00 |           0.00 |        121 |            50 |
|         201 | Michael     | Hartstein   | MHARTSTE | 515.123.5555       | 1987-09-26 | MK_MAN     | 13000.00 |           0.00 |        100 |            20 |
|         134 | Michael     | Rogers      | MROGERS  | 650.127.1834       | 1987-07-21 | ST_CLERK   |  2900.00 |           0.00 |        122 |            50 |
|         120 | Matthew     | Weiss       | MWEISS   | 650.123.1234       | 1987-07-07 | ST_MAN     |  8000.00 |           0.00 |        100 |            50 |
|         164 | Mattea      | Marvins     | MMARVINS | 011.44.1346.329268 | 1987-08-20 | SA_REP     |  7200.00 |           0.10 |        147 |            80 |
|         182 | Martha      | Sullivan    | MSULLIVA | 650.507.9878       | 1987-09-07 | SH_CLERK   |  2500.00 |           0.00 |        120 |            50 |
|         113 | Luis        | Popp        | LPOPP    | 515.124.4567       | 1987-06-30 | FI_ACCOUNT |  6900.00 |           0.00 |        108 |           100 |
|         160 | Louise      | Doran       | LDORAN   | 011.44.1345.629268 | 1987-08-16 | SA_REP     |  7500.00 |           0.30 |        146 |            80 |
|         168 | Lisa        | Ozer        | LOZER    | 011.44.1343.929268 | 1987-08-24 | SA_REP     | 11500.00 |           0.25 |        148 |            80 |
|         159 | Lindsey     | Smith       | LSMITH   | 011.44.1345.729268 | 1987-08-15 | SA_REP     |  8000.00 |           0.30 |        146 |            80 |
|         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569       | 1987-06-19 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
|         129 | Laura       | Bissot      | LBISSOT  | 650.124.5234       | 1987-07-16 | ST_CLERK   |  3300.00 |           0.00 |        121 |            50 |
|         178 | Kimberely   | Grant       | KGRANT   | 011.44.1644.429263 | 1987-09-03 | SA_REP     |  7000.00 |           0.15 |        149 |             0 |
|         135 | Ki          | Gee         | KGEE     | 650.127.1734       | 1987-07-22 | ST_CLERK   |  2400.00 |           0.00 |        122 |            50 |
|         197 | Kevin       | Feeney      | KFEENEY  | 650.507.9822       | 1987-09-22 | SH_CLERK   |  3000.00 |           0.00 |        124 |            50 |
|         124 | Kevin       | Mourgos     | KMOURGOS | 650.123.5234       | 1987-07-11 | ST_MAN     |  5800.00 |           0.00 |        100 |            50 |
|         188 | Kelly       | Chung       | KCHUNG   | 650.505.1876       | 1987-09-13 | SH_CLERK   |  3800.00 |           0.00 |        122 |            50 |
|         146 | Karen       | Partners    | KPARTNER | 011.44.1344.467268 | 1987-08-02 | SA_MAN     | 13500.00 |           0.30 |        100 |            80 |
|         119 | Karen       | Colmenares  | KCOLMENA | 515.127.4566       | 1987-07-06 | PU_CLERK   |  2500.00 |           0.00 |        114 |            30 |
|         186 | Julia       | Dellinger   | JDELLING | 650.509.3876       | 1987-09-11 | SH_CLERK   |  3400.00 |           0.00 |        121 |            50 |
|         125 | Julia       | Nayer       | JNAYER   | 650.124.1214       | 1987-07-12 | ST_CLERK   |  3200.00 |           0.00 |        120 |            50 |
|         140 | Joshua      | Patel       | JPATEL   | 650.121.1834       | 1987-07-27 | ST_CLERK   |  2500.00 |           0.00 |        123 |            50 |
|         112 | Jose Manuel | Urman       | JMURMAN  | 515.124.4469       | 1987-06-29 | FI_ACCOUNT |  7800.00 |           0.00 |        108 |           100 |
|         176 | Jonathon    | Taylor      | JTAYLOR  | 011.44.1644.429265 | 1987-09-01 | SA_REP     |  8600.00 |           0.20 |        149 |            80 |
|         145 | John        | Russell     | JRUSSEL  | 011.44.1344.429268 | 1987-08-01 | SA_MAN     | 14000.00 |           0.40 |        100 |            80 |
|         110 | John        | Chen        | JCHEN    | 515.124.4269       | 1987-06-27 | FI_ACCOUNT |  8200.00 |           0.00 |        108 |           100 |
|         139 | John        | Seo         | JSEO     | 650.121.2019       | 1987-07-26 | ST_CLERK   |  2700.00 |           0.00 |        123 |            50 |
|         200 | Jennifer    | Whalen      | JWHALEN  | 515.123.4444       | 1987-09-25 | AD_ASST    |  4400.00 |           0.00 |        101 |            10 |
|         189 | Jennifer    | Dilly       | JDILLY   | 650.505.2876       | 1987-09-14 | SH_CLERK   |  3600.00 |           0.00 |        122 |            50 |
|         181 | Jean        | Fleaur      | JFLEAUR  | 650.507.9877       | 1987-09-06 | SH_CLERK   |  3100.00 |           0.00 |        120 |            50 |
|         133 | Jason       | Mallin      | JMALLIN  | 650.127.1934       | 1987-07-20 | ST_CLERK   |  3300.00 |           0.00 |        122 |            50 |
|         156 | Janette     | King        | JKING    | 011.44.1345.429268 | 1987-08-12 | SA_REP     | 10000.00 |           0.35 |        146 |            80 |
|         127 | James       | Landry      | JLANDRY  | 650.124.1334       | 1987-07-14 | ST_CLERK   |  2400.00 |           0.00 |        120 |            50 |
|         131 | James       | Marlow      | JAMRLOW  | 650.124.7234       | 1987-07-18 | ST_CLERK   |  2500.00 |           0.00 |        121 |            50 |
|         177 | Jack        | Livingston  | JLIVINGS | 011.44.1644.429264 | 1987-09-02 | SA_REP     |  8400.00 |           0.20 |        149 |            80 |
|         111 | Ismael      | Sciarra     | ISCIARRA | 515.124.4369       | 1987-06-28 | FI_ACCOUNT |  7700.00 |           0.00 |        108 |           100 |
|         126 | Irene       | Mikkilineni | IMIKKILI | 650.124.1224       | 1987-07-13 | ST_CLERK   |  2700.00 |           0.00 |        120 |            50 |
|         204 | Hermann     | Baer        | HBAER    | 515.123.8888       | 1987-09-29 | PR_REP     | 10000.00 |           0.00 |        101 |            70 |
|         136 | Hazel       | Philtanker  | HPHILTAN | 650.127.1634       | 1987-07-23 | ST_CLERK   |  2200.00 |           0.00 |        122 |            50 |
|         169 | Harrison    | Bloom       | HBLOOM   | 011.44.1343.829268 | 1987-08-25 | SA_REP     | 10000.00 |           0.20 |        148 |            80 |
|         118 | Guy         | Himuro      | GHIMURO  | 515.127.4565       | 1987-07-05 | PU_CLERK   |  2600.00 |           0.00 |        114 |            30 |
|         183 | Girard      | Geoni       | GGEONI   | 650.507.9879       | 1987-09-08 | SH_CLERK   |  2800.00 |           0.00 |        120 |            50 |
|         148 | Gerald      | Cambrault   | GCAMBRAU | 011.44.1344.619268 | 1987-08-04 | SA_MAN     | 11000.00 |           0.30 |        100 |            80 |
|         174 | Ellen       | Abel        | EABEL    | 011.44.1644.429267 | 1987-08-30 | SA_REP     | 11000.00 |           0.30 |        149 |            80 |
|         172 | Elizabeth   | Bates       | EBATES   | 011.44.1343.529268 | 1987-08-28 | SA_REP     |  7300.00 |           0.15 |        148 |            80 |
|         149 | Eleni       | Zlotkey     | EZLOTKEY | 011.44.1344.429018 | 1987-08-05 | SA_MAN     | 10500.00 |           0.20 |        100 |            80 |
|         199 | Douglas     | Grant       | DGRANT   | 650.507.9844       | 1987-09-24 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         198 | Donald      | OConnell    | DOCONNEL | 650.507.9833       | 1987-09-23 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         107 | Diana       | Lorentz     | DLORENTZ | 590.423.5567       | 1987-06-24 | IT_PROG    |  4200.00 |           0.00 |        103 |            60 |
|         114 | Den         | Raphaely    | DRAPHEAL | 515.127.4561       | 1987-07-01 | PU_MAN     | 11000.00 |           0.00 |        100 |            30 |
|         105 | David       | Austin      | DAUSTIN  | 590.423.4569       | 1987-06-22 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |
|         165 | David       | Lee         | DLEE     | 011.44.1346.529268 | 1987-08-21 | SA_REP     |  6800.00 |           0.10 |        147 |            80 |
|         151 | David       | Bernstein   | DBERNSTE | 011.44.1344.345268 | 1987-08-07 | SA_REP     |  9500.00 |           0.25 |        145 |            80 |
|         163 | Danielle    | Greene      | DGREENE  | 011.44.1346.229268 | 1987-08-19 | SA_REP     |  9500.00 |           0.15 |        147 |            80 |
|         109 | Daniel      | Faviet      | DFAVIET  | 515.124.4169       | 1987-06-26 | FI_ACCOUNT |  9000.00 |           0.00 |        108 |           100 |
|         142 | Curtis      | Davies      | CDAVIES  | 650.121.2994       | 1987-07-29 | ST_CLERK   |  3100.00 |           0.00 |        124 |            50 |
|         162 | Clara       | Vishney     | CVISHNEY | 011.44.1346.129268 | 1987-08-18 | SA_REP     | 10500.00 |           0.25 |        147 |            80 |
|         153 | Christopher | Olsen       | COLSEN   | 011.44.1344.498718 | 1987-08-09 | SA_REP     |  8000.00 |           0.20 |        145 |            80 |
|         179 | Charles     | Johnson     | CJOHNSON | 011.44.1644.429262 | 1987-09-04 | SA_REP     |  6200.00 |           0.10 |        149 |            80 |
|         104 | Bruce       | Ernst       | BERNST   | 590.423.4568       | 1987-06-21 | IT_PROG    |  6000.00 |           0.00 |        103 |            60 |
|         193 | Britney     | Everett     | BEVERETT | 650.501.2876       | 1987-09-18 | SH_CLERK   |  3900.00 |           0.00 |        123 |            50 |
|         187 | Anthony     | Cabrio      | ACABRIO  | 650.509.4876       | 1987-09-12 | SH_CLERK   |  3000.00 |           0.00 |        121 |            50 |
|         167 | Amit        | Banda       | ABANDA   | 011.44.1346.729268 | 1987-08-23 | SA_REP     |  6200.00 |           0.10 |        147 |            80 |
|         175 | Alyssa      | Hutton      | AHUTTON  | 011.44.1644.429266 | 1987-08-31 | SA_REP     |  8800.00 |           0.25 |        149 |            80 |
|         158 | Allan       | McEwen      | AMCEWEN  | 011.44.1345.829268 | 1987-08-14 | SA_REP     |  9000.00 |           0.35 |        146 |            80 |
|         185 | Alexis      | Bull        | ABULL    | 650.509.2876       | 1987-09-10 | SH_CLERK   |  4100.00 |           0.00 |        121 |            50 |
|         115 | Alexander   | Khoo        | AKHOO    | 515.127.4562       | 1987-07-02 | PU_CLERK   |  3100.00 |           0.00 |        114 |            30 |
|         103 | Alexander   | Hunold      | AHUNOLD  | 590.423.4567       | 1987-06-20 | IT_PROG    |  9000.00 |           0.00 |        102 |            60 |
|         147 | Alberto     | Errazuriz   | AERRAZUR | 011.44.1344.429278 | 1987-08-03 | SA_MAN     | 12000.00 |           0.30 |        100 |            80 |
|         196 | Alana       | Walsh       | AWALSH   | 650.507.9811       | 1987-09-21 | SH_CLERK   |  3100.00 |           0.00 |        124 |            50 |
|         121 | Adam        | Fripp       | AFRIPP   | 650.123.2234       | 1987-07-08 | ST_MAN     |  8200.00 |           0.00 |        100 |            50 |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+

-- 4.  Write a query to get the names (first_name, last_name), salary, PF of all the employees (PF is calculated as 15% of salary).
-- 4.  Escriba una consulta para obtener los nombres (first_name, last_name), salario, PF de todos los empleados (PF se calcula como el 15% del salario).
 
SELECT first_name AS 'Nombre' , last_name AS 'Apellido' , salary AS 'Nomina' , (salary*0.15) AS '15 %'
FROM employees;

MariaDB [bd_humanresources]> SELECT first_name AS 'Nombre' , last_name AS 'Apellido' , salary AS 'Nomina' , (salary*0.15) AS '15 %'
    -> FROM employees;
+-------------+-------------+----------+-----------+
| Nombre      | Apellido    | Nomina   | 15 %      |
+-------------+-------------+----------+-----------+
| Steven      | King        | 24000.00 | 3600.0000 |
| Neena       | Kochhar     | 17000.00 | 2550.0000 |
| Lex         | De Haan     | 17000.00 | 2550.0000 |
| Alexander   | Hunold      |  9000.00 | 1350.0000 |
| Bruce       | Ernst       |  6000.00 |  900.0000 |
| David       | Austin      |  4800.00 |  720.0000 |
| Valli       | Pataballa   |  4800.00 |  720.0000 |
| Diana       | Lorentz     |  4200.00 |  630.0000 |
| Nancy       | Greenberg   | 12000.00 | 1800.0000 |
| Daniel      | Faviet      |  9000.00 | 1350.0000 |
| John        | Chen        |  8200.00 | 1230.0000 |
| Ismael      | Sciarra     |  7700.00 | 1155.0000 |
| Jose Manuel | Urman       |  7800.00 | 1170.0000 |
| Luis        | Popp        |  6900.00 | 1035.0000 |
| Den         | Raphaely    | 11000.00 | 1650.0000 |
| Alexander   | Khoo        |  3100.00 |  465.0000 |
| Shelli      | Baida       |  2900.00 |  435.0000 |
| Sigal       | Tobias      |  2800.00 |  420.0000 |
| Guy         | Himuro      |  2600.00 |  390.0000 |
| Karen       | Colmenares  |  2500.00 |  375.0000 |
| Matthew     | Weiss       |  8000.00 | 1200.0000 |
| Adam        | Fripp       |  8200.00 | 1230.0000 |
| Payam       | Kaufling    |  7900.00 | 1185.0000 |
| Shanta      | Vollman     |  6500.00 |  975.0000 |
| Kevin       | Mourgos     |  5800.00 |  870.0000 |
| Julia       | Nayer       |  3200.00 |  480.0000 |
| Irene       | Mikkilineni |  2700.00 |  405.0000 |
| James       | Landry      |  2400.00 |  360.0000 |
| Steven      | Markle      |  2200.00 |  330.0000 |
| Laura       | Bissot      |  3300.00 |  495.0000 |
| Mozhe       | Atkinson    |  2800.00 |  420.0000 |
| James       | Marlow      |  2500.00 |  375.0000 |
| TJ          | Olson       |  2100.00 |  315.0000 |
| Jason       | Mallin      |  3300.00 |  495.0000 |
| Michael     | Rogers      |  2900.00 |  435.0000 |
| Ki          | Gee         |  2400.00 |  360.0000 |
| Hazel       | Philtanker  |  2200.00 |  330.0000 |
| Renske      | Ladwig      |  3600.00 |  540.0000 |
| Stephen     | Stiles      |  3200.00 |  480.0000 |
| John        | Seo         |  2700.00 |  405.0000 |
| Joshua      | Patel       |  2500.00 |  375.0000 |
| Trenna      | Rajs        |  3500.00 |  525.0000 |
| Curtis      | Davies      |  3100.00 |  465.0000 |
| Randall     | Matos       |  2600.00 |  390.0000 |
| Peter       | Vargas      |  2500.00 |  375.0000 |
| John        | Russell     | 14000.00 | 2100.0000 |
| Karen       | Partners    | 13500.00 | 2025.0000 |
| Alberto     | Errazuriz   | 12000.00 | 1800.0000 |
| Gerald      | Cambrault   | 11000.00 | 1650.0000 |
| Eleni       | Zlotkey     | 10500.00 | 1575.0000 |
| Peter       | Tucker      | 10000.00 | 1500.0000 |
| David       | Bernstein   |  9500.00 | 1425.0000 |
| Peter       | Hall        |  9000.00 | 1350.0000 |
| Christopher | Olsen       |  8000.00 | 1200.0000 |
| Nanette     | Cambrault   |  7500.00 | 1125.0000 |
| Oliver      | Tuvault     |  7000.00 | 1050.0000 |
| Janette     | King        | 10000.00 | 1500.0000 |
| Patrick     | Sully       |  9500.00 | 1425.0000 |
| Allan       | McEwen      |  9000.00 | 1350.0000 |
| Lindsey     | Smith       |  8000.00 | 1200.0000 |
| Louise      | Doran       |  7500.00 | 1125.0000 |
| Sarath      | Sewall      |  7000.00 | 1050.0000 |
| Clara       | Vishney     | 10500.00 | 1575.0000 |
| Danielle    | Greene      |  9500.00 | 1425.0000 |
| Mattea      | Marvins     |  7200.00 | 1080.0000 |
| David       | Lee         |  6800.00 | 1020.0000 |
| Sundar      | Ande        |  6400.00 |  960.0000 |
| Amit        | Banda       |  6200.00 |  930.0000 |
| Lisa        | Ozer        | 11500.00 | 1725.0000 |
| Harrison    | Bloom       | 10000.00 | 1500.0000 |
| Tayler      | Fox         |  9600.00 | 1440.0000 |
| William     | Smith       |  7400.00 | 1110.0000 |
| Elizabeth   | Bates       |  7300.00 | 1095.0000 |
| Sundita     | Kumar       |  6100.00 |  915.0000 |
| Ellen       | Abel        | 11000.00 | 1650.0000 |
| Alyssa      | Hutton      |  8800.00 | 1320.0000 |
| Jonathon    | Taylor      |  8600.00 | 1290.0000 |
| Jack        | Livingston  |  8400.00 | 1260.0000 |
| Kimberely   | Grant       |  7000.00 | 1050.0000 |
| Charles     | Johnson     |  6200.00 |  930.0000 |
| Winston     | Taylor      |  3200.00 |  480.0000 |
| Jean        | Fleaur      |  3100.00 |  465.0000 |
| Martha      | Sullivan    |  2500.00 |  375.0000 |
| Girard      | Geoni       |  2800.00 |  420.0000 |
| Nandita     | Sarchand    |  4200.00 |  630.0000 |
| Alexis      | Bull        |  4100.00 |  615.0000 |
| Julia       | Dellinger   |  3400.00 |  510.0000 |
| Anthony     | Cabrio      |  3000.00 |  450.0000 |
| Kelly       | Chung       |  3800.00 |  570.0000 |
| Jennifer    | Dilly       |  3600.00 |  540.0000 |
| Timothy     | Gates       |  2900.00 |  435.0000 |
| Randall     | Perkins     |  2500.00 |  375.0000 |
| Sarah       | Bell        |  4000.00 |  600.0000 |
| Britney     | Everett     |  3900.00 |  585.0000 |
| Samuel      | McCain      |  3200.00 |  480.0000 |
| Vance       | Jones       |  2800.00 |  420.0000 |
| Alana       | Walsh       |  3100.00 |  465.0000 |
| Kevin       | Feeney      |  3000.00 |  450.0000 |
| Donald      | OConnell    |  2600.00 |  390.0000 |
| Douglas     | Grant       |  2600.00 |  390.0000 |
| Jennifer    | Whalen      |  4400.00 |  660.0000 |
| Michael     | Hartstein   | 13000.00 | 1950.0000 |
| Pat         | Fay         |  6000.00 |  900.0000 |
| Susan       | Mavris      |  6500.00 |  975.0000 |
| Hermann     | Baer        | 10000.00 | 1500.0000 |
| Shelley     | Higgins     | 12000.00 | 1800.0000 |
| William     | Gietz       |  8300.00 | 1245.0000 |
+-------------+-------------+----------+-----------+

-- 5.  Write a query to get the employee ID, name (first_name, last_name), salary in ascending order of salary.
-- 5.  Escriba una consulta para obtener el ID del empleado, el nombre (first_name, last_name), el salario en orden ascendente de salario.

SELECT EMPLOYEE_ID AS 'ID',FIRST_NAME AS 'Nombre', LAST_NAME AS 'Apellido', SALARY AS 'Salario'
FROM employees
ORDER BY SALARY ASC;

MariaDB [bd_humanresources]> SELECT EMPLOYEE_ID AS 'ID',FIRST_NAME AS 'Nombre', LAST_NAME AS 'Apellido', SALARY AS 'Salario'
    -> FROM employees
    -> ORDER BY SALARY ASC;
+-----+-------------+-------------+----------+
| ID  | Nombre      | Apellido    | Salario  |
+-----+-------------+-------------+----------+
| 132 | TJ          | Olson       |  2100.00 |
| 136 | Hazel       | Philtanker  |  2200.00 |
| 128 | Steven      | Markle      |  2200.00 |
| 135 | Ki          | Gee         |  2400.00 |
| 127 | James       | Landry      |  2400.00 |
| 119 | Karen       | Colmenares  |  2500.00 |
| 191 | Randall     | Perkins     |  2500.00 |
| 140 | Joshua      | Patel       |  2500.00 |
| 182 | Martha      | Sullivan    |  2500.00 |
| 131 | James       | Marlow      |  2500.00 |
| 144 | Peter       | Vargas      |  2500.00 |
| 143 | Randall     | Matos       |  2600.00 |
| 199 | Douglas     | Grant       |  2600.00 |
| 118 | Guy         | Himuro      |  2600.00 |
| 198 | Donald      | OConnell    |  2600.00 |
| 126 | Irene       | Mikkilineni |  2700.00 |
| 139 | John        | Seo         |  2700.00 |
| 117 | Sigal       | Tobias      |  2800.00 |
| 195 | Vance       | Jones       |  2800.00 |
| 130 | Mozhe       | Atkinson    |  2800.00 |
| 183 | Girard      | Geoni       |  2800.00 |
| 134 | Michael     | Rogers      |  2900.00 |
| 116 | Shelli      | Baida       |  2900.00 |
| 190 | Timothy     | Gates       |  2900.00 |
| 197 | Kevin       | Feeney      |  3000.00 |
| 187 | Anthony     | Cabrio      |  3000.00 |
| 181 | Jean        | Fleaur      |  3100.00 |
| 142 | Curtis      | Davies      |  3100.00 |
| 196 | Alana       | Walsh       |  3100.00 |
| 115 | Alexander   | Khoo        |  3100.00 |
| 125 | Julia       | Nayer       |  3200.00 |
| 138 | Stephen     | Stiles      |  3200.00 |
| 194 | Samuel      | McCain      |  3200.00 |
| 180 | Winston     | Taylor      |  3200.00 |
| 129 | Laura       | Bissot      |  3300.00 |
| 133 | Jason       | Mallin      |  3300.00 |
| 186 | Julia       | Dellinger   |  3400.00 |
| 141 | Trenna      | Rajs        |  3500.00 |
| 137 | Renske      | Ladwig      |  3600.00 |
| 189 | Jennifer    | Dilly       |  3600.00 |
| 188 | Kelly       | Chung       |  3800.00 |
| 193 | Britney     | Everett     |  3900.00 |
| 192 | Sarah       | Bell        |  4000.00 |
| 185 | Alexis      | Bull        |  4100.00 |
| 107 | Diana       | Lorentz     |  4200.00 |
| 184 | Nandita     | Sarchand    |  4200.00 |
| 200 | Jennifer    | Whalen      |  4400.00 |
| 105 | David       | Austin      |  4800.00 |
| 106 | Valli       | Pataballa   |  4800.00 |
| 124 | Kevin       | Mourgos     |  5800.00 |
| 202 | Pat         | Fay         |  6000.00 |
| 104 | Bruce       | Ernst       |  6000.00 |
| 173 | Sundita     | Kumar       |  6100.00 |
| 179 | Charles     | Johnson     |  6200.00 |
| 167 | Amit        | Banda       |  6200.00 |
| 166 | Sundar      | Ande        |  6400.00 |
| 203 | Susan       | Mavris      |  6500.00 |
| 123 | Shanta      | Vollman     |  6500.00 |
| 165 | David       | Lee         |  6800.00 |
| 113 | Luis        | Popp        |  6900.00 |
| 155 | Oliver      | Tuvault     |  7000.00 |
| 178 | Kimberely   | Grant       |  7000.00 |
| 161 | Sarath      | Sewall      |  7000.00 |
| 164 | Mattea      | Marvins     |  7200.00 |
| 172 | Elizabeth   | Bates       |  7300.00 |
| 171 | William     | Smith       |  7400.00 |
| 160 | Louise      | Doran       |  7500.00 |
| 154 | Nanette     | Cambrault   |  7500.00 |
| 111 | Ismael      | Sciarra     |  7700.00 |
| 112 | Jose Manuel | Urman       |  7800.00 |
| 122 | Payam       | Kaufling    |  7900.00 |
| 153 | Christopher | Olsen       |  8000.00 |
| 120 | Matthew     | Weiss       |  8000.00 |
| 159 | Lindsey     | Smith       |  8000.00 |
| 110 | John        | Chen        |  8200.00 |
| 121 | Adam        | Fripp       |  8200.00 |
| 206 | William     | Gietz       |  8300.00 |
| 177 | Jack        | Livingston  |  8400.00 |
| 176 | Jonathon    | Taylor      |  8600.00 |
| 175 | Alyssa      | Hutton      |  8800.00 |
| 152 | Peter       | Hall        |  9000.00 |
| 158 | Allan       | McEwen      |  9000.00 |
| 109 | Daniel      | Faviet      |  9000.00 |
| 103 | Alexander   | Hunold      |  9000.00 |
| 157 | Patrick     | Sully       |  9500.00 |
| 163 | Danielle    | Greene      |  9500.00 |
| 151 | David       | Bernstein   |  9500.00 |
| 170 | Tayler      | Fox         |  9600.00 |
| 156 | Janette     | King        | 10000.00 |
| 204 | Hermann     | Baer        | 10000.00 |
| 169 | Harrison    | Bloom       | 10000.00 |
| 150 | Peter       | Tucker      | 10000.00 |
| 149 | Eleni       | Zlotkey     | 10500.00 |
| 162 | Clara       | Vishney     | 10500.00 |
| 114 | Den         | Raphaely    | 11000.00 |
| 174 | Ellen       | Abel        | 11000.00 |
| 148 | Gerald      | Cambrault   | 11000.00 |
| 168 | Lisa        | Ozer        | 11500.00 |
| 205 | Shelley     | Higgins     | 12000.00 |
| 108 | Nancy       | Greenberg   | 12000.00 |
| 147 | Alberto     | Errazuriz   | 12000.00 |
| 201 | Michael     | Hartstein   | 13000.00 |
| 146 | Karen       | Partners    | 13500.00 |
| 145 | John        | Russell     | 14000.00 |
| 101 | Neena       | Kochhar     | 17000.00 |
| 102 | Lex         | De Haan     | 17000.00 |
| 100 | Steven      | King        | 24000.00 |
+-----+-------------+-------------+----------+

-- 6.  Write a query to get the total salaries payable to employees.
-- 6.  Escriba una consulta para obtener el total de los salarios pagaderos a los empleados.

MariaDB [bd_humanresources]> -- asumiendo que cada trabajador gane un sueldo total de la suma de su salario y sus comisiones, tenemos que:

SELECT first_name AS 'Trabajador', SALARY AS 'Salario', COMMISSION_PCT AS 'Comision', (SALARY + (SALARY*COMMISSION_PCT)) AS 'Total'
FROM employees;

MariaDB [bd_humanresources]> SELECT first_name AS 'Trabajador', SALARY AS 'Salario', COMMISSION_PCT AS 'Comision', (SALARY + (SALARY*COMMISSION_PCT)) AS 'Total'
    -> FROM employees;
+-------------+----------+----------+------------+
| Trabajador  | Salario  | Comision | Total      |
+-------------+----------+----------+------------+
| Steven      | 24000.00 |     0.00 | 24000.0000 |
| Neena       | 17000.00 |     0.00 | 17000.0000 |
| Lex         | 17000.00 |     0.00 | 17000.0000 |
| Alexander   |  9000.00 |     0.00 |  9000.0000 |
| Bruce       |  6000.00 |     0.00 |  6000.0000 |
| David       |  4800.00 |     0.00 |  4800.0000 |
| Valli       |  4800.00 |     0.00 |  4800.0000 |
| Diana       |  4200.00 |     0.00 |  4200.0000 |
| Nancy       | 12000.00 |     0.00 | 12000.0000 |
| Daniel      |  9000.00 |     0.00 |  9000.0000 |
| John        |  8200.00 |     0.00 |  8200.0000 |
| Ismael      |  7700.00 |     0.00 |  7700.0000 |
| Jose Manuel |  7800.00 |     0.00 |  7800.0000 |
| Luis        |  6900.00 |     0.00 |  6900.0000 |
| Den         | 11000.00 |     0.00 | 11000.0000 |
| Alexander   |  3100.00 |     0.00 |  3100.0000 |
| Shelli      |  2900.00 |     0.00 |  2900.0000 |
| Sigal       |  2800.00 |     0.00 |  2800.0000 |
| Guy         |  2600.00 |     0.00 |  2600.0000 |
| Karen       |  2500.00 |     0.00 |  2500.0000 |
| Matthew     |  8000.00 |     0.00 |  8000.0000 |
| Adam        |  8200.00 |     0.00 |  8200.0000 |
| Payam       |  7900.00 |     0.00 |  7900.0000 |
| Shanta      |  6500.00 |     0.00 |  6500.0000 |
| Kevin       |  5800.00 |     0.00 |  5800.0000 |
| Julia       |  3200.00 |     0.00 |  3200.0000 |
| Irene       |  2700.00 |     0.00 |  2700.0000 |
| James       |  2400.00 |     0.00 |  2400.0000 |
| Steven      |  2200.00 |     0.00 |  2200.0000 |
| Laura       |  3300.00 |     0.00 |  3300.0000 |
| Mozhe       |  2800.00 |     0.00 |  2800.0000 |
| James       |  2500.00 |     0.00 |  2500.0000 |
| TJ          |  2100.00 |     0.00 |  2100.0000 |
| Jason       |  3300.00 |     0.00 |  3300.0000 |
| Michael     |  2900.00 |     0.00 |  2900.0000 |
| Ki          |  2400.00 |     0.00 |  2400.0000 |
| Hazel       |  2200.00 |     0.00 |  2200.0000 |
| Renske      |  3600.00 |     0.00 |  3600.0000 |
| Stephen     |  3200.00 |     0.00 |  3200.0000 |
| John        |  2700.00 |     0.00 |  2700.0000 |
| Joshua      |  2500.00 |     0.00 |  2500.0000 |
| Trenna      |  3500.00 |     0.00 |  3500.0000 |
| Curtis      |  3100.00 |     0.00 |  3100.0000 |
| Randall     |  2600.00 |     0.00 |  2600.0000 |
| Peter       |  2500.00 |     0.00 |  2500.0000 |
| John        | 14000.00 |     0.40 | 19600.0000 |
| Karen       | 13500.00 |     0.30 | 17550.0000 |
| Alberto     | 12000.00 |     0.30 | 15600.0000 |
| Gerald      | 11000.00 |     0.30 | 14300.0000 |
| Eleni       | 10500.00 |     0.20 | 12600.0000 |
| Peter       | 10000.00 |     0.30 | 13000.0000 |
| David       |  9500.00 |     0.25 | 11875.0000 |
| Peter       |  9000.00 |     0.25 | 11250.0000 |
| Christopher |  8000.00 |     0.20 |  9600.0000 |
| Nanette     |  7500.00 |     0.20 |  9000.0000 |
| Oliver      |  7000.00 |     0.15 |  8050.0000 |
| Janette     | 10000.00 |     0.35 | 13500.0000 |
| Patrick     |  9500.00 |     0.35 | 12825.0000 |
| Allan       |  9000.00 |     0.35 | 12150.0000 |
| Lindsey     |  8000.00 |     0.30 | 10400.0000 |
| Louise      |  7500.00 |     0.30 |  9750.0000 |
| Sarath      |  7000.00 |     0.25 |  8750.0000 |
| Clara       | 10500.00 |     0.25 | 13125.0000 |
| Danielle    |  9500.00 |     0.15 | 10925.0000 |
| Mattea      |  7200.00 |     0.10 |  7920.0000 |
| David       |  6800.00 |     0.10 |  7480.0000 |
| Sundar      |  6400.00 |     0.10 |  7040.0000 |
| Amit        |  6200.00 |     0.10 |  6820.0000 |
| Lisa        | 11500.00 |     0.25 | 14375.0000 |
| Harrison    | 10000.00 |     0.20 | 12000.0000 |
| Tayler      |  9600.00 |     0.20 | 11520.0000 |
| William     |  7400.00 |     0.15 |  8510.0000 |
| Elizabeth   |  7300.00 |     0.15 |  8395.0000 |
| Sundita     |  6100.00 |     0.10 |  6710.0000 |
| Ellen       | 11000.00 |     0.30 | 14300.0000 |
| Alyssa      |  8800.00 |     0.25 | 11000.0000 |
| Jonathon    |  8600.00 |     0.20 | 10320.0000 |
| Jack        |  8400.00 |     0.20 | 10080.0000 |
| Kimberely   |  7000.00 |     0.15 |  8050.0000 |
| Charles     |  6200.00 |     0.10 |  6820.0000 |
| Winston     |  3200.00 |     0.00 |  3200.0000 |
| Jean        |  3100.00 |     0.00 |  3100.0000 |
| Martha      |  2500.00 |     0.00 |  2500.0000 |
| Girard      |  2800.00 |     0.00 |  2800.0000 |
| Nandita     |  4200.00 |     0.00 |  4200.0000 |
| Alexis      |  4100.00 |     0.00 |  4100.0000 |
| Julia       |  3400.00 |     0.00 |  3400.0000 |
| Anthony     |  3000.00 |     0.00 |  3000.0000 |
| Kelly       |  3800.00 |     0.00 |  3800.0000 |
| Jennifer    |  3600.00 |     0.00 |  3600.0000 |
| Timothy     |  2900.00 |     0.00 |  2900.0000 |
| Randall     |  2500.00 |     0.00 |  2500.0000 |
| Sarah       |  4000.00 |     0.00 |  4000.0000 |
| Britney     |  3900.00 |     0.00 |  3900.0000 |
| Samuel      |  3200.00 |     0.00 |  3200.0000 |
| Vance       |  2800.00 |     0.00 |  2800.0000 |
| Alana       |  3100.00 |     0.00 |  3100.0000 |
| Kevin       |  3000.00 |     0.00 |  3000.0000 |
| Donald      |  2600.00 |     0.00 |  2600.0000 |
| Douglas     |  2600.00 |     0.00 |  2600.0000 |
| Jennifer    |  4400.00 |     0.00 |  4400.0000 |
| Michael     | 13000.00 |     0.00 | 13000.0000 |
| Pat         |  6000.00 |     0.00 |  6000.0000 |
| Susan       |  6500.00 |     0.00 |  6500.0000 |
| Hermann     | 10000.00 |     0.00 | 10000.0000 |
| Shelley     | 12000.00 |     0.00 | 12000.0000 |
| William     |  8300.00 |     0.00 |  8300.0000 |
+-------------+----------+----------+------------+

-- 7.  Write a query to get the maximum and minimum salary from employees table.
-- 7.  Escriba una consulta para obtener el salario máximo y mínimo de la tabla de empleados.

SELECT MIN(SALARY) AS 'Salario Minimo', MAX(SALARY)
From employees;

MariaDB [bd_humanresources]> SELECT MIN(SALARY) AS 'Salario Minimo', MAX(SALARY)
    -> From employees;
+----------------+-------------+
| Salario Minimo | MAX(SALARY) |
+----------------+-------------+
|        2100.00 |    24000.00 |
+----------------+-------------+

-- 8.  Write a query to get the average salary and number of employees in the employees table.
-- 8.  Escriba una consulta para obtener el salario promedio y el número de empleados en la tabla de empleados.

SELECT COUNT(first_name) AS 'Numero Trabajadores', AVG(SALARY) AS 'Promedio Salario'
FROM employees;

MariaDB [bd_humanresources]> SELECT COUNT(first_name) AS 'Numero Trabajadores', AVG(SALARY) AS 'Promedio Salario'
    -> FROM employees;
+---------------------+------------------+
| Numero Trabajadores | Promedio Salario |
+---------------------+------------------+
|                 107 |      6461.682243 |
+---------------------+------------------+

-- 9.  Write a query to get the number of employees working with the company.
-- 9.  Escriba una consulta para obtener el número de empleados que trabajan con la empresa.

SELECT COUNT(first_name) AS 'Numero Trabajadores' FROM employees;

MariaDB [bd_humanresources]> SELECT COUNT(first_name) AS 'Numero Trabajadores' FROM employees;
+---------------------+
| Numero Trabajadores |
+---------------------+
|                 107 |
+---------------------+

-- 10. Write a query to get the number of designations available in the employees table.
-- 10.  Escriba una consulta para obtener el número de designaciones disponibles en la tabla de empleados.

SELECT e.MANAGER_ID, d.department_name, COUNT(*) AS 'Cantidad'
FROM employees AS e
INNER JOIN departments AS d
ON e.MANAGER_ID = d.MANAGER_ID
GROUP BY e.MANAGER_ID
ORDER BY department_name DESC;

MariaDB [bd_humanresources]> SELECT e.MANAGER_ID, d.department_name, COUNT(*) AS 'Cantidad'
    -> FROM employees AS e
    -> INNER JOIN departments AS d
    -> ON e.MANAGER_ID = d.MANAGER_ID
    -> GROUP BY e.MANAGER_ID
    -> ORDER BY department_name DESC;
+------------+-----------------+----------+
| MANAGER_ID | department_name | Cantidad |
+------------+-----------------+----------+
|          0 | Treasury        |       16 |
|        121 | Shipping        |        8 |
|        145 | Sales           |        6 |
|        114 | Purchasing      |        5 |
|        201 | Marketing       |        1 |
|        103 | IT              |        4 |
|        108 | Finance         |        5 |
|        100 | Executive       |       14 |
|        205 | Accounting      |        1 |
+------------+-----------------+----------+

-- 11. Write a query get all first name from employees table in upper case.
-- 11.  Escriba una consulta para obtener todo el nombre de la tabla de empleados en mayúsculas.

SELECT UPPER(first_name), UPPER(last_name)
FROM employees;

MariaDB [bd_humanresources]> SELECT UPPER(first_name), UPPER(last_name)
    -> FROM employees;
+-------------------+------------------+
| UPPER(first_name) | UPPER(last_name) |
+-------------------+------------------+
| ELLEN             | ABEL             |
| SUNDAR            | ANDE             |
| MOZHE             | ATKINSON         |
| DAVID             | AUSTIN           |
| HERMANN           | BAER             |
| SHELLI            | BAIDA            |
| AMIT              | BANDA            |
| ELIZABETH         | BATES            |
| SARAH             | BELL             |
| DAVID             | BERNSTEIN        |
| LAURA             | BISSOT           |
| HARRISON          | BLOOM            |
| ALEXIS            | BULL             |
| ANTHONY           | CABRIO           |
| GERALD            | CAMBRAULT        |
| NANETTE           | CAMBRAULT        |
| JOHN              | CHEN             |
| KELLY             | CHUNG            |
| KAREN             | COLMENARES       |
| CURTIS            | DAVIES           |
| LEX               | DE HAAN          |
| JULIA             | DELLINGER        |
| JENNIFER          | DILLY            |
| LOUISE            | DORAN            |
| BRUCE             | ERNST            |
| ALBERTO           | ERRAZURIZ        |
| BRITNEY           | EVERETT          |
| DANIEL            | FAVIET           |
| PAT               | FAY              |
| KEVIN             | FEENEY           |
| JEAN              | FLEAUR           |
| TAYLER            | FOX              |
| ADAM              | FRIPP            |
| TIMOTHY           | GATES            |
| KI                | GEE              |
| GIRARD            | GEONI            |
| WILLIAM           | GIETZ            |
| DOUGLAS           | GRANT            |
| KIMBERELY         | GRANT            |
| NANCY             | GREENBERG        |
| DANIELLE          | GREENE           |
| PETER             | HALL             |
| MICHAEL           | HARTSTEIN        |
| SHELLEY           | HIGGINS          |
| GUY               | HIMURO           |
| ALEXANDER         | HUNOLD           |
| ALYSSA            | HUTTON           |
| CHARLES           | JOHNSON          |
| VANCE             | JONES            |
| PAYAM             | KAUFLING         |
| ALEXANDER         | KHOO             |
| JANETTE           | KING             |
| STEVEN            | KING             |
| NEENA             | KOCHHAR          |
| SUNDITA           | KUMAR            |
| RENSKE            | LADWIG           |
| JAMES             | LANDRY           |
| DAVID             | LEE              |
| JACK              | LIVINGSTON       |
| DIANA             | LORENTZ          |
| JASON             | MALLIN           |
| STEVEN            | MARKLE           |
| JAMES             | MARLOW           |
| MATTEA            | MARVINS          |
| RANDALL           | MATOS            |
| SUSAN             | MAVRIS           |
| SAMUEL            | MCCAIN           |
| ALLAN             | MCEWEN           |
| IRENE             | MIKKILINENI      |
| KEVIN             | MOURGOS          |
| JULIA             | NAYER            |
| DONALD            | OCONNELL         |
| CHRISTOPHER       | OLSEN            |
| TJ                | OLSON            |
| LISA              | OZER             |
| KAREN             | PARTNERS         |
| VALLI             | PATABALLA        |
| JOSHUA            | PATEL            |
| RANDALL           | PERKINS          |
| HAZEL             | PHILTANKER       |
| LUIS              | POPP             |
| TRENNA            | RAJS             |
| DEN               | RAPHAELY         |
| MICHAEL           | ROGERS           |
| JOHN              | RUSSELL          |
| NANDITA           | SARCHAND         |
| ISMAEL            | SCIARRA          |
| JOHN              | SEO              |
| SARATH            | SEWALL           |
| LINDSEY           | SMITH            |
| WILLIAM           | SMITH            |
| STEPHEN           | STILES           |
| MARTHA            | SULLIVAN         |
| PATRICK           | SULLY            |
| JONATHON          | TAYLOR           |
| WINSTON           | TAYLOR           |
| SIGAL             | TOBIAS           |
| PETER             | TUCKER           |
| OLIVER            | TUVAULT          |
| JOSE MANUEL       | URMAN            |
| PETER             | VARGAS           |
| CLARA             | VISHNEY          |
| SHANTA            | VOLLMAN          |
| ALANA             | WALSH            |
| MATTHEW           | WEISS            |
| JENNIFER          | WHALEN           |
| ELENI             | ZLOTKEY          |
+-------------------+------------------+

-- 12. Write a query to get the first three characters of first name of all employees.
-- 12.  Escriba una consulta para obtener los tres primeros caracteres del nombre de todos los empleados.



-- 13. Write a query to calculate 171*214+625.
-- 13.  Escriba una consulta para calcular 171 * 214 + 625.

SELECT (171*(214+625)) AS 'Calculo';

MariaDB [bd_humanresources]> SELECT (171*(214+625)) AS 'Calculo';
+---------+
| Calculo |
+---------+
|  143469 |
+---------+

-- 14. Write a query to get first name of all employees table after removing white spaces from both side.
-- 14.  Escriba una consulta para obtener el nombre de la tabla de todos los empleados después de eliminar los espacios en blanco de ambos lados.

SELECT
COUNT(EMPLOYEE_ID),
COUNT(FIRST_NAME),
COUNT(LAST_NAME),
COUNT(EMAIL),
COUNT(PHONE_NUMBER),
COUNT(HIRE_DATE),
COUNT(JOB_ID),
COUNT(SALARY),
COUNT(COMMISSION_PCT),
COUNT(MANAGER_ID),
COUNT(DEPARTMENT_ID)
FROM employees;

MariaDB [bd_humanresources]> SELECT
    -> COUNT(EMPLOYEE_ID),
    -> COUNT(FIRST_NAME),
    -> COUNT(LAST_NAME),
    -> COUNT(EMAIL),
    -> COUNT(PHONE_NUMBER),
    -> COUNT(HIRE_DATE),
    -> COUNT(JOB_ID),
    -> COUNT(SALARY),
    -> COUNT(COMMISSION_PCT),
    -> COUNT(MANAGER_ID),
    -> COUNT(DEPARTMENT_ID)
    -> FROM employees;
+--------------------+-------------------+------------------+--------------+---------------------+------------------+---------------+---------------+-----------------------+-------------------+----------------------+
| COUNT(EMPLOYEE_ID) | COUNT(FIRST_NAME) | COUNT(LAST_NAME) | COUNT(EMAIL) | COUNT(PHONE_NUMBER) | COUNT(HIRE_DATE) | COUNT(JOB_ID) | COUNT(SALARY) | COUNT(COMMISSION_PCT) | COUNT(MANAGER_ID) | COUNT(DEPARTMENT_ID) |
+--------------------+-------------------+------------------+--------------+---------------------+------------------+---------------+---------------+-----------------------+-------------------+----------------------+
|                107 |               107 |              107 |          107 |                 107 |              107 |           107 |           107 |                   107 |               107 |                  107 |
+--------------------+-------------------+------------------+--------------+---------------------+------------------+---------------+---------------+-----------------------+-------------------+----------------------+
1 row in set (0.001 sec)

DELETE FROM employees WHERE FIRST_NAME IS NULL;
DELETE FROM employees WHERE LAST_NAME IS NULL;
DELETE FROM employees WHERE EMAIL IS NULL;
DELETE FROM employees WHERE PHONE_NUMBER IS NULL;
DELETE FROM employees WHERE HIRE_DATE IS NULL;
DELETE FROM employees WHERE JOB_ID IS NULL;
DELETE FROM employees WHERE SALARY IS NULL;
DELETE FROM employees WHERE COMMISSION_PCT IS NULL;
DELETE FROM employees WHERE MANAGER_ID IS NULL;
DELETE FROM employees WHERE DEPARTMENT_ID IS NULL;


MariaDB [bd_humanresources]> DELETE FROM employees WHERE FIRST_NAME IS NULL;
Query OK, 0 rows affected (0.365 sec)

MariaDB [bd_humanresources]> DELETE FROM employees WHERE LAST_NAME IS NULL;
Query OK, 0 rows affected (0.000 sec)

MariaDB [bd_humanresources]> DELETE FROM employees WHERE EMAIL IS NULL;
Query OK, 0 rows affected (0.000 sec)

MariaDB [bd_humanresources]> DELETE FROM employees WHERE PHONE_NUMBER IS NULL;
Query OK, 0 rows affected (0.000 sec)

MariaDB [bd_humanresources]> DELETE FROM employees WHERE HIRE_DATE IS NULL;
Query OK, 0 rows affected (0.000 sec)

MariaDB [bd_humanresources]> DELETE FROM employees WHERE JOB_ID IS NULL;
Query OK, 0 rows affected (0.000 sec)

MariaDB [bd_humanresources]> DELETE FROM employees WHERE SALARY IS NULL;
Query OK, 0 rows affected (0.000 sec)

MariaDB [bd_humanresources]> DELETE FROM employees WHERE COMMISSION_PCT IS NULL;
Query OK, 0 rows affected (0.000 sec)

MariaDB [bd_humanresources]> DELETE FROM employees WHERE MANAGER_ID IS NULL;
Query OK, 0 rows affected (0.000 sec)

MariaDB [bd_humanresources]> DELETE FROM employees WHERE DEPARTMENT_ID IS NULL;
Query OK, 0 rows affected (0.000 sec)

MariaDB [bd_humanresources]> SELECT
    -> COUNT(EMPLOYEE_ID),
    -> COUNT(FIRST_NAME),
    -> COUNT(LAST_NAME),
    -> COUNT(EMAIL),
    -> COUNT(PHONE_NUMBER),
    -> COUNT(HIRE_DATE),
    -> COUNT(JOB_ID),
    -> COUNT(SALARY),
    -> COUNT(COMMISSION_PCT),
    -> COUNT(MANAGER_ID),
    -> COUNT(DEPARTMENT_ID)
    -> FROM employees;
+--------------------+-------------------+------------------+--------------+---------------------+------------------+---------------+---------------+-----------------------+-------------------+----------------------+
| COUNT(EMPLOYEE_ID) | COUNT(FIRST_NAME) | COUNT(LAST_NAME) | COUNT(EMAIL) | COUNT(PHONE_NUMBER) | COUNT(HIRE_DATE) | COUNT(JOB_ID) | COUNT(SALARY) | COUNT(COMMISSION_PCT) | COUNT(MANAGER_ID) | COUNT(DEPARTMENT_ID) |
+--------------------+-------------------+------------------+--------------+---------------------+------------------+---------------+---------------+-----------------------+-------------------+----------------------+
|                107 |               107 |              107 |          107 |                 107 |              107 |           107 |           107 |                   107 |               107 |                  107 |
+--------------------+-------------------+------------------+--------------+---------------------+------------------+---------------+---------------+-----------------------+-------------------+----------------------+
1 row in set (0.000 sec)

-- 15. Write a query to get the name (for example Ellen Abel, Sundar Ande etc.) of all the employees from employees table.
-- 15.  Escriba una consulta para obtener el nombre (por ejemplo, Ellen Abel, Sundar Ande, etc.) de todos los empleados de la tabla de empleados.

SELECT * FROM employees WHERE FIRST_NAME LIKE 'Elizabeth';

MariaDB [bd_humanresources]> SELECT * FROM employees WHERE FIRST_NAME LIKE 'Elizabeth';
+-------------+------------+-----------+--------+--------------------+------------+--------+---------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | EMAIL  | PHONE_NUMBER       | HIRE_DATE  | JOB_ID | SALARY  | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-----------+--------+--------------------+------------+--------+---------+----------------+------------+---------------+
|         172 | Elizabeth  | Bates     | EBATES | 011.44.1343.529268 | 1987-08-28 | SA_REP | 7300.00 |           0.15 |        148 |            80 |
+-------------+------------+-----------+--------+--------------------+------------+--------+---------+----------------+------------+---------------+

-- 16. Write a query to get the length of the employee names (first_name, last_name) from employees table.
-- 16.  Escriba una consulta para obtener la longitud de los nombres de los empleados (first_name, last_name) de la tabla de empleados.

SELECT first_name, LENGTH(FIRST_NAME), CHAR_LENGTH(first_name) FROM employees;

MariaDB [bd_humanresources]> SELECT first_name, LENGTH(FIRST_NAME), CHAR_LENGTH(first_name) FROM employees
    -> ;
+-------------+--------------------+-------------------------+
| first_name  | LENGTH(FIRST_NAME) | CHAR_LENGTH(first_name) |
+-------------+--------------------+-------------------------+
| Ellen       |                  5 |                       5 |
| Sundar      |                  6 |                       6 |
| Mozhe       |                  5 |                       5 |
| David       |                  5 |                       5 |
| Hermann     |                  7 |                       7 |
| Shelli      |                  6 |                       6 |
| Amit        |                  4 |                       4 |
| Elizabeth   |                  9 |                       9 |
| Sarah       |                  5 |                       5 |
| David       |                  5 |                       5 |
| Laura       |                  5 |                       5 |
| Harrison    |                  8 |                       8 |
| Alexis      |                  6 |                       6 |
| Anthony     |                  7 |                       7 |
| Gerald      |                  6 |                       6 |
| Nanette     |                  7 |                       7 |
| John        |                  4 |                       4 |
| Kelly       |                  5 |                       5 |
| Karen       |                  5 |                       5 |
| Curtis      |                  6 |                       6 |
| Lex         |                  3 |                       3 |
| Julia       |                  5 |                       5 |
| Jennifer    |                  8 |                       8 |
| Louise      |                  6 |                       6 |
| Bruce       |                  5 |                       5 |
| Alberto     |                  7 |                       7 |
| Britney     |                  7 |                       7 |
| Daniel      |                  6 |                       6 |
| Pat         |                  3 |                       3 |
| Kevin       |                  5 |                       5 |
| Jean        |                  4 |                       4 |
| Tayler      |                  6 |                       6 |
| Adam        |                  4 |                       4 |
| Timothy     |                  7 |                       7 |
| Ki          |                  2 |                       2 |
| Girard      |                  6 |                       6 |
| William     |                  7 |                       7 |
| Douglas     |                  7 |                       7 |
| Kimberely   |                  9 |                       9 |
| Nancy       |                  5 |                       5 |
| Danielle    |                  8 |                       8 |
| Peter       |                  5 |                       5 |
| Michael     |                  7 |                       7 |
| Shelley     |                  7 |                       7 |
| Guy         |                  3 |                       3 |
| Alexander   |                  9 |                       9 |
| Alyssa      |                  6 |                       6 |
| Charles     |                  7 |                       7 |
| Vance       |                  5 |                       5 |
| Payam       |                  5 |                       5 |
| Alexander   |                  9 |                       9 |
| Janette     |                  7 |                       7 |
| Steven      |                  6 |                       6 |
| Neena       |                  5 |                       5 |
| Sundita     |                  7 |                       7 |
| Renske      |                  6 |                       6 |
| James       |                  5 |                       5 |
| David       |                  5 |                       5 |
| Jack        |                  4 |                       4 |
| Diana       |                  5 |                       5 |
| Jason       |                  5 |                       5 |
| Steven      |                  6 |                       6 |
| James       |                  5 |                       5 |
| Mattea      |                  6 |                       6 |
| Randall     |                  7 |                       7 |
| Susan       |                  5 |                       5 |
| Samuel      |                  6 |                       6 |
| Allan       |                  5 |                       5 |
| Irene       |                  5 |                       5 |
| Kevin       |                  5 |                       5 |
| Julia       |                  5 |                       5 |
| Donald      |                  6 |                       6 |
| Christopher |                 11 |                      11 |
| TJ          |                  2 |                       2 |
| Lisa        |                  4 |                       4 |
| Karen       |                  5 |                       5 |
| Valli       |                  5 |                       5 |
| Joshua      |                  6 |                       6 |
| Randall     |                  7 |                       7 |
| Hazel       |                  5 |                       5 |
| Luis        |                  4 |                       4 |
| Trenna      |                  6 |                       6 |
| Den         |                  3 |                       3 |
| Michael     |                  7 |                       7 |
| John        |                  4 |                       4 |
| Nandita     |                  7 |                       7 |
| Ismael      |                  6 |                       6 |
| John        |                  4 |                       4 |
| Sarath      |                  6 |                       6 |
| Lindsey     |                  7 |                       7 |
| William     |                  7 |                       7 |
| Stephen     |                  7 |                       7 |
| Martha      |                  6 |                       6 |
| Patrick     |                  7 |                       7 |
| Jonathon    |                  8 |                       8 |
| Winston     |                  7 |                       7 |
| Sigal       |                  5 |                       5 |
| Peter       |                  5 |                       5 |
| Oliver      |                  6 |                       6 |
| Jose Manuel |                 11 |                      11 |
| Peter       |                  5 |                       5 |
| Clara       |                  5 |                       5 |
| Shanta      |                  6 |                       6 |
| Alana       |                  5 |                       5 |
| Matthew     |                  7 |                       7 |
| Jennifer    |                  8 |                       8 |
| Eleni       |                  5 |                       5 |
+-------------+--------------------+-------------------------+

-- 17. Write a query to select first 10 records from a table.
-- 17.  Escriba una consulta para seleccionar los primeros 10 registros de una tabla.

  SELECT * FROM employees LIMIT 0, 10;

  MariaDB [bd_humanresources]> SELECT * FROM employees LIMIT 0, 10;
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | EMAIL    | PHONE_NUMBER | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+
|         100 | Steven     | King      | SKING    | 515.123.4567 | 1987-06-17 | AD_PRES    | 24000.00 |           0.00 |          0 |            90 |
|         101 | Neena      | Kochhar   | NKOCHHAR | 515.123.4568 | 1987-06-18 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
|         102 | Lex        | De Haan   | LDEHAAN  | 515.123.4569 | 1987-06-19 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
|         103 | Alexander  | Hunold    | AHUNOLD  | 590.423.4567 | 1987-06-20 | IT_PROG    |  9000.00 |           0.00 |        102 |            60 |
|         104 | Bruce      | Ernst     | BERNST   | 590.423.4568 | 1987-06-21 | IT_PROG    |  6000.00 |           0.00 |        103 |            60 |
|         105 | David      | Austin    | DAUSTIN  | 590.423.4569 | 1987-06-22 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |
|         106 | Valli      | Pataballa | VPATABAL | 590.423.4560 | 1987-06-23 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |
|         107 | Diana      | Lorentz   | DLORENTZ | 590.423.5567 | 1987-06-24 | IT_PROG    |  4200.00 |           0.00 |        103 |            60 |
|         108 | Nancy      | Greenberg | NGREENBE | 515.124.4569 | 1987-06-25 | FI_MGR     | 12000.00 |           0.00 |        101 |           100 |
|         109 | Daniel     | Faviet    | DFAVIET  | 515.124.4169 | 1987-06-26 | FI_ACCOUNT |  9000.00 |           0.00 |        108 |           100 |
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+

-- 18. Write a query to get monthly salary (round 2 decimal places) of all employees.
-- 18.  Escriba una consulta para obtener el salario mensual (ronda de 2 decimales) de todos los empleados.

SELECT first_name AS 'Nombre', SALARY AS 'Salario Anual', (SALARY/12) AS 'Salario Mensual' FROM employees;

MariaDB [bd_humanresources]> -- suponiendo que el salario de la tabla employees es un pago anual
MariaDB [bd_humanresources]> SELECT first_name AS 'Nombre', SALARY AS 'Salario Anual', (SALARY/12) AS 'Salario Mensual' FROM employees;
+-------------+---------------+-----------------+
| Nombre      | Salario Anual | Salario Mensual |
+-------------+---------------+-----------------+
| Steven      |      24000.00 |     2000.000000 |
| Neena       |      17000.00 |     1416.666667 |
| Lex         |      17000.00 |     1416.666667 |
| Alexander   |       9000.00 |      750.000000 |
| Bruce       |       6000.00 |      500.000000 |
| David       |       4800.00 |      400.000000 |
| Valli       |       4800.00 |      400.000000 |
| Diana       |       4200.00 |      350.000000 |
| Nancy       |      12000.00 |     1000.000000 |
| Daniel      |       9000.00 |      750.000000 |
| John        |       8200.00 |      683.333333 |
| Ismael      |       7700.00 |      641.666667 |
| Jose Manuel |       7800.00 |      650.000000 |
| Luis        |       6900.00 |      575.000000 |
| Den         |      11000.00 |      916.666667 |
| Alexander   |       3100.00 |      258.333333 |
| Shelli      |       2900.00 |      241.666667 |
| Sigal       |       2800.00 |      233.333333 |
| Guy         |       2600.00 |      216.666667 |
| Karen       |       2500.00 |      208.333333 |
| Matthew     |       8000.00 |      666.666667 |
| Adam        |       8200.00 |      683.333333 |
| Payam       |       7900.00 |      658.333333 |
| Shanta      |       6500.00 |      541.666667 |
| Kevin       |       5800.00 |      483.333333 |
| Julia       |       3200.00 |      266.666667 |
| Irene       |       2700.00 |      225.000000 |
| James       |       2400.00 |      200.000000 |
| Steven      |       2200.00 |      183.333333 |
| Laura       |       3300.00 |      275.000000 |
| Mozhe       |       2800.00 |      233.333333 |
| James       |       2500.00 |      208.333333 |
| TJ          |       2100.00 |      175.000000 |
| Jason       |       3300.00 |      275.000000 |
| Michael     |       2900.00 |      241.666667 |
| Ki          |       2400.00 |      200.000000 |
| Hazel       |       2200.00 |      183.333333 |
| Renske      |       3600.00 |      300.000000 |
| Stephen     |       3200.00 |      266.666667 |
| John        |       2700.00 |      225.000000 |
| Joshua      |       2500.00 |      208.333333 |
| Trenna      |       3500.00 |      291.666667 |
| Curtis      |       3100.00 |      258.333333 |
| Randall     |       2600.00 |      216.666667 |
| Peter       |       2500.00 |      208.333333 |
| John        |      14000.00 |     1166.666667 |
| Karen       |      13500.00 |     1125.000000 |
| Alberto     |      12000.00 |     1000.000000 |
| Gerald      |      11000.00 |      916.666667 |
| Eleni       |      10500.00 |      875.000000 |
| Peter       |      10000.00 |      833.333333 |
| David       |       9500.00 |      791.666667 |
| Peter       |       9000.00 |      750.000000 |
| Christopher |       8000.00 |      666.666667 |
| Nanette     |       7500.00 |      625.000000 |
| Oliver      |       7000.00 |      583.333333 |
| Janette     |      10000.00 |      833.333333 |
| Patrick     |       9500.00 |      791.666667 |
| Allan       |       9000.00 |      750.000000 |
| Lindsey     |       8000.00 |      666.666667 |
| Louise      |       7500.00 |      625.000000 |
| Sarath      |       7000.00 |      583.333333 |
| Clara       |      10500.00 |      875.000000 |
| Danielle    |       9500.00 |      791.666667 |
| Mattea      |       7200.00 |      600.000000 |
| David       |       6800.00 |      566.666667 |
| Sundar      |       6400.00 |      533.333333 |
| Amit        |       6200.00 |      516.666667 |
| Lisa        |      11500.00 |      958.333333 |
| Harrison    |      10000.00 |      833.333333 |
| Tayler      |       9600.00 |      800.000000 |
| William     |       7400.00 |      616.666667 |
| Elizabeth   |       7300.00 |      608.333333 |
| Sundita     |       6100.00 |      508.333333 |
| Ellen       |      11000.00 |      916.666667 |
| Alyssa      |       8800.00 |      733.333333 |
| Jonathon    |       8600.00 |      716.666667 |
| Jack        |       8400.00 |      700.000000 |
| Kimberely   |       7000.00 |      583.333333 |
| Charles     |       6200.00 |      516.666667 |
| Winston     |       3200.00 |      266.666667 |
| Jean        |       3100.00 |      258.333333 |
| Martha      |       2500.00 |      208.333333 |
| Girard      |       2800.00 |      233.333333 |
| Nandita     |       4200.00 |      350.000000 |
| Alexis      |       4100.00 |      341.666667 |
| Julia       |       3400.00 |      283.333333 |
| Anthony     |       3000.00 |      250.000000 |
| Kelly       |       3800.00 |      316.666667 |
| Jennifer    |       3600.00 |      300.000000 |
| Timothy     |       2900.00 |      241.666667 |
| Randall     |       2500.00 |      208.333333 |
| Sarah       |       4000.00 |      333.333333 |
| Britney     |       3900.00 |      325.000000 |
| Samuel      |       3200.00 |      266.666667 |
| Vance       |       2800.00 |      233.333333 |
| Alana       |       3100.00 |      258.333333 |
| Kevin       |       3000.00 |      250.000000 |
| Donald      |       2600.00 |      216.666667 |
| Douglas     |       2600.00 |      216.666667 |
| Jennifer    |       4400.00 |      366.666667 |
| Michael     |      13000.00 |     1083.333333 |
| Pat         |       6000.00 |      500.000000 |
| Susan       |       6500.00 |      541.666667 |
| Hermann     |      10000.00 |      833.333333 |
| Shelley     |      12000.00 |     1000.000000 |
| William     |       8300.00 |      691.666667 |
+-------------+---------------+-----------------+


SELECT first_name AS 'Nombre', TRUNCATE(SALARY,2) AS 'Salario Anual', TRUNCATE((SALARY/12),2) AS 'Salario Mensual' FROM employees;

MariaDB [bd_humanresources]> SELECT first_name AS 'Nombre', TRUNCATE(SALARY,2) AS 'Salario Anual', TRUNCATE((SALARY/12),2) AS 'Salario Mensual' FROM employees;
+-------------+---------------+-----------------+
| Nombre      | Salario Anual | Salario Mensual |
+-------------+---------------+-----------------+
| Steven      |      24000.00 |         2000.00 |
| Neena       |      17000.00 |         1416.66 |
| Lex         |      17000.00 |         1416.66 |
| Alexander   |       9000.00 |          750.00 |
| Bruce       |       6000.00 |          500.00 |
| David       |       4800.00 |          400.00 |
| Valli       |       4800.00 |          400.00 |
| Diana       |       4200.00 |          350.00 |
| Nancy       |      12000.00 |         1000.00 |
| Daniel      |       9000.00 |          750.00 |
| John        |       8200.00 |          683.33 |
| Ismael      |       7700.00 |          641.66 |
| Jose Manuel |       7800.00 |          650.00 |
| Luis        |       6900.00 |          575.00 |
| Den         |      11000.00 |          916.66 |
| Alexander   |       3100.00 |          258.33 |
| Shelli      |       2900.00 |          241.66 |
| Sigal       |       2800.00 |          233.33 |
| Guy         |       2600.00 |          216.66 |
| Karen       |       2500.00 |          208.33 |
| Matthew     |       8000.00 |          666.66 |
| Adam        |       8200.00 |          683.33 |
| Payam       |       7900.00 |          658.33 |
| Shanta      |       6500.00 |          541.66 |
| Kevin       |       5800.00 |          483.33 |
| Julia       |       3200.00 |          266.66 |
| Irene       |       2700.00 |          225.00 |
| James       |       2400.00 |          200.00 |
| Steven      |       2200.00 |          183.33 |
| Laura       |       3300.00 |          275.00 |
| Mozhe       |       2800.00 |          233.33 |
| James       |       2500.00 |          208.33 |
| TJ          |       2100.00 |          175.00 |
| Jason       |       3300.00 |          275.00 |
| Michael     |       2900.00 |          241.66 |
| Ki          |       2400.00 |          200.00 |
| Hazel       |       2200.00 |          183.33 |
| Renske      |       3600.00 |          300.00 |
| Stephen     |       3200.00 |          266.66 |
| John        |       2700.00 |          225.00 |
| Joshua      |       2500.00 |          208.33 |
| Trenna      |       3500.00 |          291.66 |
| Curtis      |       3100.00 |          258.33 |
| Randall     |       2600.00 |          216.66 |
| Peter       |       2500.00 |          208.33 |
| John        |      14000.00 |         1166.66 |
| Karen       |      13500.00 |         1125.00 |
| Alberto     |      12000.00 |         1000.00 |
| Gerald      |      11000.00 |          916.66 |
| Eleni       |      10500.00 |          875.00 |
| Peter       |      10000.00 |          833.33 |
| David       |       9500.00 |          791.66 |
| Peter       |       9000.00 |          750.00 |
| Christopher |       8000.00 |          666.66 |
| Nanette     |       7500.00 |          625.00 |
| Oliver      |       7000.00 |          583.33 |
| Janette     |      10000.00 |          833.33 |
| Patrick     |       9500.00 |          791.66 |
| Allan       |       9000.00 |          750.00 |
| Lindsey     |       8000.00 |          666.66 |
| Louise      |       7500.00 |          625.00 |
| Sarath      |       7000.00 |          583.33 |
| Clara       |      10500.00 |          875.00 |
| Danielle    |       9500.00 |          791.66 |
| Mattea      |       7200.00 |          600.00 |
| David       |       6800.00 |          566.66 |
| Sundar      |       6400.00 |          533.33 |
| Amit        |       6200.00 |          516.66 |
| Lisa        |      11500.00 |          958.33 |
| Harrison    |      10000.00 |          833.33 |
| Tayler      |       9600.00 |          800.00 |
| William     |       7400.00 |          616.66 |
| Elizabeth   |       7300.00 |          608.33 |
| Sundita     |       6100.00 |          508.33 |
| Ellen       |      11000.00 |          916.66 |
| Alyssa      |       8800.00 |          733.33 |
| Jonathon    |       8600.00 |          716.66 |
| Jack        |       8400.00 |          700.00 |
| Kimberely   |       7000.00 |          583.33 |
| Charles     |       6200.00 |          516.66 |
| Winston     |       3200.00 |          266.66 |
| Jean        |       3100.00 |          258.33 |
| Martha      |       2500.00 |          208.33 |
| Girard      |       2800.00 |          233.33 |
| Nandita     |       4200.00 |          350.00 |
| Alexis      |       4100.00 |          341.66 |
| Julia       |       3400.00 |          283.33 |
| Anthony     |       3000.00 |          250.00 |
| Kelly       |       3800.00 |          316.66 |
| Jennifer    |       3600.00 |          300.00 |
| Timothy     |       2900.00 |          241.66 |
| Randall     |       2500.00 |          208.33 |
| Sarah       |       4000.00 |          333.33 |
| Britney     |       3900.00 |          325.00 |
| Samuel      |       3200.00 |          266.66 |
| Vance       |       2800.00 |          233.33 |
| Alana       |       3100.00 |          258.33 |
| Kevin       |       3000.00 |          250.00 |
| Donald      |       2600.00 |          216.66 |
| Douglas     |       2600.00 |          216.66 |
| Jennifer    |       4400.00 |          366.66 |
| Michael     |      13000.00 |         1083.33 |
| Pat         |       6000.00 |          500.00 |
| Susan       |       6500.00 |          541.66 |
| Hermann     |      10000.00 |          833.33 |
| Shelley     |      12000.00 |         1000.00 |
| William     |       8300.00 |          691.66 |
+-------------+---------------+-----------------+
