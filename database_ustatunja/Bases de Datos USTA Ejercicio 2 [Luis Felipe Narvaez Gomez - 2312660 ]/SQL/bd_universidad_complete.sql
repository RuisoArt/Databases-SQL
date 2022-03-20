-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-08-2021 a las 18:42:17
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

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
  `idAsignatura` int(11) NOT NULL,
  `nombreAsignatura` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semestre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idSeccional_forean2asign` int(11) NOT NULL,
  `idPrograma_forean2asign` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `asignaturas`
--

INSERT INTO `asignaturas` (`idAsignatura`, `nombreAsignatura`, `semestre`, `idSeccional_forean2asign`, `idPrograma_forean2asign`) VALUES
(15522, 'Quimica General', 'Primero', 11, 10510),
(15523, 'Calculo Diferencial', 'Primero', 11, 10510),
(15524, 'Algebra Lineal', 'Primero', 11, 10510),
(15525, 'Introduccion a la Ingenieria Electronica', 'Primero', 11, 10510),
(15526, 'Catedra de Henri Didon', 'Primero', 11, 10510),
(15527, 'Filosofia Institucional', 'Primero', 11, 10510),
(15528, 'Ingles I', 'Primero', 11, 10510),
(15529, 'Fisica mecanica', 'Segundo', 11, 10510),
(15530, 'Calculo Integral', 'Segundo', 11, 10510),
(15531, 'Logica de Programacion', 'Segundo', 11, 10510),
(15532, 'Fundamentos de circuitos', 'Segundo', 11, 10510),
(15533, 'Comunicación oral y escrita', 'Segundo', 11, 10510),
(15534, 'Antropologia', 'Segundo', 11, 10510),
(15535, 'Ingles II', 'Segundo', 11, 10510),
(15536, 'Electricidad y magnetismo', 'Tercero', 11, 10510),
(15537, 'Calculo Vectorial', 'Tercero', 11, 10510),
(15538, 'Sistemas digitales I', 'Tercero', 11, 10510),
(15539, 'Electronica I', 'Tercero', 11, 10510),
(15540, 'Circuitos I', 'Tercero', 11, 10510),
(15541, 'Ingles III', 'Tercero', 11, 10510),
(15542, 'Ecuaciones Diferenciales', 'Cuarto', 11, 10510),
(15543, 'Sistemas digitales II', 'Cuarto', 11, 10510),
(15544, 'Electronica II', 'Cuarto', 11, 10510),
(15545, 'Circuitos II', 'Cuarto', 11, 10510),
(15546, 'Epistemologia', 'Cuarto', 11, 10510),
(15547, 'Ingles IV', 'Cuarto', 11, 10510),
(15548, 'Ondas y Electromagnetismo', 'Quinto', 11, 10510),
(15549, 'Probabilidad y estadistica', 'Quinto', 11, 10510),
(15550, 'Programacion', 'Quinto', 11, 10510),
(15551, 'Electronica III', 'Quinto', 11, 10510),
(15552, 'Señales y sistemas', 'Quinto', 11, 10510),
(15553, 'Ingles V', 'Quinto', 11, 10510),
(15554, 'Procesamiento Digital de Señales', 'Sexto', 11, 10510),
(15555, 'Semiconductores', 'Sexto', 11, 10510),
(15556, 'Conversion electromagnetica', 'Sexto', 11, 10510),
(15557, 'Identificacion y modelado de sistemas', 'Sexto', 11, 10510),
(15558, 'Teoria de la comunicación', 'Sexto', 11, 10510),
(15559, 'Ingles VI', 'Sexto', 11, 10510),
(15560, 'Instrumentacion Industrial', 'Septimo', 11, 10510),
(15561, 'Electronica de Potencia', 'Septimo', 11, 10510),
(15562, 'Control analogico', 'Septimo', 11, 10510),
(15563, 'Comunicaciones inalambricas', 'Septimo', 11, 10510),
(15564, 'Optativa Administrativa I', 'Septimo', 11, 10510),
(15565, 'Cultura Teologica', 'Septimo', 11, 10510),
(15566, 'Control Digital', 'Octavo', 11, 10510),
(15567, 'Transmision de datos', 'Octavo', 11, 10510),
(15568, 'Proyecto de Investigacion o desarrollo I', 'Octavo', 11, 10510),
(15569, 'Electiva de profundizacion I', 'Octavo', 11, 10510),
(15570, 'Optativa Administrativa II', 'Octavo', 11, 10510),
(15571, 'Filodofia Politica', 'Octavo', 11, 10510),
(15572, 'Automatizacion Industrial', 'Noveno', 11, 10510),
(15573, 'Proyecto de Investigacion o desarrollo II', 'Noveno', 11, 10510),
(15574, 'Electiva de profundizacion II', 'Noveno', 11, 10510),
(15575, 'Catedra opcional complementaria', 'Noveno', 11, 10510),
(15576, 'Optativa administrativa III', 'Noveno', 11, 10510),
(15577, 'Etica', 'Noveno', 11, 10510),
(15578, 'Opcion de Grado', 'Decimo', 11, 10510),
(15579, 'Electiva de Profundizacion III', 'Decimo', 11, 10510),
(15580, 'Catedra opcional Institucional', 'Decimo', 11, 10510),
(15617, 'Fundamentos del Diseño', 'Primero', 12, 10545),
(15618, 'Geometria del Diseño', 'Primero', 12, 10545),
(15619, 'Historia del Arte y del Diseño I', 'Primero', 12, 10545),
(15620, 'Teoria de la comunicación', 'Primero', 12, 10545),
(15621, 'Filosofia Institucional', 'Primero', 12, 10545),
(15622, 'Comunicaicon Oral y Escrita', 'Primero', 12, 10545),
(15623, 'Pensamiento Logico', 'Primero', 12, 10545),
(15624, 'Catedra Henri Didon', 'Primero', 12, 10545),
(15625, 'Diseño Tipografico', 'Segundo', 12, 10545),
(15626, 'Dibujo a Mano Alzada', 'Segundo', 12, 10545),
(15627, 'Comunicación Visual', 'Segundo', 12, 10545),
(15628, 'Aplicaciones Informaticas I', 'Segundo', 12, 10545),
(15629, 'Historia del arte y del Diseño II', 'Segundo', 12, 10545),
(15630, 'Epistemologia', 'Segundo', 12, 10545),
(15631, 'Ingles I', 'Segundo', 12, 10545),
(15632, 'Diseño Editorial', 'Tercero', 12, 10545),
(15633, 'Aplicaciones Informaticas II', 'Tercero', 12, 10545),
(15634, 'Diseño y sociedad ', 'Tercero', 12, 10545),
(15635, 'Ilustracion I', 'Tercero', 12, 10545),
(15636, 'Procesos de Produccion', 'Tercero', 12, 10545),
(15637, 'Cultura Teologica', 'Tercero', 12, 10545),
(15638, 'Ingles II', 'Tercero', 12, 10545),
(15639, 'Identidad Grafica', 'Cuarto', 12, 10545),
(15640, 'Fotografia', 'Cuarto', 12, 10545),
(15641, 'Ilustracion II', 'Cuarto', 12, 10545),
(15642, 'Aplicaciones Informaticas III', 'Cuarto', 12, 10545),
(15643, 'Investigacion I', 'Cuarto', 12, 10545),
(15644, 'Antropologia', 'Cuarto', 12, 10545),
(15645, 'Ingles III', 'Cuarto', 12, 10545),
(15646, 'Campañas Promocionales', 'Quinto', 12, 10545),
(15647, 'Ecodiseño', 'Quinto', 12, 10545),
(15648, 'Teoria del Diseño', 'Quinto', 12, 10545),
(15649, 'Fundamentos de Administracion', 'Quinto', 12, 10545),
(15650, 'Investigacion II', 'Quinto', 12, 10545),
(15651, 'Filosofia politica', 'Quinto', 12, 10545),
(15652, 'Ingles IV', 'Quinto', 12, 10545),
(15653, 'Enfasis Conceptual I', 'Sexto', 12, 10545),
(15654, 'Enfasis Proyectual I', 'Sexto', 12, 10545),
(15655, 'Emprendimiento y Creacion de Empresas', 'Sexto', 12, 10545),
(15656, 'Investigacion - Creacion', 'Sexto', 12, 10545),
(15657, 'Etica', 'Sexto', 12, 10545),
(15658, 'Ingles V', 'Sexto', 12, 10545),
(15659, 'Electiva Profesional I', 'Sexto', 12, 10545),
(15660, 'Enfasis Conceptual II', 'Septimo', 12, 10545),
(15661, 'Enfasis Proyectual II', 'Septimo', 12, 10545),
(15662, 'Formulacion y Gestion de Proyectos', 'Septimo', 12, 10545),
(15663, 'Catedra Opcional', 'Septimo', 12, 10545),
(15664, 'Ingles VI', 'Septimo', 12, 10545),
(15665, 'Electiva Profesional II', 'Septimo', 12, 10545),
(15666, 'Trabajo de Grado', 'Octavo', 12, 10545),
(15667, 'Electiva Profesional III', 'Octavo', 12, 10545),
(15668, 'Electiva Profesional IV', 'Octavo', 12, 10545),
(15723, 'Bioquímica', 'Primero', 13, 10598),
(15724, 'Histología', 'Primero', 13, 10598),
(15725, 'Optometría Básica', 'Primero', 13, 10598),
(15726, 'Comunicación Oral y Escrita', 'Primero', 13, 10598),
(15727, 'Fundamentos de Pensamiento lógico', 'Primero', 13, 10598),
(15728, 'Filosofía Institucional', 'Primero', 13, 10598),
(15729, 'Lengua Extranjera I', 'Primero', 13, 10598),
(15730, 'Cátedra Henry Didon', 'Primero', 13, 10598),
(15731, 'Microbiología', 'Segundo', 13, 10598),
(15732, 'Refracción Objetiva', 'Segundo', 13, 10598),
(15733, 'Óptica Geométrica', 'Segundo', 13, 10598),
(15734, 'Antropología', 'Segundo', 13, 10598),
(15735, 'Cátedra de Profundización Profesional I: Lenguaje Gestual', 'Segundo', 13, 10598),
(15736, 'Cátedra de Profundización Profesional I: Primeros Auxilios', 'Segundo', 13, 10598),
(15737, 'Cátedra Opcional Institucional I', 'Segundo', 13, 10598),
(15738, 'Lengua Extranjera II', 'Segundo', 13, 10598),
(15739, 'Técnicas Diagnósticas en Estructuras Oculares', 'Tercero', 13, 10598),
(15740, 'Morfofisiología del Sistema Visual', 'Tercero', 13, 10598),
(15741, 'Refracción Subjetiva', 'Tercero', 13, 10598),
(15742, 'Física Óptica', 'Tercero', 13, 10598),
(15743, 'Epistemología', 'Tercero', 13, 10598),
(15744, 'Cátedra de Profundización Profesional II: PsicologÍa en Salud', 'Tercero', 13, 10598),
(15745, 'Cátedra de Profundización Profesional II: Humanización del Servicio', 'Tercero', 13, 10598),
(15746, 'Lengua Extranjera III', 'Tercero', 13, 10598),
(15747, 'Cátedra Opcional Institucional II', 'Tercero', 13, 10598),
(15748, 'Semiología Clínica Ocular', 'Cuarto', 13, 10598),
(15749, 'Patología Ocular de Segmento Anterior', 'Cuarto', 13, 10598),
(15750, 'Motilidad Ocular', 'Cuarto', 13, 10598),
(15751, 'Neurofisiología Visual', 'Cuarto', 13, 10598),
(15752, 'Óptica Fisiológica', 'Cuarto', 13, 10598),
(15753, 'Cultura Teológica', 'Cuarto', 13, 10598),
(15754, 'Lengua Extranjera IV', 'Cuarto', 13, 10598),
(15755, 'Patología Ocular de Segmento Posterior', 'Quinto', 13, 10598),
(15756, 'Análisis Clínico Refractivo', 'Quinto', 13, 10598),
(15757, 'Optometría Pediátrica', 'Quinto', 13, 10598),
(15758, 'Óptica Oftálmica', 'Quinto', 13, 10598),
(15759, 'Introducción a la Investigación en Optometría', 'Quinto', 13, 10598),
(15760, 'Filosofía Política', 'Quinto', 13, 10598),
(15761, 'Lengua Extranjera V', 'Quinto', 13, 10598),
(15762, 'Clínica Básica', 'Sexto', 13, 10598),
(15763, 'Análisis Clínico Integral', 'Sexto', 13, 10598),
(15764, 'Exámenes Especializados para el Diagnóstico Ocular', 'Sexto', 13, 10598),
(15765, 'Rehabilitación Visual y Baja Visión', 'Sexto', 13, 10598),
(15766, 'Epidemiología', 'Sexto', 13, 10598),
(15767, 'Ética', 'Sexto', 13, 10598),
(15768, 'Cátedra de Profundización Profesional III: Auditoría en Salud ', 'Sexto', 13, 10598),
(15769, 'Cátedra de Profundización Profesional III: Responsabilidad Legal en Optometría', 'Sexto', 13, 10598),
(15770, 'Lengua Extranjera VI', 'Sexto', 13, 10598),
(15771, 'Seguridad y Salud Visual en el Trabajo', 'Septimo', 13, 10598),
(15772, 'Clínica de Cuidado Primario I', 'Septimo', 13, 10598),
(15773, 'Clínica del Segmento Anterior', 'Septimo', 13, 10598),
(15774, 'Lentes de Contacto', 'Septimo', 13, 10598),
(15775, 'Terapia Visual y Ortóptica', 'Septimo', 13, 10598),
(15776, 'Prótesis oculares', 'Septimo', 13, 10598),
(15777, 'Seminario de Investigación I', 'Septimo', 13, 10598),
(15778, 'Cátedra de Profundización Profesional IV: Fotografía Ocular', 'Septimo', 13, 10598),
(15779, 'Cátedra de Profundización Profesional IV: Manejo Perioperatorio Interdisciplinario en Cirugía Ocular', 'Septimo', 13, 10598),
(15780, 'Clínica de Cuidado Primario II', 'Octavo', 13, 10598),
(15781, 'Clínica del Segmento Posterior', 'Octavo', 13, 10598),
(15782, 'Clínica de Lentes de Contacto', 'Octavo', 13, 10598),
(15783, 'Clínica de Terapia Visual', 'Octavo', 13, 10598),
(15784, 'Estrabismos y Ambliopía', 'Octavo', 13, 10598),
(15785, 'Ocular Emergencies', 'Octavo', 13, 10598),
(15786, 'Seminario de Investigación II', 'Octavo', 13, 10598),
(15787, 'Cátedra de Profundización Profesional V: Gerencia en Optometría', 'Octavo', 13, 10598),
(15788, 'Cátedra de Profundización Profesional V: Mercadeo en Optometría', 'Octavo', 13, 10598),
(15789, 'Cátedra Opcional Institucional III', 'Octavo', 13, 10598),
(15790, 'Práctica Comunitaria', 'Noveno', 13, 10598),
(15791, 'Clínica Integral', 'Noveno', 13, 10598),
(15792, 'Clínica del Cuidado Primario Pediátrico', 'Noveno', 13, 10598),
(15793, 'Liderazgo y Emprendimiento Optométrico', 'Noveno', 13, 10598),
(15794, 'Ejercicio Profesional Basado en la Evidencia', 'Noveno', 13, 10598),
(15795, 'Clínica de Profundización: Clínica de Ortóptica y Terapia Visual', 'Noveno', 13, 10598),
(15796, 'Clínica de Profundización: Clínica de Rehabilitación Visual y Baja Visión', 'Noveno', 13, 10598),
(15797, 'Cátedra de Profundización Profesional VI: Geriatría en Optometría', 'Noveno', 13, 10598),
(15798, 'Cátedra de Profundización Profesional VI: Cuidado Primario Avanzado', 'Noveno', 13, 10598),
(15799, 'Práctica Profesional', 'Decimo', 13, 10598),
(15800, 'Cátedra Opcional Complementaria I', 'Decimo', 13, 10598),
(15801, 'Cátedra Opcional Complementaria II', 'Decimo', 13, 10598),
(15802, 'Cátedra Opcional Complementaria III', 'Decimo', 13, 10598);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `divisiones`
--

CREATE TABLE `divisiones` (
  `idDivision` int(11) NOT NULL,
  `nombreDivision` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numeroFacultades` int(11) NOT NULL,
  `decanoDivision` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secretarioDivision` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idSeccional_forean2division` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `divisiones`
