-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-11-2014 a las 06:09:30
-- Versión del servidor: 5.5.36
-- Versión de PHP: 5.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `eventos`
--
CREATE DATABASE IF NOT EXISTS `eventos` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `eventos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrators`
--

CREATE TABLE IF NOT EXISTS `administrators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` int(11) NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `correo` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `nombre_usuario` varchar(20) NOT NULL,
  `contrasena` varchar(20) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modifed` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `administrators`
--

INSERT INTO `administrators` (`id`, `cedula`, `nombre`, `telefono`, `correo`, `ciudad`, `nombre_usuario`, `contrasena`, `created`, `modifed`) VALUES
(1, 25120975, 'Cristina Orozco Orrego', 7344545, 'orozcoorregocristina@gmail.com', 'Armenia', 'cristinadmin', 'colciencias', '2014-11-16 23:34:25', '2014-11-16 23:34:25'),
(2, 1234567, 'Sandra Patricia Bedoya Vega', 2147483647, 'sandrapati@hotmail.com', 'Armenia', 'sandritacolcien', 'sandritacolcien', '2014-11-18 04:33:57', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auxiliaries`
--

CREATE TABLE IF NOT EXISTS `auxiliaries` (
  `id` int(11) NOT NULL,
  `cedula` int(11) NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `correo` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `nombre_usuario` varchar(20) NOT NULL,
  `contrasena` varchar(20) NOT NULL,
  `administrator_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modifed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auxiliaries`
--

INSERT INTO `auxiliaries` (`id`, `cedula`, `nombre`, `telefono`, `correo`, `ciudad`, `nombre_usuario`, `contrasena`, `administrator_id`, `created`, `modifed`) VALUES
(0, 123456789, 'Juan David Ocampo', 2147483647, 'juandavid@hotmail.com', 'Armenia', 'juanocampo', 'colciencias', 1, '2014-11-17 22:26:59', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL,
  `cedula` int(11) NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `correo` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `event_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modifed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documents`
--

CREATE TABLE IF NOT EXISTS `documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `autor` varchar(50) NOT NULL,
  `ruta` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modifed` datetime DEFAULT NULL,
  `event_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `documents`
--

INSERT INTO `documents` (`id`, `nombre`, `descripcion`, `fecha`, `autor`, `ruta`, `created`, `modifed`, `event_id`) VALUES
(1, 'Estadisticas', 'Estadisticas de las metodologias', '0000-00-00', 'Cristina Orozco', 'img/estadisticas.docx', '2014-11-17 16:54:18', NULL, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `organizador` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `lugar` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecha` datetime NOT NULL,
  `administrator_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `events`
--

INSERT INTO `events` (`id`, `nombre`, `descripcion`, `organizador`, `lugar`, `fecha`, `administrator_id`, `created`, `modified`) VALUES
(2, 'metodologias', 'metodologias agiles', 'andres ospina', 'centro de convenciones', '2014-11-04 13:43:00', 1, '2014-11-04 01:43:42', '2014-11-04 01:43:42'),
(3, 'Congreso emprende', 'Congreso solo para emprendedores', 'Javier Burgos', 'Centro de convenciones', '2014-07-17 13:00:00', 2, '2014-11-18 06:00:05', '2014-11-18 06:00:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `lider` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `event_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `groups`
--

INSERT INTO `groups` (`id`, `nombre`, `lider`, `descripcion`, `created`, `modified`, `event_id`) VALUES
(1, 'Logística', 'Brayham Davian Burgos', 'Coordinación del evento', '2014-11-18 03:53:47', '2014-11-18 03:53:47', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `people`
--

CREATE TABLE IF NOT EXISTS `people` (
  `id` int(11) NOT NULL,
  `cedula` int(11) NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `correo` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `gruop_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modifed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resource`
--

CREATE TABLE IF NOT EXISTS `resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modifed` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` varchar(10) NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `ciudad` varchar(10) NOT NULL,
  `nombre_usuario` varchar(20) NOT NULL,
  `contrasena` varchar(20) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `cedula`, `nombre`, `telefono`, `correo`, `ciudad`, `nombre_usuario`, `contrasena`, `created`, `modified`) VALUES
(6, '1094936261', 'Brayham Davian Burgos Bedoya', '7311033', 'orozcoorregocristinnna@gmail.com', 'Armenia', 'brayham', 'juanandr', '2014-11-18 05:31:34', '2014-11-18 05:31:34'),
(5, '1094936260', 'Brayham Davian Burgos Bedoya', '7311033', 'brahian_716@hotmail.com', 'Armenia', 'brayhamdavian', 'ingenieria', '2014-11-17 06:45:36', '2014-11-17 06:45:36'),
(7, '1094936262', 'Brayham Davian Burgos Bedoya', '7311033', 'orozcoorocristinnna@gmail.com', 'Armenia', 'brayhamn', 'juanandr', '2014-11-18 05:34:45', '2014-11-18 05:34:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_events`
--

CREATE TABLE IF NOT EXISTS `user_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `user_events`
--

INSERT INTO `user_events` (`id`, `user_id`, `event_id`) VALUES
(1, 7, 2),
(2, 7, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `works`
--

CREATE TABLE IF NOT EXISTS `works` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `modifed` datetime DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `works`
--

INSERT INTO `works` (`id`, `nombre`, `descripcion`, `created`, `modifed`, `group_id`) VALUES
(1, 'Lavar los pisos', ';Los personajess tiene que lava r los pisos', '2014-11-05 05:26:33', '2014-11-05 05:25:00', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
