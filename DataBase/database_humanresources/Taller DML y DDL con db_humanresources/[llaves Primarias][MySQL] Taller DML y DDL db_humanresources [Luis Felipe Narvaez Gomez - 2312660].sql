NOTA: Este archivo a pesar de su formato SQL, no debe correrse en software de Databases, debe abrirse en un editor de texto plano como Bloc de Notas o bien cambiar la extencion a ".txt".


--Datos del Estudiante:

-- Nombre: Ing.Luis Felipe Narvaez Gomez
-- Facultad: Ingenieria de Sistemas
-- Universidad: Santo Tomas seccional Tunja
-- Materia: Bases de Datos
-- Semestre: 2021-2

-- ................................................................................. CREAR LAS LLAVES PRIMARIAS (CONSTRAINTS) .................................................................................




-- Indices de la tabla `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`COUNTRY_ID`),
  ADD KEY `COUNTR_REG_FK` (`REGION_ID`);

--
-- Indices de la tabla `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`DEPARTMENT_ID`),
  ADD KEY `DEPT_MGR_FK` (`MANAGER_ID`),
  ADD KEY `DEPT_LOCATION_IX` (`LOCATION_ID`);

--
-- Indices de la tabla `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`EMPLOYEE_ID`),
  ADD UNIQUE KEY `EMP_EMAIL_UK` (`EMAIL`),
  ADD KEY `EMP_DEPARTMENT_IX` (`DEPARTMENT_ID`),
  ADD KEY `EMP_JOB_IX` (`JOB_ID`),
  ADD KEY `EMP_MANAGER_IX` (`MANAGER_ID`),
  ADD KEY `EMP_NAME_IX` (`LAST_NAME`,`FIRST_NAME`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`JOB_ID`);

--
-- Indices de la tabla `job_history`
--
ALTER TABLE `job_history`
  ADD PRIMARY KEY (`EMPLOYEE_ID`,`START_DATE`),
  ADD KEY `JHIST_DEPARTMENT_IX` (`DEPARTMENT_ID`),
  ADD KEY `JHIST_EMPLOYEE_IX` (`EMPLOYEE_ID`),
  ADD KEY `JHIST_JOB_IX` (`JOB_ID`);

--
-- Indices de la tabla `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`LOCATION_ID`),
  ADD KEY `LOC_CITY_IX` (`CITY`),
  ADD KEY `LOC_COUNTRY_IX` (`COUNTRY_ID`),
  ADD KEY `LOC_STATE_PROVINCE_IX` (`STATE_PROVINCE`);

--
-- Indices de la tabla `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`REGION_ID`),
  ADD UNIQUE KEY `sss` (`REGION_NAME`);
COMMIT;

-- ................................................................................. IMPLEMENTAR LAS LLAVES PRIMARIAS (CONSTRAINTS) .................................................................................


MariaDB [bd_humanresources]> ALTER TABLE `countries`
    ->   ADD PRIMARY KEY (`COUNTRY_ID`),
    ->   ADD KEY `COUNTR_REG_FK` (`REGION_ID`);
Query OK, 25 rows affected (0.167 sec)
Records: 25  Duplicates: 0  Warnings: 0

MariaDB [bd_humanresources]> ALTER TABLE `departments`
    ->   ADD PRIMARY KEY (`DEPARTMENT_ID`),
    ->   ADD KEY `DEPT_MGR_FK` (`MANAGER_ID`),
    ->   ADD KEY `DEPT_LOCATION_IX` (`LOCATION_ID`);
Query OK, 27 rows affected (0.159 sec)
Records: 27  Duplicates: 0  Warnings: 0

MariaDB [bd_humanresources]> ALTER TABLE `employees`
    ->   ADD PRIMARY KEY (`EMPLOYEE_ID`),
    ->   ADD UNIQUE KEY `EMP_EMAIL_UK` (`EMAIL`),
    ->   ADD KEY `EMP_DEPARTMENT_IX` (`DEPARTMENT_ID`),
    ->   ADD KEY `EMP_JOB_IX` (`JOB_ID`),
    ->   ADD KEY `EMP_MANAGER_IX` (`MANAGER_ID`),
    ->   ADD KEY `EMP_NAME_IX` (`LAST_NAME`,`FIRST_NAME`);
Query OK, 107 rows affected (0.147 sec)
Records: 107  Duplicates: 0  Warnings: 0

MariaDB [bd_humanresources]> ALTER TABLE `jobs`
    ->   ADD PRIMARY KEY (`JOB_ID`);
Query OK, 19 rows affected (0.161 sec)
Records: 19  Duplicates: 0  Warnings: 0

MariaDB [bd_humanresources]> ALTER TABLE `job_history`
    ->   ADD PRIMARY KEY (`EMPLOYEE_ID`,`START_DATE`),
    ->   ADD KEY `JHIST_DEPARTMENT_IX` (`DEPARTMENT_ID`),
    ->   ADD KEY `JHIST_EMPLOYEE_IX` (`EMPLOYEE_ID`),
    ->   ADD KEY `JHIST_JOB_IX` (`JOB_ID`);
Query OK, 11 rows affected (0.143 sec)
Records: 11  Duplicates: 0  Warnings: 0

MariaDB [bd_humanresources]> ALTER TABLE `locations`
    ->   ADD PRIMARY KEY (`LOCATION_ID`),
    ->   ADD KEY `LOC_CITY_IX` (`CITY`),
    ->   ADD KEY `LOC_COUNTRY_IX` (`COUNTRY_ID`),
    ->   ADD KEY `LOC_STATE_PROVINCE_IX` (`STATE_PROVINCE`);
Query OK, 23 rows affected (0.153 sec)
Records: 23  Duplicates: 0  Warnings: 0

MariaDB [bd_humanresources]> ALTER TABLE `regions`
    ->   ADD PRIMARY KEY (`REGION_ID`),
    ->   ADD UNIQUE KEY `sss` (`REGION_NAME`);
Query OK, 4 rows affected (0.158 sec)
Records: 4  Duplicates: 0  Warnings: 0

MariaDB [bd_humanresources]> COMMIT;
Query OK, 0 rows affected (0.000 sec)
