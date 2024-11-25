-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2024 a las 06:48:10
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crud`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario_id` int(10) NOT NULL,
  `usuario_nombre` varchar(70) NOT NULL,
  `usuario_apellido` varchar(70) NOT NULL,
  `usuario_email` varchar(100) NOT NULL,
  `usuario_usuario` varchar(30) NOT NULL,
  `usuario_clave` varchar(200) NOT NULL,
  `usuario_foto` varchar(535) NOT NULL,
  `usuario_creado` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `usuario_actualizado` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `usuario_nombre`, `usuario_apellido`, `usuario_email`, `usuario_usuario`, `usuario_clave`, `usuario_foto`, `usuario_creado`, `usuario_actualizado`) VALUES
(1, 'Administrador', 'Principal', 'admin@admin.com', 'Administrador', '$2y$10$F0J8k.lFjgGAK6I/tcbhyuMKSaitXy8ENMSBVZWErIoA6.VSU8MQy', '', '2023-07-06 21:48:05', '2023-07-06 21:48:05'),
(2, 'Fabian', 'Aniceto', 'fabian@gmail.com', 'FabyAC', '$2y$10$ATOtJb5WuNTdbweCXhpxl.fljH8ssdYsLkVZ3IBMVt0ZQO.YIRVzq', '', '2024-11-25 03:19:22', '2024-11-25 03:19:22'),
(3, 'ElQueEs', 'Macho', 'Elmacho@gmail.com', 'ElMacho', '$2y$10$four/qhASf9UAEjuIEaj6u1dOsECsI1LMEWuHYwSZRNZQYCFB9aQu', '', '2024-11-25 03:53:02', '2024-11-25 03:53:02'),
(4, 'MiCasa', 'SeQuema', 'MiCasa@gmail.com', 'MiCasaSeQuemo', '$2y$10$jTM5rJBaYDFk9rxt6fIHK.p8oUW0jlfNTDHko07ddYfwKDN/1CwVS', '', '2024-11-25 03:54:46', '2024-11-25 03:54:46');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
