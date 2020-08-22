-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-05-2019 a las 23:08:29
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
-- Estructura de tabla para la tabla `bdnew`
--

CREATE TABLE `bdnew` (
  `id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `text` varchar(100) NOT NULL,
  `progress` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bdnew`
--

INSERT INTO `bdnew` (`id`, `title`, `url`, `text`, `progress`) VALUES
(8, 'uniminuto', 'www.uniminuto.edu.co', 'universidad', '70'),
(12, 'Google', 'www.google.com', 'Es un buscador', '0'),
(13, 'Duckduckgo', 'www.duckduckgo.com', 'un buscador privado', '0'),
(14, 'twitter', 'www.twitter.com', 'red social moderna', '0'),
(17, 'Bing', 'www.bing.com', 'bing buscador microsft', '0'),
(18, 'asas', 'asas', 'asas', '0'),
(20, 'zzz', 'zzz', 'zzz', '0'),
(21, '123', '123', '123', '0'),
(22, 'ddd', 'ddd', 'ddd', '0'),
(23, 's', 'ss', 's', '0'),
(24, 'dsasd', 'saasd', 'asdasd', '10'),
(28, 'dd', 'asd', 'asasd', '20'),
(29, 'dd', 'd', 'dd', '80'),
(30, 'ff', 'f', 'vf', '40'),
(31, 'c', 'c', 'c', '10'),
(32, 'dd', 'dd', 'as', '10'),
(33, 'gfd', 'df', 'dg', '100'),
(34, 'cc', 'cc', 'cc', '60'),
(35, 's', 's', 's', '50');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bdnew`
--
ALTER TABLE `bdnew`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bdnew`
--
ALTER TABLE `bdnew`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