--

INSERT INTO `divisiones` (`idDivision`, `nombreDivision`, `numeroFacultades`, `decanoDivision`, `secretarioDivision`, `idSeccional_forean2division`) VALUES
(112, 'Nuevas sin clasificacion ', 2, 'Decano 1', 'Secretario 1', 11),
(113, 'Division de Ciencias Economicas Administrativas y Contables', 10, 'Decano 2', 'Secretario 2', 11),
(114, 'Division de Ciencias Juridicas y Politicas', 12, 'Decano 3', 'Secretario 3', 11),
(115, 'Division de Arquitectura e Ingenierias', 14, 'Decano 4', 'Secretario 4', 11),
(116, 'Division de Ciencias de la Salud', 1, 'Decano 5', 'Secretario 5', 11),
(117, 'Centro de Estudios Enrique Lacordaire', 1, 'Decano 6', 'Secretario 6', 11),
(119, 'Division de ciencias Juridicas y Politicas', 2, 'Decano 7', 'Secretario 7', 12),
(120, 'Division de Ciencias de la Salud', 2, 'Decano 8', 'Secretario 8', 12),
(121, 'Division de Ciencias Sociales', 3, 'Decano 9', 'Secretario 9', 12),
(122, 'Division de Filosofia y Teologia', 2, 'Decano 10', 'Secretario 10', 12),
(123, 'Division de Ingenierias', 6, 'Decano 11', 'Secretario 11', 12),
(124, 'division de Ciencias Administrativas y economicas', 6, 'Decano 12', 'Secretario 12', 12),
(125, 'Division de Educacion Abierta y a distancia', 2, 'Decano 13', 'Secretario 13', 12),
(127, 'Division de Ciencias de la Salud', 4, 'Decano 14', 'Secretario 14', 13),
(128, 'Division de Ingenierias y Arquitectura', 7, 'Decano 15', 'Secretario 15', 13),
(129, 'Division de Ciencias Economicas Administrativas y contables', 5, 'Decano 16', 'Secretario 16', 13),
(130, 'Division de Ciencias Juridicas y Politicas', 1, 'Decano 17', 'Secretario 17', 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `idEstudiante` int(11) NOT NULL,
  `nombreEstudiante` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semestre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idAsignatura_forean2est` int(11) NOT NULL,
  `nombreAsignatura_forean2est` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idPrograma_forean2est` int(11) NOT NULL,
  `idSeccional_forean2est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`idEstudiante`, `nombreEstudiante`, `semestre`, `idAsignatura_forean2est`, `nombreAsignatura_forean2est`, `idPrograma_forean2est`, `idSeccional_forean2est`) VALUES
(123450, 'Paquito Fernandez', 'Segundo', 15731, 'Microbiología', 10598, 13),
(123451, 'Nikol Guitierrez', 'Segundo', 15732, 'Refracción Objetiva', 10598, 13),
(123452, 'Given Morales', 'Segundo', 15733, 'Óptica Geométrica', 10598, 13),
(123453, 'Fuyu Noceda', 'Segundo', 15734, 'Antropología', 10598, 13),
(123454, 'Marcos Alarcon', 'Segundo', 15735, 'Cátedra de Profundización Profesional I: Lenguaje Gestual', 10598, 13),
(123455, 'Daniel Rojas', 'Segundo', 15736, 'Cátedra de Profundización Profesional I: Primeros Auxilios', 10598, 13),
(123456, 'Daniel Gaona', 'Segundo', 15737, 'Cátedra Opcional Institucional I', 10598, 13),
(123457, 'Jose Vargas', 'Segundo', 15738, 'Lengua Extranjera II', 10598, 13),
(123458, 'Fernanda Jimenez', 'Quinto', 15646, 'Campañas Promocionales', 10545, 12),
(123459, 'Steven Martinez', 'Quinto', 15647, 'Ecodiseño', 10545, 12),
(123460, 'Dayan Gonzalez', 'Quinto', 15648, 'Teoria del Diseño', 10545, 12),
(123461, 'Yeimy Astrid', 'Quinto', 15649, 'Fundamentos de Administracion', 10545, 12),
(123462, 'Miguel Cendales', 'Quinto', 15650, 'Investigacion II', 10545, 12),
(123463, 'Angelo Zapatero', 'Quinto', 15651, 'Filosofia politica', 10545, 12),
(123464, 'Henry Narvaez', 'Quinto', 15652, 'Ingles IV', 10545, 12),
(123465, 'Yeimy Dayana', 'Septimo', 15560, 'Instrumentacion Industrial', 10510, 11),
(123466, 'Sebastian Monrroy', 'Septimo', 15561, 'Electronica de Potencia', 10510, 11),
(123467, 'Alejo Gomez', 'Septimo', 15562, 'Control analogico', 10510, 11),
(123468, 'Yuko Andrey', 'Septimo', 15563, 'Comunicaciones inalambricas', 10510, 11),
(123469, 'Maleja Palomo', 'Septimo', 15564, 'Optativa Administrativa I', 10510, 11),
(123470, 'Camilo Pardo', 'Septimo', 15565, 'Cultura Teologica', 10510, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultades`
--

CREATE TABLE `facultades` (
  `idFacultad` int(11) NOT NULL,
  `nombreFacultad` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `decanoFacultad` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secretarioFacultad` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idSeccional_forean2facu` int(11) NOT NULL,
  `idDivision_forean2facu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `facultades`
--

INSERT INTO `facultades` (`idFacultad`, `nombreFacultad`, `decanoFacultad`, `secretarioFacultad`, `idSeccional_forean2facu`, `idDivision_forean2facu`) VALUES
(1012, 'Diseño de Interaccion', 'Decano 1', 'secretario 1', 11, 112),
(1013, 'Licenciatura en Español y Lenguas Extranjeras Ingles y Frances', 'Decano 2', 'secretario 2', 11, 112),
(1014, 'Administracion de Empresas', 'Decano 3', 'secretario 3', 11, 113),
(1015, 'Megocios Internacionales', 'Decano 4', 'secretario 4', 11, 113),
(1016, 'Contaduria Publica ', 'Decano 5', 'aecretario 5', 11, 113),
(1017, 'Derecho', 'Decano 6', 'oecretario 6', 11, 114),
(1018, 'Arquitectura', 'Decano 7', 'aecretario 7', 11, 115),
(1019, 'Ingenieria Ambiental', 'Decano 8', 'lecretario 8', 11, 115),
(1020, 'Ingenieria Civil', 'Decano 9', 'lecretario 9', 11, 115),
(1021, 'Ingenieria de Sistemas', 'Decano 10', 'secretario 10', 11, 115),
(1022, 'Ingenieria Electronica', 'Decano 11', 'aecretario 11', 11, 115),
(1023, 'Ingenieria Mecanica', 'Decano 12', 'aecretario 12', 11, 115),
(1024, 'Ingenieria Industrial', 'Decano 13', 'lecretario 13', 11, 115),
(1025, 'Cultura Fisica Deporte y Recreacion', 'Decano 14', 'necretario 14', 11, 117),
(1026, 'Facultad de Derecho', 'Decano 15', 'oecretario 15', 12, 119),
(1027, 'Facultad de Gobierno y Relaciones Internacionales', 'Decano 16', 'secretario 16', 12, 119),
(1028, 'Facultad de Cultura Fisica y Deporte', 'Decano 17', 'eecretario 17', 12, 120),
(1029, 'Facultad de Psicologia', 'Decano 18', 'aecretario 18', 12, 120),
(1030, 'Facultad de Comunicación Social', 'Decano 19', 'lecretario 19', 12, 121),
(1031, 'Facultad de Diseño Grafico', 'Decano 20', 'oecretario 20', 12, 121),
(1032, 'Facultad de sociologia', 'Decano 21', 'aecretario 21', 12, 121),
(1033, 'Facultad e Filosofia y Letras', 'Decano 22', 'secretario 22', 12, 122),
(1034, 'Facultad de Teologia', 'Decano 23', 'aecretario 23', 12, 122),
(1035, 'Facultad de Ingenieria Civil', 'Decano 24', 'lecretario 24', 12, 123),
(1036, 'Facultad de Ingenieria Electronica', 'Decano 25', 'aecretario 25', 12, 123),
(1037, 'Facultad de Ingenieria Mecanica', 'Decano 26', 'aecretario 26', 12, 123),
(1038, 'Facultad de Ingenieria de Telecomunicaciones', 'Decano 27', 'secretario 27', 12, 123),
(1039, 'Facultad de Ingenieria Ambiental', 'Decano 28', 'lecretario 28', 12, 123),
(1040, 'Facultad de Ingenieria Industrial', 'Decano 29', 'lecretario 29', 12, 123),
(1041, 'Facultad de Administracion de Empresas', 'Decano 30', 'secretario 30', 12, 124),
(1042, 'Facultad de Contaduria Publica', 'Decano 31', 'aecretario 31', 12, 124),
(1043, 'Facultad de Econnomia', 'Decano 32', 'aecretario 32', 12, 124),
(1044, 'Facultad de Estadistica', 'Decano 33', 'aecretario 33', 12, 124),
(1045, 'Facultad de Mercadeo', 'Decano 34', 'oecretario 34', 12, 124),
(1046, 'Facultad de Negocios Internacionales', 'Decano 35', 'secretario 35', 12, 124),
(1047, 'Facultad de Educacion', 'Decano 36', 'necretario 36', 12, 125),
(1048, 'Facultad de Ciencias y Tecnologia', 'Decano 37', 'aecretario 37', 12, 125),
(1049, 'Odontologia', 'Decano 38', 'aecretario 38', 13, 127),
(1050, 'Optometria', 'Decano 39', 'aecretario 39', 13, 127),
(1051, 'Tecnolgia de Laboratorio Dental', 'Decano 40', 'lecretario 40', 13, 127),
(1052, 'Cultura Fisica  Deporte y Recreacion', 'Decano 41', 'necretario 41', 13, 127),
(1053, 'Quimica Ambiental', 'Decano 42', 'lecretario 42', 13, 128),
(1054, 'Ingenieria Civil', 'Decano 43', 'lecretario 43', 13, 128),
(1055, 'Ingenieria Ambiental', 'Decano 44', 'lecretario 44', 13, 128),
(1056, 'Ingenieria Mecatronica', 'Decano 45', 'aecretario 45', 13, 128),
(1057, 'Ingenieria Industrial', 'Decano 46', 'lecretario 46', 13, 128),
(1058, 'Ingenieria de Telecomunicaciones', 'Decano 47', 'secretario 47', 13, 128),
(1059, 'Arquitectura', 'Decano 48', 'aecretario 48', 13, 128),
(1060, 'Administracion de Empresas', 'Decano 49', 'secretario 49', 13, 129),
(1061, 'Administracion de Empresas Agropecuarias', 'Decano 50', 'secretario 50', 13, 129),
(1062, 'Economia', 'Decano 51', 'aecretario 51', 13, 129),
(1063, 'Contaduria Publica ', 'Decano 52', 'aecretario 52', 13, 129),
(1064, 'Negocios Internacionales', 'Decano 53', 'secretario 53', 13, 129),
(1065, 'Derecho', 'Decano 54', 'oecretario 54', 13, 130);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pensum`
--

CREATE TABLE `pensum` (
  `idPensum` int(11) NOT NULL,
  `nombrePensum` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creditos` int(11) NOT NULL,
  `duracion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFinalizacion` date NOT NULL,
  `idPrograma_forean2pensum` int(11) NOT NULL,
  `idSeccional_forean2pensum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pensum`
--

INSERT INTO `pensum` (`idPensum`, `nombrePensum`, `creditos`, `duracion`, `fechaInicio`, `fechaFinalizacion`, `idPrograma_forean2pensum`, `idSeccional_forean2pensum`) VALUES
(10551, 'Primer Pensum Ingenieria de sistemas 2004-1', 260, '10 semestres', '2001-02-13', '2007-10-12', 10509, 11),
(10552, 'Segundo Pensum Ingenieria de Sistemas 2008-1', 260, '10 Semestres', '2001-02-14', '0000-00-00', 10509, 11),
(10553, 'TercerPensum Ingenieria de Sistemas 2018-2', 260, '10 semestres', '2001-02-15', '0000-00-00', 10509, 11),
(10554, 'Pensum Electivas Ingenieria de Sistemas', 165, '1 semestre', '2001-02-16', '2007-10-12', 10509, 11),
(10555, 'Pensum Ingenieria Mecanica', 260, '10 Semestres', '2001-02-17', '0000-00-00', 10511, 11),
(10556, 'Pensum Derecho', 260, '10 semestres', '2001-02-18', '0000-00-00', 10505, 11),
(10557, 'Pensum contaduria Publica', 260, '10 semestres', '2001-02-19', '2007-10-12', 10542, 12),
(10558, 'Pensum Asministracion de Empresas', 260, '10 semestres', '2001-02-20', '0000-00-00', 10540, 12),
(10559, 'Pensum Especializacion en Derecho Administrativo', 52, '2 Semestres', '2001-02-21', '0000-00-00', 10568, 12),
(10560, 'Pensum Maetria en Derecho Asministrativo', 104, '4 semestres', '2001-02-22', '2007-10-12', 10526, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programas`
--

CREATE TABLE `programas` (
  `idPrograma` int(11) NOT NULL,
  `nombrePrograma` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modalidad` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idSeccional_forean2program` int(11) NOT NULL,
  `idDivision_forean2program` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `programas`
--

INSERT INTO `programas` (`idPrograma`, `nombrePrograma`, `modalidad`, `idSeccional_forean2program`, `idDivision_forean2program`) VALUES
(10500, 'Diseño de Interaccion', 'Pregrado', 11, 112),
(10501, 'Licenciatura en Español y Lenguas Extranjeras Ingles y Frances', 'Pregrado', 11, 112),
(10502, 'Administracion de Empresas', 'Pregrado', 11, 113),
(10503, 'Megocios Internacionales', 'Pregrado', 11, 113),
(10504, 'Contaduria Publica ', 'Pregrado', 11, 113),
(10505, 'Derecho', 'Pregrado', 11, 114),
(10506, 'Arquitectura', 'Pregrado', 11, 115),
(10507, 'Ingenieria Ambiental', 'Pregrado', 11, 115),
(10508, 'Ingenieria Civil', 'Pregrado', 11, 115),
(10509, 'Ingenieria de Sistemas', 'Pregrado', 11, 115),
(10510, 'Ingenieria Electronica', 'Pregrado', 11, 115),
(10511, 'Ingenieria Mecanica', 'Pregrado', 11, 115),
(10512, 'Ingenieria Industrial', 'Pregrado', 11, 115),
(10513, 'Cultura Fisica  Deporte y Recreacion', 'Pregrado', 11, 116),
(10514, 'Especialización en Gerencia Estratégica de Costos (Virtual)', 'Posgrado', 11, 113),
(10515, 'Especialización en Auditoría de Salud', 'Posgrado', 11, 113),
(10516, 'Especializacion en Auditoria y Aseguramiento de la Informacion', 'Posgrado', 11, 113),
(10517, 'Especializacion en Gobierno y Gestion Territorial', 'Posgrado', 11, 113),
(10518, 'Especializacion de Innovacion y Marketing', 'Posgrado', 11, 113),
(10519, 'Maestria en Administracion', 'Posgrado', 11, 113),
(10520, 'Doctorado en Derecho Público ', 'Posgrado', 11, 114),
(10521, 'Maestría en Derecho Minero - Ambiental', 'Posgrado', 11, 114),
(10522, 'Especialización en Derecho Penal y Procesal Penal', 'Posgrado', 11, 114),
(10523, 'Especialización en Derecho Administrativo', 'Posgrado', 11, 114),
(10524, 'Especialización en Contratación Estatal', 'Posgrado', 11, 114),
(10525, 'Especialización en Psicología Jurídica y Forense', 'Posgrado', 11, 114),
(10526, 'Maestria en Derecho Administrativo', 'Posgrado', 11, 114),
(10527, 'Maestria  en Derecho Penal y Procesal Penal', 'Posgrado', 11, 114),
(10528, 'Maestria  en Derecho Privado', 'Posgrado', 11, 114),
(10529, 'Doctorado en Derecho Público', 'Posgrado', 11, 114),
(10530, 'Especialización en Administración y Gerencia de Sistemas de la Calidad', 'Posgrado', 11, 115),
(10531, 'Especialización en Gerencia de Proyectos de Construcción', 'Posgrado', 11, 115),
(10532, 'Especialización en Geotecnia Vial y Pavimentos', 'Posgrado', 11, 115),
(10533, 'Especialización en Estructuras', 'Posgrado', 11, 115),
(10534, 'Maestría en Ingeniería Civil con Énfasis en Hidroambiental', 'Posgrado', 11, 115),
(10535, 'Maestria en Ingenieria', 'Posgrado', 11, 115),
(10536, 'Maestria en Manejo y Sostenibilidad Ambiental', 'Posgrado', 11, 115),
(10537, 'Maestria en Pedagogia', 'Posgrado', 11, 117),
(10538, 'Especializacion en Gerencia Estrategica de Costos', 'Posgrado V', 11, 113),
(10539, 'Doctorado en Derecho Publico', 'Posgrado V', 11, 114),
(10540, 'Administracion de Empresas', 'Pregrado', 12, 124),
(10541, 'Comunicación Social', 'Pregrado', 12, 121),
(10542, 'Contaduria Publica ', 'Pregrado', 12, 124),
(10543, 'Cultura Fisica  Deporte y Recreacion', 'Pregrado', 12, 120),
(10544, 'Derecho', 'Pregrado', 12, 119),
(10545, 'Diseño Grafico', 'Pregrado', 12, 121),
(10546, 'Economia', 'Pregrado', 12, 124),
(10547, 'Estadistica', 'Pregrado', 12, 124),
(10548, 'Gobierno y relaciones Internacionales', 'Pregrado', 12, 119),
(10549, 'Ingenieria Ambiental', 'Pregrado', 12, 123),
(10550, 'Ingenieria Civil', 'Pregrado', 12, 123),
(10551, 'Ingenieria de Telecomunicaciones', 'Pregrado', 12, 123),
(10552, 'Ingenieria Electronica', 'Pregrado', 12, 123),
(10553, 'Ingenieria Industrial', 'Pregrado', 12, 123),
(10554, 'Ingenieria Mecanica', 'Pregrado', 12, 123),
(10555, 'Licenciatura en Filosofia y Letras', 'Pregrado', 12, 122),
(10556, 'Mercadeo', 'Pregrado', 12, 124),
(10557, 'Negocios Internacionales', 'Pregrado', 12, 124),
(10558, 'Psicologia', 'Pregrado', 12, 120),
(10559, 'Sociologia', 'Pregrado', 12, 121),
(10560, 'Teologia', 'Pregrado', 12, 122),
(10561, 'Doctorado en Derecho', 'Posgrado', 12, 119),
(10562, 'Doctorado en Educacion', 'Posgrado', 12, 125),
(10563, 'Doctorado en Filosofia', 'Posgrado', 12, 122),
(10564, 'Doctorado en Psicologia ', 'Posgrado', 12, 120),
(10565, 'Especializacion en Auditoria de Salud', 'Posgrado', 12, 120),
(10566, 'Especializacion en Auditoria de Sistemas', 'Posgrado', 12, 123),
(10567, 'Especializacion en Auditoria y administracion de la Informacion Tributaria', 'Posgrado', 12, 124),
(10568, 'Especializacion en Derecho Administrativo', 'Posgrado', 12, 119),
(10569, 'Especializacion en Derecho Penal', 'Posgrado', 12, 119),
(10570, 'Especializacion en Direccion y Gestion de la Calidad', 'Posgrado', 12, 123),
(10571, 'Especializacion en Finanzas', 'Posgrado', 12, 124),
(10572, 'Especializacion en Gerencia de Negocios Internacionales', 'Posgrado', 12, 124),
(10573, 'Especializacion en Gerencia Empresarial', 'Posgrado', 12, 124),
(10574, 'Especializacion en Gestion de Redes de datos', 'Posgrado', 12, 123),
(10575, 'Especializacion en Gestion Territorial y Avaluos', 'Posgrado', 12, 123),
(10576, 'Especializacion en Gerencia y Multimedia', 'Posgrado', 12, 123),
(10577, 'Especializacion en Psicologia Juridica y Forense', 'Posgrado', 12, 124),
(10578, 'Maestria en Actividad Fisica para la Salud', 'Posgrado', 12, 120),
(10579, 'Mestria en Administracion MBA', 'Posgrado', 12, 124),
(10580, 'Maestria en Calidad y Gestion Integral', 'Posgrado', 12, 124),
(10581, 'Maestria en Ciencias Economicas', 'Posgrado', 12, 124),
(10582, 'Maestria en Comunicación   Desarrollo y Cambio Social', 'Posgrado', 12, 121),
(10583, 'Mestria en Defensa de los Derechos humanos y el DIH ante Organismos  Tribunales y Cortes Internacionales', 'Posgrado', 12, 121),
(10584, 'Maestria en Derecho Contractual Publico y Privado', 'Posgrado', 12, 119),
(10585, 'Mestria en Derecho Penal', 'Posgrado', 12, 119),
(10586, 'Maestria en Derecho Publico', 'Posgrado', 12, 119),
(10587, 'Maestria en Estadistica aplicada', 'Posgrado', 12, 119),
(10588, 'Maestria en Filodofia Latinoamericana', 'Posgrado', 12, 122),
(10589, 'Maesria en Gestion del Talento humano', 'Posgrado', 12, 124),
(10590, 'Maestria en Gobierno y Relaciones Internacionales', 'Posgrado', 12, 124),
(10591, 'Maestria en Infraestructura Vial', 'Posgrado', 12, 123),
(10592, 'Maestria en Ingenieria Electronica', 'Posgrado', 12, 123),
(10593, 'Maestria Planeacion para el Desarrollo', 'Posgrado', 12, 123),
(10594, 'Maestria en Psicologia Clinica y de la Familia', 'Posgrado', 12, 120),
(10595, 'Maestria en Psicologia JuridicaMaestria en Tecnologia Limpias', 'Posgrado', 12, 120),
(10596, 'Mestria en Telecomunicaicones y Regulacion TIC', 'Posgrado', 12, 123),
(10597, 'Odontologia', 'Pregrado', 13, 127),
(10598, 'Optometria', 'Pregrado', 13, 127),
(10599, 'Tecnolgia de Laboratorio Dental', 'Pregrado', 13, 127),
(10600, 'Cultura Fisica  Deporte y Recreacion', 'Pregrado', 13, 127),
(10601, 'Quimica Ambiental', 'Pregrado', 13, 128),
(10602, 'Ingenieria Civil', 'Pregrado', 13, 128),
(10603, 'Ingenieria Ambiental', 'Pregrado', 13, 128),
(10604, 'Ingenieria Mecatronica', 'Pregrado', 13, 128),
(10605, 'Ingenieria Industrial', 'Pregrado', 13, 128),
(10606, 'Ingenieria de Telecomunicaciones', 'Pregrado', 13, 128),
(10607, 'Arquitectura', 'Pregrado', 13, 128),
(10608, 'Administracion de Empresas', 'Pregrado', 13, 129),
(10609, 'Administracion de Empresas Agropecuarias', 'Pregrado', 13, 129),
(10610, 'Economia', 'Pregrado', 13, 129),
(10611, 'Contaduria Publica ', 'Pregrado', 13, 129),
(10612, 'Negocios Internacionales', 'Pregrado', 13, 129),
(10613, 'Derecho', 'Pregrado', 13, 130),
(10614, 'Doctorado en Odontologia', 'Posgrado', 13, 127),
(10615, 'Maestria en Odontologia', 'Posgrado', 13, 127),
(10616, 'Maestria en Administracion', 'Posgrado', 13, 129),
(10617, 'Maestria en Agronegocios', 'Posgrado', 13, 129),
(10618, 'Mestria en Derecho', 'Posgrado', 13, 130),
(10619, 'Maestria en Derecho Tributario', 'Posgrado', 13, 130),
(10620, 'Maestria en Ciencias Contables', 'Posgrado', 13, 130),
(10621, 'Mestria en Calidad y Gestion Integral', 'Posgrado', 13, 128),
(10622, 'Maestria en Educacion Ambiental', 'Posgrado', 13, 128),
(10623, 'Maestria en Gestion y consultoria en TIC', 'Posgrado', 13, 128),
(10624, 'Maestria en Arquitectura', 'Posgrado', 13, 128),
(10625, 'Maestria en Ordenamiento Territorial', 'Posgrado', 13, 128),
(10626, 'Especializacion en Gerencia Tributaria', 'Posgrado', 13, 129),
(10627, 'Especializacion en Revisoria Fiscal y auditoria Externa', 'Posgrado', 13, 130),
(10628, 'Especializacion en finanzas Publicas', 'Posgrado', 13, 129),
(10629, 'Especializacion en Gerencia de Intituciones en Seguridad Social y Salud', 'Posgrado', 13, 129),
(10630, 'Especializacion en Auditoria de Salud', 'Posgrado', 13, 129),
(10631, 'Especializacion en Seguridad Social', 'Posgrado', 13, 130),
(10632, 'Especializacion en Derecho Constirucional', 'Posgrado', 13, 130),
(10633, 'Especializacion en Derecho de Relaciones Laborales', 'Posgrado', 13, 130),
(10634, 'Especializacion en Derecho Administrativo', 'Posgrado', 13, 130),
(10635, 'Especializacion en Derecho Procesal', 'Posgrado', 13, 130),
(10636, 'Especializacion en Contratacion Estatal', 'Posgrado', 13, 130),
(10637, 'Especializacion en Ortodoncia', 'Posgrado', 13, 127),
(10638, 'Especializacion en Periodoncia', 'Posgrado', 13, 127),
(10639, 'Especializacion en Endodoncia', 'Posgrado', 13, 127),
(10640, 'Especializacion en Rehabilitacion Oral', 'Posgrado', 13, 127),
(10641, 'Especializacion en Segmento Anterior y Lentes de Contacto', 'Posgrado', 13, 127),
(10642, 'Especializacion en Automatizacion Industrial', 'Posgrado', 13, 128),
(10643, 'Especializacion Interventoria y Supervision de la Contruccion', 'Posgrado', 13, 128),
(10644, 'Especializacion de avaluos', 'Posgrado', 13, 128),
(10645, 'Especializacion Direccion y Gestion de Calidas', 'Posgrado', 13, 128);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccionales`
--

CREATE TABLE `seccionales` (
  `idSeccional` int(11) NOT NULL,
  `nombreSeccional` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccionSeccional` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudadSeccional` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departamentoDeSeccional` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkSeccional` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rectorSeccional` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaInicioSeccional` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `seccionales`
--

INSERT INTO `seccionales` (`idSeccional`, `nombreSeccional`, `direccionSeccional`, `ciudadSeccional`, `departamentoDeSeccional`, `linkSeccional`, `rectorSeccional`, `fechaInicioSeccional`) VALUES
(11, 'ustaTunja', 'Cll. 48 No. 1-235 este', 'Tunja', 'Boyaca', 'https://www.ustatunja.edu.co/', 'Padre 1', '1997-12-11'),
(12, 'ustaBogota', 'carrera 9 n.° 51-11', 'Bogota', 'Cundinamarca', 'https://www.usta.edu.co/', 'Padre 2', '1997-12-12'),
(13, 'ustaBucaramanga ', 'Cra. 18 Nº 9 - 27', 'Bucaramanga', 'Santander', 'http://www.ustabuca.edu.co/', 'Padre 3', '1997-12-13'),
(14, 'ustaMedellin', 'Carrera 82 # 77 BB - 27', 'Medellin', 'Antioquia', 'https://www.ustamed.edu.co/', 'Padre 4', '1997-12-14'),
(15, 'ustaVillavicencio ', 'Carrera 22 con Calle 1a - Vía Puerto López', 'Villavicencio', 'Meta', 'https://www.ustavillavicencio.edu.co/index.php', 'Padre 5', '1997-12-15'),
(16, 'ustaVuad', 'carrera 9 n.° 51-11 ', 'Bogota', 'Cundinamarca', 'https://www.ustadistancia.edu.co/', 'Padre 6', '1997-12-16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes`
--

CREATE TABLE `sedes` (
  `idSede` int(11) NOT NULL,
  `nombreSede` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idSeccional_forean2sede` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sedes`
--

INSERT INTO `sedes` (`idSede`, `nombreSede`, `ciudad`, `direccion`, `idSeccional_forean2sede`) VALUES
(32, 'Campus Centro Historico', 'Tunja', 'Cll. 19 Nº 11 - 64 Tunja - Boyacá', 11),
(33, 'Campus Avenida Universitaria - Edificio Giordano Bruno', 'Tunja', 'Universitaria Cll. 48 No. 1-235 este. Tunja - Boyacá', 11),
(34, 'Campus Avenida Universitaria - Edificio Santo Domingo de Guzman', 'Tunja', 'Universitaria No. 45 - 202. Tunja - Boyacá', 11),
(35, 'Sede Principal', 'Bogota', 'carrera 9 n.° 51-11', 12),
(36, 'Edificio Dotor Angelico', 'Bogota', 'carrera 9 n.° 72-90', 12),
(37, 'Edificio El Aquinate', 'Bogota', 'carrera 9A n.° 63-28', 12),
(38, 'Admisiones: Edificio Santo Domingo de Guzmán', 'Bogota', 'carrera 7 n.° 51A-13', 12),
(39, 'Decanatura de División de Educación Abierta y a Distancia', 'Bogota', 'carrera 10 n.° 72-50', 16),
(40, 'Campus San Alberto Magno', 'Bogota', ' Autopista Norte calle 205 vía Arrayanes km 1 con 6', 12),
(41, 'Campus Bucaramanga', 'Bucaramanga', 'Cra. 18 Nº 9 - 27', 13),
(42, 'Campus Florida Blanca', 'Bucaramanga', 'Cra. 27 Nº 180 - 395', 13),
(43, 'Campus Pie de Cuesta', 'Bucaramanga', 'Finca Colorados Km 13 Autopista Piedecuesta', 13),
(44, 'Campus El Limonal', 'Bucaramanga', 'Km 14 Autopista Piedecuesta', 13),
(45, 'Sede Principal Medellin', 'Medellin', 'Carrera 82 # 77 BB - 27', 14),
(46, 'Campus Aguas Claras', 'Villavicencio', 'Carrera 22 con Calle 1a - Vía Puerto López', 15),
(47, 'Campus Loma Linda', 'Villavicencio', 'Carrera 48 N° 19 - 05 Sur - Vía Acacías Villavicencio Meta.', 15);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD PRIMARY KEY (`idAsignatura`),
  ADD KEY `FK_asignatura_seccional` (`idSeccional_forean2asign`),
  ADD KEY `FK_asignatura_programa` (`idPrograma_forean2asign`);

--
-- Indices de la tabla `divisiones`
--
ALTER TABLE `divisiones`
  ADD PRIMARY KEY (`idDivision`),
  ADD KEY `FK_division_seccional` (`idSeccional_forean2division`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`idEstudiante`),
  ADD KEY `FK_est_asignatura` (`idAsignatura_forean2est`),
  ADD KEY `FK_est_programa` (`idPrograma_forean2est`),
  ADD KEY `FK_est_seccional` (`idSeccional_forean2est`);

--
-- Indices de la tabla `facultades`
--
ALTER TABLE `facultades`
  ADD PRIMARY KEY (`idFacultad`),
  ADD KEY `FK_facultad_seccional` (`idSeccional_forean2facu`),
  ADD KEY `FK_facultad_division` (`idDivision_forean2facu`);

--
-- Indices de la tabla `pensum`
--
ALTER TABLE `pensum`
  ADD PRIMARY KEY (`idPensum`),
  ADD KEY `FK_pensum_programa` (`idPrograma_forean2pensum`),
  ADD KEY `FK_pensum_seccional` (`idSeccional_forean2pensum`);

--
-- Indices de la tabla `programas`
--
ALTER TABLE `programas`
  ADD PRIMARY KEY (`idPrograma`),
  ADD KEY `FK_programa_seccional` (`idSeccional_forean2program`),
  ADD KEY `FK_programa_division` (`idDivision_forean2program`);

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
  ADD KEY `FK_sede_seccional` (`idSeccional_forean2sede`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD CONSTRAINT `FK_asignatura_programa` FOREIGN KEY (`idPrograma_forean2asign`) REFERENCES `programas` (`idPrograma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_asignatura_seccional` FOREIGN KEY (`idSeccional_forean2asign`) REFERENCES `seccionales` (`idSeccional`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `divisiones`
--
ALTER TABLE `divisiones`
  ADD CONSTRAINT `FK_division_seccional` FOREIGN KEY (`idSeccional_forean2division`) REFERENCES `seccionales` (`idSeccional`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `FK_est_asignatura` FOREIGN KEY (`idAsignatura_forean2est`) REFERENCES `asignaturas` (`idAsignatura`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_est_programa` FOREIGN KEY (`idPrograma_forean2est`) REFERENCES `programas` (`idPrograma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_est_seccional` FOREIGN KEY (`idSeccional_forean2est`) REFERENCES `seccionales` (`idSeccional`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `facultades`
--
ALTER TABLE `facultades`
  ADD CONSTRAINT `FK_facultad_division` FOREIGN KEY (`idDivision_forean2facu`) REFERENCES `divisiones` (`idDivision`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_facultad_seccional` FOREIGN KEY (`idSeccional_forean2facu`) REFERENCES `seccionales` (`idSeccional`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pensum`
--
ALTER TABLE `pensum`
  ADD CONSTRAINT `FK_pensum_programa` FOREIGN KEY (`idPrograma_forean2pensum`) REFERENCES `programas` (`idPrograma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_pensum_seccional` FOREIGN KEY (`idSeccional_forean2pensum`) REFERENCES `seccionales` (`idSeccional`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `programas`
--
ALTER TABLE `programas`
  ADD CONSTRAINT `FK_programa_division` FOREIGN KEY (`idDivision_forean2program`) REFERENCES `divisiones` (`idDivision`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_programa_seccional` FOREIGN KEY (`idSeccional_forean2program`) REFERENCES `seccionales` (`idSeccional`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sedes`
--
ALTER TABLE `sedes`
  ADD CONSTRAINT `FK_sede_seccional` FOREIGN KEY (`idSeccional_forean2sede`) REFERENCES `seccionales` (`idSeccional`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
