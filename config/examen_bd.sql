-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-07-2025 a las 00:24:10
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `examen_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_us`
--

CREATE TABLE `tipo_us` (
  `id_tip_us` int(10) NOT NULL,
  `tip_us` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_us`
--

INSERT INTO `tipo_us` (`id_tip_us`, `tip_us`) VALUES
(1, 'Administrador'),
(2, 'Gerente'),
(3, 'Cajero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `doc_us` varchar(11) NOT NULL,
  `nombre` text NOT NULL,
  `celular` varchar(15) NOT NULL,
  `profesion` text NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contrasena` varchar(11) NOT NULL,
  `id_tip_us` int(10) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`doc_us`, `nombre`, `celular`, `profesion`, `correo`, `contrasena`, `id_tip_us`, `descripcion`) VALUES
('1105463344', 'JULIO', '3110009876', 'PILOTO', 'julio@gmail.com', '123456789', 3, 'Siempre al servicio'),
('1105463369', 'JUANES', '3228881996', 'ESTUDIANTE', 'juanes@gmail.com', '123456789', 3, 'Buen trabajador'),
('1105469900', 'SEBASTIAN', '3027779889', 'ABOGADO', 'sebastian@gmail.com', '12345678', 3, 'Trabajo en equipo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tipo_us`
--
ALTER TABLE `tipo_us`
  ADD PRIMARY KEY (`id_tip_us`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`doc_us`),
  ADD KEY `id_tip_us` (`id_tip_us`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_tip_us`) REFERENCES `tipo_us` (`id_tip_us`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
