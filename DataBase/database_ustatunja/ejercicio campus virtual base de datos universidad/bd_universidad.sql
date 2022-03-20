-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-08-2021 a las 06:15:20
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_universidad`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas`
--

CREATE TABLE `asignaturas` (
  `idAsignatura` int(7) NOT NULL,
  `idNivel` int(3) NOT NULL,
  `nombre` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `docente` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creditos` int(2) NOT NULL,
  `horas` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `asignaturas`
--

INSERT INTO `asignaturas` (`idAsignatura`, `idNivel`, `nombre`, `docente`, `creditos`, `horas`) VALUES
(30015, 9902, 'Derecho I', 'ANDREA CAROLINA MEDINA', 3, 6),
(30016, 9902, 'Base de datos', 'HENRY ALFONSO GUIO ', 3, 6),
(30017, 9902, 'Tratamiento de jardines II', 'LUIS ALBERTO PULIDO', 6, 16),
(30018, 9902, 'Fundamentos De Mecanica ', 'JORGE LUIS QUIROGA', 2, 4),
(30019, 9902, 'Organizacion Arquitectura ', 'ANGELICA MARIA SALAZAR', 3, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `divisiones`
--

CREATE TABLE `divisiones` (
  `idDivision` int(3) NOT NULL,
  `nombreDivision` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idSeccional` int(2) NOT NULL,
  `secretarioDivision` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `decanoDivision` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `divisiones`
--

INSERT INTO `divisiones` (`idDivision`, `nombreDivision`, `idSeccional`, `secretarioDivision`, `decanoDivision`) VALUES
(10, 'Division de Ciencias Economicas, Administrativas y Contables', 1, 'YEISY LORENA VARGAS FLOREZ', 'Padre JOSE GREGORIO HERN?NDEZ TARAZONA O.P'),
(20, 'Division de Ciencias Juridicas y Politicas', 2, 'Dr. Giovanni Alcides Mongui Merchan', 'Fray Jose Fernando Mancipe Giraldo O.P'),
(30, 'Division de Arquitectura e Ingenieria', 3, 'Nathaly Martin Diaz', 'Fr. Fernando Cajica Gamboa O.P'),
(40, 'Division de Sociologia', 1, 'Xiovanna Beatriz Caballero Ariza', 'Miguel Urra O.P');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `documento` int(15) NOT NULL,
  `nombre` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` int(10) NOT NULL,
  `celular` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombrePensum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idPensum` int(5) NOT NULL,
  `nivel` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`documento`, `nombre`, `apellido`, `codigo`, `celular`, `nombrePensum`, `idPensum`, `nivel`) VALUES
(1007673204, 'Anthony Jardiel', 'L?pez P?rez', 2271557, '3194843592', 'Ingenier?a en sistemas', 1001, '1 periodo\r'),
(771481234, 'Paul alan', 'Vidal gonzales', 1234576, '3522066531', 'Ingenier?a Ambiental', 1002, '2 periodo\r'),
(260721234, 'Joseph', 'Rodr?guez', 1234589, '7706828943', 'Ingenier?a Mec?nica', 1003, '3 periodo\r'),
(566431234, 'Gregory', 'Lee', 2275486, '3102819580', 'Arquitectura', 1004, '4 periodo\r'),
(446941234, 'Samuel', 'Begley', 5578516, '4058308739', 'Derecho', 1005, '5 periodo\r');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultades`
--

CREATE TABLE `facultades` (
  `idFacultad` int(10) NOT NULL,
  `nombreFacultad` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idDivision` int(3) NOT NULL,
  `decanoFacultad` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `facultades`
--

INSERT INTO `facultades` (`idFacultad`, `nombreFacultad`, `idDivision`, `decanoFacultad`) VALUES
(9001, 'Facultad Ingenieria en sistemas', 30, 'Dec Andres'),
(9002, 'Facultad de Ingenieria Ambiental', 30, 'Dec Mauricio'),
(9003, 'Facultad Ingenieria Mecanica', 30, 'Dec Edwin'),
(9004, 'Facultad de Arquitectura', 30, 'Dec Andrea\r'),
(9005, 'Facultad de Derecho', 10, 'Dec Nubia\r'),
(9006, 'Facultad de Sociologia', 40, 'Dec Miguel');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `niveles`
--

