-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-12-2021 a las 23:23:13
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `productosf`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) UNSIGNED NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `stock` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `descripcion`, `precio`, `stock`) VALUES
(9, 'Rosario', 'Interior - Estación: Primavera/Verano - Género: Senecio.\r\n', 400, 5),
(10, 'Alegría del hogar', 'Interior/Exterior - Estación: Primavera/Verano - Género: Impatiens.', 90, 11),
(11, 'Jazmín', 'Exterior - Estación: Todo el año - Género: Jasminium.', 800, 9),
(12, 'Cactus\r\n', 'Variedad de Cactus- Interior/Exterior - Estación: Todo el año - Clase: Eudicotyledoneae.', 300, 8),
(13, 'Helecho', 'Interior/Exterior - Estación: Todo el año - Clase: Filicopsida.', 685, 6),
(14, 'Macetas\r\n', 'Variedad de Colores - Material: Plástico.', 220, 11),
(16, 'Espada de San Jorge', 'Interior/Exterior- EstaciÃ³n: Primavera - Genero: Sansevieria.', 500, 4),
(17, 'Glicina', 'Exterior - EstaciÃ³n: OtoÃ±o  -GÃ©nero: Wisteria.', 700, 7),
(18, 'Pino', 'Arbol', 1000, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
