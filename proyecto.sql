-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2020 a las 06:17:00
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tpusuario`
--

CREATE TABLE `tpusuario` (
  `tpusuarioid` int(8) NOT NULL,
  `descripción` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tpusuario`
--

INSERT INTO `tpusuario` (`tpusuarioid`, `descripción`) VALUES
(1, 'admin'),
(2, 'profesor'),
(3, 'estudiante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuariosid` int(8) NOT NULL,
  `tpusuarioid` int(8) NOT NULL,
  `contraseña` text COLLATE utf8_spanish_ci NOT NULL,
  `nombres` text COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` text COLLATE utf8_spanish_ci NOT NULL,
  `correos` text COLLATE utf8_spanish_ci NOT NULL,
  `telefonos` int(8) NOT NULL,
  `nacimientos` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuariosid`, `tpusuarioid`, `contraseña`, `nombres`, `apellidos`, `correos`, `telefonos`, `nacimientos`) VALUES
(1, 1, 'casa', 'Eliezer', 'De la Cruz', 'fulanito.gt@gmail.com', 12345678, '1998-10-18'),
(2, 2, 'casa', 'Melany', 'lima', 'fulanita.gt@gmail.com', 86541235, '1997-05-02'),
(3, 1, 'casa', 'Jaimito', 'Pineda', 'jpineda@gmail.com', 68745124, '2000-10-11'),
(5, 1, 'casa', 'Estephanie', 'Del Valle', 'Gdelvalle@gmail.com', 65448951, '1997-06-11'),
(8, 3, 'casa', 'nalprueba', 'aalprueba', 'calprueba@gmail.com', 67985454, '2015-10-13'),
(9, 2, '12345', 'profMynor', 'Escobar', 'Mescobar@gmai.com', 65421879, '2010-10-04'),
(10, 1, '12345', 'Mynor', 'Escobar', 'M.Escobar@gmail.com', 65319874, '2012-10-23');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tpusuario`
--
ALTER TABLE `tpusuario`
  ADD PRIMARY KEY (`tpusuarioid`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuariosid`),
  ADD KEY `tpusuarioid` (`tpusuarioid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tpusuario`
--
ALTER TABLE `tpusuario`
  MODIFY `tpusuarioid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuariosid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`tpusuarioid`) REFERENCES `tpusuario` (`tpusuarioid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
