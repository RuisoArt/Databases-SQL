-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-09-2021 a las 06:00:45
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
-- Base de datos: `bd_tattoo_shops`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalog`
--

CREATE TABLE `catalog` (
  `id_catalog` int(11) NOT NULL,
  `tattoo_catalog_url` varchar(500) NOT NULL,
  `FK_id_tattoo_shop` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `catalog`
--

INSERT INTO `catalog` (`id_catalog`, `tattoo_catalog_url`, `FK_id_tattoo_shop`) VALUES
(100, 'https://www.instagram.com/tattootunja_saloonprive/?r=nametag', 4),
(101, 'https://www.instagram.com/dntatuajeria/', 8),
(102, 'https://www.instagram.com/cry_in_ink_tattoo/', 8),
(103, 'https://www.instagram.com/zata.6/', 8),
(104, 'https://www.instagram.com/afterinked/', 8),
(105, 'https://www.instagram.com/cacattoo/', 8),
(106, 'https://www.instagram.com/piso_3_xtreme_shop_tunja/', 8),
(107, 'https://www.instagram.com/santiagosaenzh/', 8),
(108, 'https://www.instagram.com/soulart_tattoo_studio/?utm_medium=copy_link', 13),
(109, 'https://www.instagram.com/leontatuador/', 1),
(110, 'https://www.instagram.com/ferchoneva/?hl=es-la', 20),
(111, 'https://www.instagram.com/jumaa_official/', 20),
(112, 'https://www.instagram.com/santamafia_tattoo/', 20),
(113, 'https://www.instagram.com/skinink.tat/', 3),
(114, 'https://www.instagram.com/fernandotorres_tattoo/?utm_medium=copy_link', 11),
(115, 'https://www.instagram.com/donovan_tattoos/', 5),
(116, 'https://www.instagram.com/mauravel1/?utm_medium=copy_link', 23),
(117, 'https://www.instagram.com/alex_raven6/?utm_medium=copy_link', 24),
(118, 'https://www.instagram.com/nixon.betancourt/?utm_medium=copy_link', 25),
(119, 'https://www.instagram.com/leonardo.medito/', 14),
(120, 'https://www.instagram.com/willyzararte/?r=nametag', 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `internal_number_client` varchar(45) NOT NULL,
  `FK_id_person` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `client`
--

INSERT INTO `client` (`id_client`, `internal_number_client`, `FK_id_person`) VALUES
(3000, 'client0001', 1542),
(3001, 'client0002', 1543),
(3002, 'client0003', 1544),
(3003, 'client0004', 1545),
(3004, 'client0005', 1546),
(3005, 'client0006', 1547),
(3006, 'client0007', 1548),
(3007, 'client0008', 1549),
(3008, 'client0009', 1550),
(3009, 'client0010', 1551),
(3010, 'client0011', 1552),
(3011, 'client0012', 1553),
(3012, 'client0013', 1554),
(3013, 'client0014', 1555),
(3014, 'client0015', 1556),
(3015, 'client0016', 1557),
(3016, 'client0017', 1558),
(3017, 'client0018', 1559),
(3018, 'client0019', 1560),
(3019, 'client0020', 1561),
(3020, 'client0021', 1562),
(3021, 'client0022', 1563),
(3022, 'client0023', 1564),
(3023, 'client0024', 1565),
(3024, 'client0025', 1566),
(3025, 'client0026', 1567),
(3026, 'client0027', 1568),
(3027, 'client0028', 1569),
(3028, 'client0029', 1570),
(3029, 'client0030', 1571),
(3030, 'client0031', 1572),
(3031, 'client0032', 1573),
(3032, 'client0033', 1574),
(3033, 'client0034', 1575),
(3034, 'client0035', 1576),
(3035, 'client0036', 1577),
(3036, 'client0037', 1578),
(3037, 'client0038', 1579),
(3038, 'client0039', 1580),
(3039, 'client0040', 1581),
(3040, 'client0041', 1582),
(3041, 'client0042', 1583),
(3042, 'client0043', 1584),
(3043, 'client0044', 1585),
(3044, 'client0045', 1586),
(3045, 'client0046', 1587),
(3046, 'client0047', 1588),
(3047, 'client0048', 1589),
(3048, 'client0049', 1590),
(3049, 'client0050', 1591);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employee`
--

