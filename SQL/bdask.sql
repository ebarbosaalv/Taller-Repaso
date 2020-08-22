-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-05-2019 a las 23:08:04
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `test`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bdask`
--

CREATE TABLE `bdask` (
  `id` int(10) NOT NULL,
  `text` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bdask`
--

INSERT INTO `bdask` (`id`, `text`) VALUES
(2, 'aaaa'),
(3, 'aaa'),
(4, '111111111111'),
(5, 'ggggggggggg'),
(6, 'fff'),
(7, 'qqq'),
(8, 'aaa'),
(9, '33'),
(11, '888'),
(12, '77777777777'),
(13, '888888888888888'),
(14, '3333333333333'),
(15, 'aaa444444444'),
(16, '4444444444444444'),
(17, '9'),
(18, '777'),
(19, 'as'),
(20, 'asd');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bdask`
--
ALTER TABLE `bdask`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bdask`
--
ALTER TABLE `bdask`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
