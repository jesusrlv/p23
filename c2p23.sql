-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 28-04-2023 a las 17:26:58
-- Versión del servidor: 10.5.6-MariaDB
-- Versión de PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `c2p23`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion`
--

CREATE TABLE IF NOT EXISTS `calificacion` (
  `id` int(11) NOT NULL,
  `id_ext` int(11) NOT NULL,
  `id_jurado` int(11) NOT NULL,
  `documento` int(11) NOT NULL,
  `calificacion` int(11) NOT NULL,
  `fecha` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `calificacion`
--

INSERT INTO `calificacion` (`id`, `id_ext`, `id_jurado`, `documento`, `calificacion`, `fecha`) VALUES
(1, 1, 6, 1, 10, '2023-02-01 01:25:05'),
(3, 1, 6, 9, 6, '2023-02-01 01:35:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogo_documentos`
--

CREATE TABLE IF NOT EXISTS `catalogo_documentos` (
  `id` int(11) NOT NULL,
  `documento` varchar(50) NOT NULL,
  `subtitulo` varchar(50) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `link` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `catalogo_documentos`
--

INSERT INTO `catalogo_documentos` (`id`, `documento`, `subtitulo`, `descripcion`, `link`) VALUES
(1, 'Carta Propuesta', 'Carta Propuesta', 'Carta Propuesta', '0'),
(2, 'Currículum Vitae', 'Currículum Vitae', 'Currículum Vitae', '0'),
(3, 'Semblanza trayectoria', 'Semblanza trayectoria', 'Semblanza trayectoria', '0'),
(4, 'Copia acta de nacimiento', 'Copia acta de nacimiento', 'Copia acta de nacimiento', '0'),
(5, 'Copia INE', 'Copia INE', 'Copia INE', '0'),
(6, 'Copia simple de comprobante de domicilio', 'Copia simple de comprobante de domicilio', 'Copia simple de comprobante de domicilio', '0'),
(7, 'CURP', 'CURP', 'CURP', '0'),
(8, 'Material bibliográfico', 'Material bibliográfico', 'Material bibliográfico', '0'),
(9, 'Cápsula video', 'Cápsula video', 'Cápsula video', '0'),
(10, 'Carta protesta de decir verdad', 'Carta protesta de decir verdad', 'Carta protesta de decir verdad', NULL),
(11, 'Constancia de situación fiscal', 'Constancia de situación fiscal', 'Constancia de situación fiscal', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'LOGRO ACADÉMICO (12 - 18 AÑOS)'),
(2, 'LOGRO ACADÉMICO (19 - 29 AÑOS)'),
(3, 'DISCAPACIDAD E INTEGRACIÓN'),
(4, 'INGENIO EMPRENDEDOR'),
(5, 'RESPONSABILIDAD SOCIAL'),
(6, 'MÉRITO MIGRANTE'),
(7, 'MÉRITO CAMPESINO'),
(8, 'PROTECCIÓN AL MEDIO AMBIENTE'),
(9, 'CULTURA CÍVICA, POLÍTICA Y DEMOCRACIA'),
(10, 'LITERATURA'),
(11, 'ARTES ESCÉNICAS (MÚSICA)'),
(12, 'ARTES ESCÉNICAS (TEATRO)'),
(13, 'ARTES ESCÉNICAS (DANZA)'),
(14, 'ARTES PLÁSTICAS, VISUALES Y POPULARES'),
(15, 'ARTE URBANO'),
(16, 'CIENCIA Y TECNOLOGÍA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos`
--

CREATE TABLE IF NOT EXISTS `documentos` (
  `id` int(11) NOT NULL,
  `documento` int(11) NOT NULL COMMENT 'Tipo documento numerado',
  `id_ext` int(11) NOT NULL,
  `link` varchar(45) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `documentos`
--

INSERT INTO `documentos` (`id`, `documento`, `id_ext`, `link`, `fecha`) VALUES
(1, 1, 1, 'docs/archivo1_1.pdf', '2023-04-28 13:38:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE IF NOT EXISTS `grado` (
  `id` int(11) NOT NULL,
  `grado` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `grado`
--

INSERT INTO `grado` (`id`, `grado`) VALUES
(1, 'Primaria'),
(2, 'Secundaria'),
(3, 'Preparatoria'),
(4, 'Universidad'),
(5, 'Maestría'),
(6, 'Doctorado'),
(7, 'Otro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE IF NOT EXISTS `municipio` (
  `id` int(11) NOT NULL,
  `municipio` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`id`, `municipio`) VALUES
(1, 'Apozol'),
(2, 'Apulco'),
(3, 'Atolinga'),
(4, 'Benito Juárez'),
(5, 'Calera'),
(6, 'Cañitas de Felipe Pescador'),
(7, 'Concepción del Oro'),
(8, 'Cuauhtémoc'),
(9, 'Chalchihuites'),
(10, 'Fresnillo'),
(11, 'Trinidad García de la Cadena'),
(12, 'Genaro Codina'),
(13, 'General Enrique Estrada'),
(14, 'General Francisco R. Murguía'),
(15, 'El Plateado de Joaquín Amaro'),
(16, 'General Pánfilo Natera'),
(17, 'Guadalupe'),
(18, 'Huanusco'),
(19, 'Jalpa'),
(20, 'Jerez'),
(21, 'Jiménez del Teul'),
(22, 'Juan Aldama'),
(23, 'Juchipila'),
(24, 'Loreto'),
(25, 'Luis Moya'),
(26, 'Mazapil'),
(27, 'Melchor Ocampo'),
(28, 'Mezquital del Oro'),
(29, 'Miguel Auza'),
(30, 'Momax'),
(31, 'Monte Escobedo'),
(32, 'Morelos'),
(33, 'Moyahua de Estrada'),
(34, 'Nochistlán de Mejía'),
(35, 'Noria de Ángeles'),
(36, 'Ojocaliente'),
(37, 'Pánuco'),
(38, 'Pinos'),
(39, 'Río Grande'),
(40, 'Sain Alto'),
(41, 'El Salvador'),
(42, 'Sombrerete'),
(43, 'Susticacán'),
(44, 'Tabasco'),
(45, 'Tepechitlán'),
(46, 'Tepetongo'),
(47, 'Teúl de González Ortega'),
(48, 'Tlaltenango de Sánchez Román'),
(49, 'Valparaíso'),
(50, 'Vetagrande'),
(51, 'Villa de Cos'),
(52, 'Villa García'),
(53, 'Villa González Ortega'),
(54, 'Villa Hidalgo'),
(55, 'Villanueva'),
(56, 'Zacatecas'),
(57, 'Trancoso'),
(58, 'Santa María de la Paz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usr`
--

CREATE TABLE IF NOT EXISTS `usr` (
  `id` int(11) NOT NULL,
  `usr` varchar(36) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `perfil` int(11) NOT NULL,
  `curp` varchar(18) DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `edad` int(11) NOT NULL,
  `municipio` int(11) DEFAULT NULL,
  `telefono` int(11) NOT NULL,
  `categoria` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usr`
--

INSERT INTO `usr` (`id`, `usr`, `pwd`, `perfil`, `curp`, `nombre`, `edad`, `municipio`, `telefono`, `categoria`) VALUES
(1, 'usr1', '123456789', 1, 'LEVJ810924HZSXLS04', '', 0, 1, 0, 0),
(2, 'usr2', '123456789', 1, 'LEVJ810924HZSXLS05', '', 0, 2, 0, 0),
(3, 'usr3', '123456789', 1, 'LEVJ810924HZSXLS06', 'Jesus R', 45, 4, 0, 0),
(4, 'admin', '123456789', 2, 'LEVJ', '', 0, 45, 0, 0),
(5, 'admin2', '123456789', 2, NULL, '', 0, 12, 0, 0),
(6, 'califica1', '123456789', 3, NULL, '', 0, 10, 0, 0),
(7, 'califica2', '123456789', 3, NULL, '', 0, 34, 0, 0),
(8, 'califica3', '123456789', 3, NULL, '', 0, 32, 0, 0),
(9, 'jesusrlvrojo@gmail.com', '123456789', 1, 'DELJ020727HZSLVNA1', 'JesusRLV', 20, 56, 2147483647, 0),
(14, 'jesusrlvrojo@gmail.com', '123456789', 1, 'LOMS031124HZSPRMA1', 'Jesus Rodolfo', 19, 6, 4915000, 0),
(16, 'DHJSY63HD8@gmail.com', '123456789', 4, 'DHJSY63HD8', 'JesusRLV USA', 23, NULL, 4915000, 0),
(17, 'jesusrlvrojo@gmaill.com', '123456789', 1, 'DELJ020727HZSLVNA7', 'Jesus Rodolfo', 20, 56, 4915000, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `catalogo_documentos`
--
ALTER TABLE `catalogo_documentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grado`
--
ALTER TABLE `grado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usr`
--
ALTER TABLE `usr`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `catalogo_documentos`
--
ALTER TABLE `catalogo_documentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `documentos`
--
ALTER TABLE `documentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `grado`
--
ALTER TABLE `grado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT de la tabla `usr`
--
ALTER TABLE `usr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
