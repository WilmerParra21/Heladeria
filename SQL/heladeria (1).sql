-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-09-2020 a las 23:51:49
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `heladeria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `IdProducto` int(6) NOT NULL,
  `Sabor` varchar(30) CHARACTER SET utf8 NOT NULL,
  `Descripcion` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Precio` double NOT NULL,
  `Descuento` varchar(3) NOT NULL,
  `Cantidad` int(12) NOT NULL,
  `Estado` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`IdProducto`, `Sabor`, `Descripcion`, `Precio`, `Descuento`, `Cantidad`, `Estado`) VALUES
(1, 'Chocolate', 'Helado de Chocolate', 150, '40%', 50, 'Disponible'),
(2, 'Fresa', 'Helado de Fresa', 150, '40%', 50, 'Disponile'),
(3, 'Vainilla', 'Helado de Vainilla', 150, '40%', 50, 'Agotado'),
(4, 'Limón', 'Helado de Limon', 160, '20%', 30, 'Disponible'),
(5, 'Choco-Chispas', 'Helado de chocolate con chispas de chocolate', 175, '', 40, 'Disponible'),
(6, 'Galleta', 'Helado de Galleta', 180, '30%', 50, 'Disponible'),
(7, 'Fresa con Chocolate', 'Helado de Fresa con Chocolate', 180, '10%', 0, 'Agotado');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`IdProducto`),
  ADD KEY `Nombre` (`Sabor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `IdProducto` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