CREATE TABLE `employee` (
  `id_employee` int(11) NOT NULL,
  `internal_number_employee` varchar(45) NOT NULL,
  `FK_id_person` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `employee`
--

INSERT INTO `employee` (`id_employee`, `internal_number_employee`, `FK_id_person`) VALUES
(2000, 'job-0014-001', 1500),
(2001, 'job-0014-002', 1501),
(2002, 'job-0014-003', 1502),
(2003, 'job-0014-004', 1503),
(2004, 'job-0014-005', 1504),
(2005, 'job-0014-006', 1505),
(2006, 'job-0014-007', 1506),
(2007, 'job-0014-008', 1507),
(2008, 'job-0014-009', 1508),
(2009, 'job-0014-010', 1509),
(2010, 'job-0014-011', 1510),
(2011, 'job-0014-012', 1511),
(2012, 'job-0014-013', 1512),
(2013, 'job-0014-014', 1513),
(2014, 'job-0014-015', 1514),
(2015, 'job-0014-016', 1515),
(2016, 'job-0014-017', 1516),
(2017, 'job-0014-018', 1517),
(2018, 'job-0014-019', 1518),
(2019, 'job-0014-020', 1519),
(2020, 'job-0014-021', 1520),
(2021, 'job-0014-022', 1521),
(2022, 'job-0014-023', 1532),
(2023, 'job-0014-024', 1533),
(2024, 'job-0014-025', 1534),
(2025, 'job-0014-026', 1535),
(2026, 'job-0014-027', 1536),
(2027, 'job-0014-028', 1537),
(2028, 'job-0014-029', 1538),
(2029, 'job-0014-030', 1539),
(2030, 'job-0014-031', 1540),
(2031, 'job-0014-032', 1541);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `person`
--

CREATE TABLE `person` (
  `id_person` int(11) NOT NULL,
  `name_person` varchar(45) NOT NULL,
  `address_person` varchar(100) NOT NULL,
  `phone` int(11) NOT NULL,
  `e_mail` varchar(100) NOT NULL,
  `indentification` int(11) NOT NULL,
  `FK_person_type` int(11) NOT NULL,
  `FK_tattoo_shop` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `person`
--

INSERT INTO `person` (`id_person`, `name_person`, `address_person`, `phone`, `e_mail`, `indentification`, `FK_person_type`, `FK_tattoo_shop`) VALUES
(1500, 'Tatuador 1', 'Cra 0A 4567 No.1', 2147483647, 'falso_email_1@mail.com', 1234567890, 1110, 1),
(1501, 'Tatuador 2', 'Cra 1A 4568 No.2', 2147483647, 'falso_email_2@mail.com', 1234568791, 1110, 2),
(1502, 'Tatuador 3', 'Cra 2A 4567 No.3', 2147483647, 'falso_email_3@mail.com', 1234567892, 1110, 3),
(1503, 'Tatuador 4', 'Cra 3A 4568 No.4', 2147483647, 'falso_email_4@mail.com', 1234568193, 1110, 4),
(1504, 'Tatuador 5', 'Cra 4A 4568 No.5', 2147483647, 'falso_email_5@mail.com', 1234568194, 1110, 5),
(1505, 'Tatuador 6', 'Cra 5A 4568 No.6', 2147483647, 'falso_email_6@mail.com', 1234568195, 1110, 6),
(1506, 'Tatuador 7', 'Cra 6A 4568 No.7', 2147483647, 'falso_email_7@mail.com', 1234568196, 1110, 7),
(1507, 'Tatuador 8', 'Cra 7A 4568 No.8', 2147483647, 'falso_email_8@mail.com', 1234568197, 1110, 8),
(1508, 'Tatuador 9', 'Cra 8A 4568 No.9', 2147483647, 'falso_email_9@mail.com', 1234568198, 1110, 9),
(1509, 'Tatuador 10', 'Cra 9A 4568 No.10', 2147483647, 'falso_email_10@mail.com', 1234568199, 1110, 10),
(1510, 'Tatuador 11', 'Cra 0A 4568 No.11', 2147483647, 'falso_email_11@mail.com', 1234568200, 1110, 11),
(1511, 'Tatuador 12', 'Cra 1A 4568 No.12', 2147483647, 'falso_email_12@mail.com', 1234568201, 1110, 12),
(1512, 'Tatuador 13', 'Cra 2A 4568 No.13', 2147483647, 'falso_email_13@mail.com', 1234568202, 1110, 13),
(1513, 'Tatuador 14', 'Cra 3A 4568 No.14', 2147483647, 'falso_email_14@mail.com', 1234568203, 1110, 14),
(1514, 'Tatuador 15', 'Cra 4A 4568 No.15', 2147483647, 'falso_email_15@mail.com', 1234568204, 1110, 15),
(1515, 'Tatuador 16', 'Cra 5A 4568 No.16', 2147483647, 'falso_email_16@mail.com', 1234568205, 1110, 16),
(1516, 'Tatuador 17', 'Cra 6A 4568 No.17', 2147483647, 'falso_email_17@mail.com', 1234568206, 1110, 17),
(1517, 'Tatuador 18', 'Cra 7A 4568 No.18', 2147483647, 'falso_email_18@mail.com', 1234568207, 1110, 18),
(1518, 'Tatuador 19', 'Cra 8A 4568 No.19', 2147483647, 'falso_email_19@mail.com', 1234568208, 1110, 19),
(1519, 'Tatuador 20', 'Cra 9A 4568 No.20', 2147483647, 'falso_email_20@mail.com', 1234568209, 1110, 20),
(1520, 'Tatuador 21', 'Cra 0A 4568 No.21', 2147483647, 'falso_email_21@mail.com', 1234568210, 1110, 21),
(1521, 'Tatuador 22', 'Cra 1A 4568 No.22', 2147483647, 'falso_email_22@mail.com', 1234568211, 1110, 22),
(1522, 'Proveedor 1', 'Cra 2R 4568 No.1', 2147483647, 'falso_email_23@mail.com', 1234568212, 1111, 1),
(1523, 'Proveedor 2', 'Cra 3R 4568 No.2', 2147483647, 'falso_email_24@mail.com', 1234568213, 1111, 2),
(1524, 'Proveedor 3', 'Cra 4R 4568 No.3', 2147483647, 'falso_email_25@mail.com', 1234568214, 1111, 3),
(1525, 'Proveedor 4', 'Cra 5R 4568 No.4', 2147483647, 'falso_email_26@mail.com', 1234568215, 1111, 4),
(1526, 'Proveedor 5', 'Cra 6R 4568 No.5', 2147483647, 'falso_email_27@mail.com', 1234568216, 1111, 5),
(1527, 'Proveedor 6', 'Cra 7R 4568 No.6', 2147483647, 'falso_email_28@mail.com', 1234568217, 1111, 6),
(1528, 'Proveedor 7', 'Cra 8R 4568 No.7', 2147483647, 'falso_email_29@mail.com', 1234568218, 1111, 7),
(1529, 'Proveedor 8', 'Cra 9R 4568 No.8', 2147483647, 'falso_email_30@mail.com', 1234568219, 1111, 8),
(1530, 'Proveedor 9', 'Cra 0R 4568 No.9', 2147483647, 'falso_email_31@mail.com', 1234568220, 1111, 9),
(1531, 'Proveedor 10', 'Cra 1R 4568 No.10', 2147483647, 'falso_email_32@mail.com', 1234568221, 1111, 10),
(1532, 'Joyero 1', 'Cra 2O 4568 No.1', 2147483647, 'falso_email_33@mail.com', 1234568222, 1112, 1),
(1533, 'Joyero 2', 'Cra 3O 4568 No.2', 2147483647, 'falso_email_34@mail.com', 1234568223, 1112, 2),
(1534, 'Joyero 3', 'Cra 4O 4568 No.3', 2147483647, 'falso_email_35@mail.com', 1234568224, 1112, 3),
(1535, 'Joyero 4', 'Cra 5O 4568 No.4', 2147483647, 'falso_email_36@mail.com', 1234568225, 1112, 4),
(1536, 'Joyero 5', 'Cra 6O 4568 No.5', 2147483647, 'falso_email_37@mail.com', 1234568226, 1112, 5),
(1537, 'Joyero 6', 'Cra 7O 4568 No.6', 2147483647, 'falso_email_38@mail.com', 1234568227, 1112, 6),
(1538, 'Joyero 7', 'Cra 8O 4568 No.7', 2147483647, 'falso_email_39@mail.com', 1234568228, 1112, 7),
(1539, 'Joyero 8', 'Cra 9O 4568 No.8', 2147483647, 'falso_email_40@mail.com', 1234568229, 1112, 8),
(1540, 'Joyero 9', 'Cra 0O 4568 No.9', 2147483647, 'falso_email_41@mail.com', 1234568230, 1112, 9),
(1541, 'Joyero 10', 'Cra 1O 4568 No.10', 2147483647, 'falso_email_42@mail.com', 1234568231, 1112, 10),
(1542, 'Nombre cliente 1', 'Cra 2O 4568 No.1', 2147483647, 'falso_email_43@mail.com', 1234568232, 1113, 1),
(1543, 'Nombre cliente 2', 'Cra 3O 4568 No.2', 2147483647, 'falso_email_44@mail.com', 1234568233, 1113, 2),
(1544, 'Nombre cliente 3', 'Cra 4O 4568 No.3', 2147483647, 'falso_email_45@mail.com', 1234568234, 1113, 3),
(1545, 'Nombre cliente 4', 'Cra 5O 4568 No.4', 2147483647, 'falso_email_46@mail.com', 1234568235, 1113, 4),
(1546, 'Nombre cliente 5', 'Cra 6O 4568 No.5', 2147483647, 'falso_email_47@mail.com', 1234568236, 1113, 5),
(1547, 'Nombre cliente 6', 'Cra 7O 4568 No.6', 2147483647, 'falso_email_48@mail.com', 1234568237, 1113, 6),
(1548, 'Nombre cliente 7', 'Cra 8O 4568 No.7', 2147483647, 'falso_email_49@mail.com', 1234568238, 1113, 7),
(1549, 'Nombre cliente 8', 'Cra 9O 4568 No.8', 2147483647, 'falso_email_50@mail.com', 1234568239, 1113, 8),
(1550, 'Nombre cliente 9', 'Cra 0O 4568 No.9', 2147483647, 'falso_email_51@mail.com', 1234568240, 1113, 9),
(1551, 'Nombre cliente 10', 'Cra 1O 4568 No.10', 2147483647, 'falso_email_52@mail.com', 1234568241, 1113, 10),
(1552, 'Nombre cliente 11', 'Cra 2O 4568 No.11', 2147483647, 'falso_email_53@mail.com', 1234568242, 1113, 11),
(1553, 'Nombre cliente 12', 'Cra 3O 4568 No.12', 2147483647, 'falso_email_54@mail.com', 1234568243, 1113, 12),
(1554, 'Nombre cliente 13', 'Cra 4O 4568 No.13', 2147483647, 'falso_email_55@mail.com', 1234568244, 1113, 13),
(1555, 'Nombre cliente 14', 'Cra 5O 4568 No.14', 2147483647, 'falso_email_56@mail.com', 1234568245, 1113, 14),
(1556, 'Nombre cliente 15', 'Cra 6O 4568 No.15', 2147483647, 'falso_email_57@mail.com', 1234568246, 1113, 15),
(1557, 'Nombre cliente 16', 'Cra 7O 4568 No.16', 2147483647, 'falso_email_58@mail.com', 1234568247, 1113, 16),
(1558, 'Nombre cliente 17', 'Cra 8O 4568 No.17', 2147483647, 'falso_email_59@mail.com', 1234568248, 1113, 17),
(1559, 'Nombre cliente 18', 'Cra 9O 4568 No.18', 2147483647, 'falso_email_60@mail.com', 1234568249, 1113, 18),
(1560, 'Nombre cliente 19', 'Cra 0O 4568 No.19', 2147483647, 'falso_email_61@mail.com', 1234568250, 1113, 19),
(1561, 'Nombre cliente 20', 'Cra 1O 4568 No.20', 2147483647, 'falso_email_62@mail.com', 1234568251, 1113, 20),
(1562, 'Nombre cliente 21', 'Cra 2O 4568 No.21', 2147483647, 'falso_email_63@mail.com', 1234568252, 1113, 21),
(1563, 'Nombre cliente 22', 'Cra 3O 4568 No.22', 2147483647, 'falso_email_64@mail.com', 1234568253, 1113, 22),
(1564, 'Nombre cliente 23', 'Cra 4O 4568 No.23', 2147483647, 'falso_email_65@mail.com', 1234568254, 1113, 1),
(1565, 'Nombre cliente 24', 'Cra 5O 4568 No.24', 2147483647, 'falso_email_66@mail.com', 1234568255, 1113, 2),
(1566, 'Nombre cliente 25', 'Cra 6O 4568 No.25', 2147483647, 'falso_email_67@mail.com', 1234568256, 1113, 3),
(1567, 'Nombre cliente 26', 'Cra 7O 4568 No.26', 2147483647, 'falso_email_68@mail.com', 1234568257, 1113, 4),
(1568, 'Nombre cliente 27', 'Cra 8O 4568 No.27', 2147483647, 'falso_email_69@mail.com', 1234568258, 1113, 5),
(1569, 'Nombre cliente 28', 'Cra 9O 4568 No.28', 2147483647, 'falso_email_70@mail.com', 1234568259, 1113, 6),
(1570, 'Nombre cliente 29', 'Cra 0O 4568 No.29', 2147483647, 'falso_email_71@mail.com', 1234568260, 1113, 7),
(1571, 'Nombre cliente 30', 'Cra 1O 4568 No.30', 2147483647, 'falso_email_72@mail.com', 1234568261, 1113, 8),
(1572, 'Nombre cliente 31', 'Cra 2O 4568 No.31', 2147483647, 'falso_email_73@mail.com', 1234568262, 1113, 9),
(1573, 'Nombre cliente 32', 'Cra 3O 4568 No.32', 2147483647, 'falso_email_74@mail.com', 1234568263, 1113, 10),
(1574, 'Nombre cliente 33', 'Cra 4O 4568 No.33', 2147483647, 'falso_email_75@mail.com', 1234568264, 1113, 11),
(1575, 'Nombre cliente 34', 'Cra 5O 4568 No.34', 2147483647, 'falso_email_76@mail.com', 1234568265, 1113, 12),
(1576, 'Nombre cliente 35', 'Cra 6O 4568 No.35', 2147483647, 'falso_email_77@mail.com', 1234568266, 1113, 13),
(1577, 'Nombre cliente 36', 'Cra 7O 4568 No.36', 2147483647, 'falso_email_78@mail.com', 1234568267, 1113, 14),
(1578, 'Nombre cliente 37', 'Cra 8O 4568 No.37', 2147483647, 'falso_email_79@mail.com', 1234568268, 1113, 15),
(1579, 'Nombre cliente 38', 'Cra 9O 4568 No.38', 2147483647, 'falso_email_80@mail.com', 1234568269, 1113, 16),
(1580, 'Nombre cliente 39', 'Cra 0O 4568 No.39', 2147483647, 'falso_email_81@mail.com', 1234568270, 1113, 17),
(1581, 'Nombre cliente 40', 'Cra 1O 4568 No.40', 2147483647, 'falso_email_82@mail.com', 1234568271, 1113, 18),
(1582, 'Nombre cliente 41', 'Cra 2O 4568 No.41', 2147483647, 'falso_email_83@mail.com', 1234568272, 1113, 19),
(1583, 'Nombre cliente 42', 'Cra 3O 4568 No.42', 2147483647, 'falso_email_84@mail.com', 1234568273, 1113, 20),
(1584, 'Nombre cliente 43', 'Cra 4O 4568 No.43', 2147483647, 'falso_email_85@mail.com', 1234568274, 1113, 21),
(1585, 'Nombre cliente 44', 'Cra 5O 4568 No.44', 2147483647, 'falso_email_86@mail.com', 1234568275, 1113, 22),
(1586, 'Nombre cliente 45', 'Cra 6O 4568 No.45', 2147483647, 'falso_email_87@mail.com', 1234568276, 1113, 23),
(1587, 'Nombre cliente 46', 'Cra 7O 4568 No.46', 2147483647, 'falso_email_88@mail.com', 1234568277, 1113, 24),
(1588, 'Nombre cliente 47', 'Cra 8O 4568 No.47', 2147483647, 'falso_email_89@mail.com', 1234568278, 1113, 25),
(1589, 'Nombre cliente 48', 'Cra 9O 4568 No.48', 2147483647, 'falso_email_90@mail.com', 1234568279, 1113, 1),
(1590, 'Nombre cliente 49', 'Cra 0O 4568 No.49', 2147483647, 'falso_email_91@mail.com', 1234568280, 1113, 2),
(1591, 'Nombre cliente 50', 'Cra 1O 4568 No.50', 2147483647, 'falso_email_92@mail.com', 1234568281, 1113, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `person_type`
--

CREATE TABLE `person_type` (
  `id_person_type` int(11) NOT NULL,
  `person_type` varchar(45) NOT NULL,
  `amount_person_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `person_type`
--

INSERT INTO `person_type` (`id_person_type`, `person_type`, `amount_person_type`) VALUES
(1110, 'Tatuador', 22),
(1111, 'Proveedor', 10),
(1112, 'Body_Piercing', 10),
(1113, 'Cliente', 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provider`
--

CREATE TABLE `provider` (
  `id_provider` int(11) NOT NULL,
  `nit` varchar(45) NOT NULL,
  `url` varchar(100) NOT NULL,
  `FK_id_person` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `provider`
--

INSERT INTO `provider` (`id_provider`, `nit`, `url`, `FK_id_person`) VALUES
(4000, 'N 400 - 300 - 601', 'www.providerTattooShop1.com', 1522),
(4001, 'N 400 - 300 - 602', 'www.providerTattooShop2.com', 1523),
(4002, 'N 400 - 300 - 603', 'www.providerTattooShop3.com', 1524),
(4003, 'N 400 - 300 - 604', 'www.providerTattooShop4.com', 1525),
(4004, 'N 400 - 300 - 605', 'www.providerTattooShop5.com', 1526),
(4005, 'N 400 - 300 - 606', 'www.providerTattooShop6.com', 1527),
(4006, 'N 400 - 300 - 607', 'www.providerTattooShop7.com', 1528),
(4007, 'N 400 - 300 - 608', 'www.providerTattooShop8.com', 1529),
(4008, 'N 400 - 300 - 609', 'www.providerTattooShop9.com', 1530),
(4009, 'N 400 - 300 - 610', 'www.providerTattooShop10.com', 1531);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tattoo_shops`
--

CREATE TABLE `tattoo_shops` (
  `id_tattoo_shop` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL,
  `city` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  `phone` int(11) NOT NULL,
  `actual_state` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tattoo_shops`
--

INSERT INTO `tattoo_shops` (`id_tattoo_shop`, `name`, `address`, `city`, `department`, `phone`, `actual_state`) VALUES
(1, 'Ninja Tattoo Tunja', 'Prívate Studio  Cl. 47A ##6-27', 'Tunja', 'Boyaca', 321, 'Funcionando\r'),
(2, 'Monster House Tattoo y Piercing Studio', 'Cra. 22 # 9- 44 Centro Comercial Paseo de la Salamandra', 'Tunja', 'Boyaca', 320, 'Cerrado\r'),
(3, 'SKIN INK TATTOO', 'RESTAURATE LA ROMANA D.C  Cra. 9 ##20', 'Tunja', 'Boyaca', 316, 'Funcionando\r'),
(4, 'SALOON PRIVE', 'Cl. 29 ##10a-1', 'Tunja', 'Boyaca', 311, 'Funcionando\r'),
(5, 'DONOVAN Tattoo Studio', ' A dos cuadras de la iglesia  Cra. 10 ##28', 'Tunja', 'Boyaca', 311, 'Funcionando\r'),
(6, 'Dark Side', ' Tv 7 No.44-39  Local 2  Santa Ines', 'Tunja', 'Boyaca', 321, 'Aun no responden\r'),
(7, 'Tokio Tatto Shop', 'Cra. 9 ##24-77', 'Tunja', 'Boyaca', 314, 'Cerrado\r'),
(8, 'El Diamante Negro Tatuajería', 'Cl. 18 ##12 -37', 'Tunja', 'Boyaca', 310, 'Funcionando\r'),
(9, 'InkSide Tattoo Studio', 'las terrazas  Av Universitaria 41a # 1-02 segundo piso  Av Universitaria', 'Tunja', 'Boyaca', 301, 'No se sabe\r'),
(10, 'LA PIRAÑA TATTOO SHOP', 'Tv. 0 Este ##66a 20', 'Tunja', 'Boyaca', 313, 'Cerrado\r'),
(11, 'SORRY MOM TATTOO STUDIO', 'Cl. 22 ## 9-44 local 214', 'Tunja', 'Boyaca', 310, 'Funcionando\r'),
(12, 'Supplis tattoo', '150003', 'Tunja', 'Boyaca', 321, 'Cerrado\r'),
(13, 'Soul Art Tattoo Studio', ' CC Boulevard  Av. Olímpica #3 - 76 Local 204', 'Tunja', 'Boyaca', 320, 'Funcionando\r'),
(14, 'Ancestral Tattoo Studio', ' Cl. 39 ##6 - 32', 'Tunja', 'Boyaca', 301, 'Funcionando\r'),
(15, 'Piel Toxica Pink', 'Cra. 10 ###22-22 Local 1', 'Tunja', 'Boyaca', 310, 'Aun no responden\r'),
(16, 'Monster House Tatuaje  Piercing & Galeria', 'Carrera 10 # 20 - 91 El Virrey Centro Comercial Local 219', 'Tunja', 'Boyaca', 0, 'Cerrado\r'),
(17, 'Tinta Viva Tattoo & Body Piercing', 'Carrera 12 14 03 B. Nueva Santa Barbara', 'Tunja', 'Boyaca', 300, 'Funcionando\r'),
(18, 'Tattoo studio SorryMom', 'Paseo De La Salamandra', 'Tunja', 'Boyaca', 0, 'Cerrado\r'),
(19, 'Tokio Tattoo Premium', 'Tv. 11 ##2354', 'Tunja', 'Boyaca', 0, 'Cerrado\r'),
(20, 'Dragon\'s art tattoo', 'Cl. 17 ##13 -42 local 3', 'Tunja', 'Boyaca', 310, 'Funcionando\r'),
(21, 'Inkcorp Tatto Estudio', '150001', 'Tunja', 'Boyaca', 314, 'Cerrado\r'),
(22, 'Afrik Tattoo and Gallery Supply', 'No presenta', 'Tunja', 'Boyaca', 0, 'Cerrado\r'),
(23, 'Maura Velandia', 'estudio privado', 'Tunja', 'Boyaca', 2147483647, 'Funcionando\r'),
(24, 'Alex Raven', 'estudio privado', 'Tunja', 'Boyaca', 2147483647, 'Funcionando\r'),
(25, 'Nixon Betancourt', 'estudio privado', 'Tunja', 'Boyaca', 0, 'Funcionando');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `time_table`
--

CREATE TABLE `time_table` (
  `id_time_table` int(11) NOT NULL,
  `Monday` varchar(45) NOT NULL,
  `Tuesday` varchar(45) NOT NULL,
  `Wednesday` varchar(45) NOT NULL,
  `Thursday` varchar(45) NOT NULL,
  `Friday` varchar(45) NOT NULL,
  `Saturday` varchar(45) NOT NULL,
  `Sunday` varchar(45) NOT NULL,
  `FK_id_tattoo_shop` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `time_table`
--

INSERT INTO `time_table` (`id_time_table`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`, `FK_id_tattoo_shop`) VALUES
(10, '09:00 a 20:30', '09:00 a 20:30', '09:00 a 20:30', '09:00 a 20:30', '09:00 a 20:30', '09:00 a 20:30', 'Cerrado', 1),
(20, '10:00 a 19:30', '10:00 a 19:30', '10:00 a 19:30', '10:00 a 19:30', '10:00 a 19:30', '10:00 a 19:30', '11:00 a 14:30', 2),
(30, '10:00 a 19:00', '10:00 a 19:00', '10:00 a 19:00', '10:00 a 19:00', '10:00 a 19:00', '10:00 a 19:00', 'Cerrado', 3),
(40, '09:00 a 21:00', '09:00 a 21:00', '09:00 a 21:00', '09:00 a 21:00', '09:00 a 21:00', '09:00 a 21:00', '08:00 a 18:00', 4),
(50, '10:00 a 20:30', '10:00 a 20:30', '10:00 a 20:30', '10:00 a 20:30', '10:00 a 20:30', '10:00 a 20:30', '11:00 a 20:30', 5),
(60, '09:00 a 18:00', '09:00 a 18:00', '09:00 a 18:00', '09:00 a 18:00', '09:00 a 18:00', 'Cerrado', 'Cerrado', 6),
(70, '09:00 a 19:00', '09:00 a 19:00', '09:00 a 19:00', '09:00 a 19:00', '09:00 a 19:00', '09:00 a 19:00', 'Cerrado', 7),
(80, '14:00 a 20:00', '14:00 a 20:00', '14:00 a 20:00', '14:00 a 20:00', '14:00 a 20:00', '14:00 a 20:00', 'Cerrado', 8),
(90, 'Sin horario', 'Sin horario', 'Sin horario', 'Sin horario', 'Sin horario', 'Sin horario', 'Sin horario', 9),
(100, 'Sin horario', 'Sin horario', 'Sin horario', 'Sin horario', 'Sin horario', 'Sin horario', 'Sin horario', 10),
(110, '10:00 a 20:00', '10:00 a 20:00', '10:00 a 20:00', '10:00 a 20:00', '10:00 a 20:00', '10:00 a 20:00', 'Cerrado', 11),
(120, '09:00 a 18:00', '09:00 a 18:00', '09:00 a 18:00', '09:00 a 18:00', '09:00 a 18:00', '09:00 a 18:00', 'Cerrado', 12),
(130, '11:00 a 20:00', '11:00 a 20:00', '11:00 a 20:00', '11:00 a 20:00', '11:00 a 20:00', '11:00 a 20:00', '11:00 a 20:00', 13),
(140, 'Sin horario', 'Sin horario', 'Sin horario', 'Sin horario', 'Sin horario', 'Sin horario', 'Sin horario', 2),
(150, '09:00 a 20:00', '09:00 a 20:00', '09:00 a 20:00', '09:00 a 20:00', '09:00 a 20:00', '09:00 a 20:00', '09:00 a 20:00', 14),
(160, '09:30 a 18:00', '09:30 a 18:00', '09:30 a 18:00', '09:30 a 18:00', '09:30 a 18:00', '09:30 a 18:00', 'Cerrado', 15),
(170, '10:00 a 19:30', '10:00 a 19:30', '10:00 a 19:30', '10:00 a 19:30', '10:00 a 19:30', '10:00 a 19:30', 'Cerrado', 2),
(180, '09:00  a 19:00', '09:00  a 19:00', '09:00  a 19:00', '09:00  a 19:00', '09:00  a 19:00', '09:00  a 19:00', '09:00 a 17:00', 17),
(190, 'Sin horario', 'Sin horario', 'Sin horario', 'Sin horario', 'Sin horario', 'Sin horario', 'Sin horario', 18),
(200, 'Sin horario', 'Sin horario', 'Sin horario', 'Sin horario', 'Sin horario', 'Sin horario', 'Sin horario', 19),
(210, '10:00 a 19:30', '10:00 a 19:30', '10:00 a 19:30', '10:00 a 19:30', '10:00 a 19:30', '10:00 a 19:30', 'Cerrado', 20),
(220, '05:00 a 19:00', '05:00 a 19:00', '05:00 a 19:00', '05:00 a 19:00', '05:00 a 19:00', '05:00 a 19:00', 'Cerrado', 21),
(230, 'Sin horario', 'Sin horario', 'Sin horario', 'Sin horario', 'Sin horario', 'Sin horario', 'Sin horario', 22);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id_catalog`),
  ADD KEY `FK_id_tattoo_shop` (`FK_id_tattoo_shop`);

--
-- Indices de la tabla `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`),
  ADD KEY `FK_id_person_to_client` (`FK_id_person`);

--
-- Indices de la tabla `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id_employee`),
  ADD KEY `FK_id_person_to_employee` (`FK_id_person`);

--
-- Indices de la tabla `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id_person`),
  ADD KEY `FK_person_type_to_person` (`FK_person_type`),
  ADD KEY `FK_tattoo_shop_to_person` (`FK_tattoo_shop`);

--
-- Indices de la tabla `person_type`
--
ALTER TABLE `person_type`
  ADD PRIMARY KEY (`id_person_type`);

--
-- Indices de la tabla `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`id_provider`),
  ADD KEY `FK_id_person_to_provider` (`FK_id_person`);

--
-- Indices de la tabla `tattoo_shops`
--
ALTER TABLE `tattoo_shops`
  ADD PRIMARY KEY (`id_tattoo_shop`);

--
-- Indices de la tabla `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`id_time_table`),
  ADD KEY `FK_id_tattoo_shop_to_timetable` (`FK_id_tattoo_shop`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `catalog`
--
ALTER TABLE `catalog`
  ADD CONSTRAINT `FK_id_tattoo_shop` FOREIGN KEY (`FK_id_tattoo_shop`) REFERENCES `tattoo_shops` (`id_tattoo_shop`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `FK_id_person_to_client` FOREIGN KEY (`FK_id_person`) REFERENCES `person` (`id_person`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `FK_id_person_to_employee` FOREIGN KEY (`FK_id_person`) REFERENCES `person` (`id_person`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `person`
--
ALTER TABLE `person`
  ADD CONSTRAINT `FK_person_type_to_person` FOREIGN KEY (`FK_person_type`) REFERENCES `person_type` (`id_person_type`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tattoo_shop_to_person` FOREIGN KEY (`FK_tattoo_shop`) REFERENCES `tattoo_shops` (`id_tattoo_shop`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `provider`
--
ALTER TABLE `provider`
  ADD CONSTRAINT `FK_id_person_to_provider` FOREIGN KEY (`FK_id_person`) REFERENCES `person` (`id_person`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `time_table`
--
ALTER TABLE `time_table`
  ADD CONSTRAINT `FK_id_tattoo_shop_to_timetable` FOREIGN KEY (`FK_id_tattoo_shop`) REFERENCES `tattoo_shops` (`id_tattoo_shop`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