CREATE TABLE `niveles` (
  `idNivel` int(3) NOT NULL,
  `nombreNivel` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idPensum` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `niveles`
--

INSERT INTO `niveles` (`idNivel`, `nombreNivel`, `idPensum`) VALUES
(9101, '10 periodo', 1001),
(9201, '9 periodo', 1001),
(9301, '8 periodo', 1001),
(9401, '7 periodo', 1001),
(9501, '6 periodo', 1001),
(9601, '5 periodo', 1001),
(9701, '4 periodo', 1001),
(9801, '3 periodo', 1001),
(9901, '2 periodo', 1001),
(9902, '1 Periodo', 1001);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pensum`
--

CREATE TABLE `pensum` (
  `idPensum` int(5) NOT NULL,
  `nombrePensum` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaIn` date NOT NULL,
  `fechaFin` date NOT NULL,
  `activo` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idPrograma` int(3) NOT NULL,
  `duracion` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pensum`
--

INSERT INTO `pensum` (`idPensum`, `nombrePensum`, `fechaIn`, `fechaFin`, `activo`, `idPrograma`, `duracion`) VALUES
(1001, 'Ingenieria en sistemas', '0000-00-00', '2022-07-12', 'Si', 50, '10 Semestres'),
(1002, 'Ingenieria Ambiental', '2001-11-15', '2023-12-03', 'Si', 51, '10 Semestres'),
(1003, 'Ingenieria Mecanica', '2005-07-21', '2018-12-12', 'No', 52, '8 Semestres'),
(1004, 'Arquitectura', '2009-01-24', '2025-12-12', 'Si', 53, '10 Semestres'),
(1005, 'Derecho', '0000-00-00', '2025-12-12', 'Si', 54, '9 Semestres');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programas`
--

CREATE TABLE `programas` (
  `idPrograma` int(3) NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsable` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nivelFormacion` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `escolaridad` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jornada` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idFacultad` int(15) NOT NULL,
  `duracion` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `programas`
--

INSERT INTO `programas` (`idPrograma`, `nombre`, `responsable`, `nivelFormacion`, `escolaridad`, `jornada`, `idFacultad`, `duracion`) VALUES
(50, 'Ingenieria en sistemas', 'Dec. Andres ', 'Pregrado', 'Profesional', 'Diurna', 9001, '10 Semestres'),
(51, 'Ingenieria Ambiental', 'Dec. Mauricio', 'Pregrado', 'Profesional', 'Nocturna', 9002, '10 Semestres'),
(52, 'Ingenieria Mecanica', 'Dec. Edwin', 'Pregrado', 'Profesional', 'Nocturna', 9003, '8 Semestres'),
(53, 'Arquitectura', 'Dec. Andrea ', 'Pregrado', 'Profesional', 'Diurna', 9004, '10 Semestres\r'),
(54, 'Derecho', 'Dec. Nubia', 'Pregrado', 'Profesional', 'Nocturna', 9005, '9 Semestres\r');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccionales`
--

CREATE TABLE `seccionales` (
  `idSeccional` int(11) NOT NULL,
  `nombreSeccional` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teléfono` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rector` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaInicio` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `seccionales`
--

INSERT INTO `seccionales` (`idSeccional`, `nombreSeccional`, `ciudad`, `direccion`, `teléfono`, `rector`, `fechaInicio`) VALUES
(1, 'Sede Principal', 'Bogotá', 'Carrera 9 #51 - 70', '7456456', 'P. Jose Gabriel Mesa Angulo O.P', '1580-01-01'),
(2, 'Seccional Bucaramanga', 'Bucaramanga', 'Carrera 18 #9 -27', '545454', 'P. Erico Juan Macchi Cspedes O.P', '1976-01-01'),
(3, 'Seccional Tunja', 'Tunja', 'Carrera 19 #1 - 64', '65454654', 'P. Alvaro Jose Restrepo O.P', '1999-01-01'),
(4, 'Seccional Medellin', 'Medellin', 'Carrera 82 #77B - 27', '54354', 'P. Luis Alberto Orozco Arcila O.P', '2007-01-01'),
(5, 'Seccional Villacicencio', 'Villavicencio', 'Carrera 22 - Cll 1b', '343543', 'P. Juan Ubaldo Lopez O.P', '2010-01-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes`
--

CREATE TABLE `sedes` (
  `idSede` int(3) NOT NULL,
  `nombreSede` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idSeccional` int(2) NOT NULL,
  `ciudad` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` int(15) NOT NULL,
  `geoPosicion` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sedes`
--

INSERT INTO `sedes` (`idSede`, `nombreSede`, `idSeccional`, `ciudad`, `direccion`, `area`, `geoPosicion`) VALUES
(101, 'Campus Centro Historico', 1, 'Tunja', 'Carrera 9 #51 70', 1313, 12213),
(102, 'Campus Av Universitaria', 3, 'Tunja', 'Carrera 18 #9 27', 65413, 45456),
(103, 'Campus Casa Tomasina', 3, 'Tunja', 'Carrera 19 #1  64', 5153, 5454),
(104, 'Sede Principal', 1, 'Bogota', 'Carrera 82 #77B 27', 35135, 8486),
(105, 'Edificio Doctor Angelico', 1, 'Bogota', 'Carrera 22  Cll 1b', 3515, 6546),
(106, 'Edificio El Aquinate', 1, 'Bogota', 'Carrera 22  Cll 1b', 2454, 35454);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD PRIMARY KEY (`idAsignatura`),
  ADD KEY `asignatura_nivel_FK` (`idNivel`);

--
-- Indices de la tabla `divisiones`
--
ALTER TABLE `divisiones`
  ADD PRIMARY KEY (`idDivision`),
  ADD KEY `DivisioneSeccionales_FK` (`idSeccional`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD KEY `EstudiantePensum_FK` (`idPensum`);

--
-- Indices de la tabla `facultades`
--
ALTER TABLE `facultades`
  ADD PRIMARY KEY (`idFacultad`),
  ADD KEY `FacultadesDivisiones_FK` (`idDivision`);

--
-- Indices de la tabla `niveles`
--
ALTER TABLE `niveles`
  ADD PRIMARY KEY (`idNivel`),
  ADD KEY `NivelesPensum_FK` (`idPensum`);

--
-- Indices de la tabla `pensum`
--
ALTER TABLE `pensum`
  ADD PRIMARY KEY (`idPensum`),
  ADD KEY `PensumPrograma_FK` (`idPrograma`);

--
-- Indices de la tabla `programas`
--
ALTER TABLE `programas`
  ADD PRIMARY KEY (`idPrograma`),
  ADD KEY `ProgramaFacultad_FK` (`idFacultad`);

--
-- Indices de la tabla `seccionales`
--
ALTER TABLE `seccionales`
  ADD PRIMARY KEY (`idSeccional`);

--
-- Indices de la tabla `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`idSede`),
  ADD KEY `SedeSeccional_FK` (`idSeccional`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD CONSTRAINT `asignatura_nivel_FK` FOREIGN KEY (`idNivel`) REFERENCES `niveles` (`idNivel`);

--
-- Filtros para la tabla `divisiones`
--
ALTER TABLE `divisiones`
  ADD CONSTRAINT `DivisioneSeccionales_FK` FOREIGN KEY (`idSeccional`) REFERENCES `seccionales` (`idSeccional`);

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `EstudiantePensum_FK` FOREIGN KEY (`idPensum`) REFERENCES `pensum` (`idPensum`);

--
-- Filtros para la tabla `facultades`
--
ALTER TABLE `facultades`
  ADD CONSTRAINT `FacultadesDivisiones_FK` FOREIGN KEY (`idDivision`) REFERENCES `divisiones` (`idDivision`);

--
-- Filtros para la tabla `niveles`
--
ALTER TABLE `niveles`
  ADD CONSTRAINT `NivelesPensum_FK` FOREIGN KEY (`idPensum`) REFERENCES `pensum` (`idPensum`);

--
-- Filtros para la tabla `pensum`
--
ALTER TABLE `pensum`
  ADD CONSTRAINT `PensumPrograma_FK` FOREIGN KEY (`idPrograma`) REFERENCES `programas` (`idPrograma`);

--
-- Filtros para la tabla `programas`
--
ALTER TABLE `programas`
  ADD CONSTRAINT `ProgramaFacultad_FK` FOREIGN KEY (`idFacultad`) REFERENCES `facultades` (`idFacultad`);

--
-- Filtros para la tabla `sedes`
--
ALTER TABLE `sedes`
  ADD CONSTRAINT `SedeSeccional_FK` FOREIGN KEY (`idSeccional`) REFERENCES `seccionales` (`idSeccional`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
