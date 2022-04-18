-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-04-2022 a las 15:31:14
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
-- Base de datos: `sanatorio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicos`
--

CREATE TABLE `medicos` (
  `codigodelmedico` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `especialidad` varchar(30) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `telefono` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `medicos`
--

INSERT INTO `medicos` (`codigodelmedico`, `nombre`, `especialidad`, `direccion`, `telefono`) VALUES
(1, 'Dra.Sanz', 'internista', 'calle 4 # 23-12', 8234567),
(2, 'Dr.Perez', 'traumatologo', 'cra 3 # 7-98', 8210987),
(3, 'Dr.Fernandez', 'internista', 'calle 56 # 98-76', 8240975),
(4, 'Dr.Alonso', 'cardiologo', 'cra 25 # 45-19', 8309865),
(5, 'Dr.Garcia', 'hepatologia', 'cra 71 # 7-93', 8317543),
(6, 'Dr.Nuñez', 'neurologia', 'calle 32 # 90-21', 8205489),
(8, 'Dra.Quiroz', 'pediatra', 'cra 78 # 3-45', 8300078),
(9, 'Dr.Latorre', 'pediatria', 'calle 74 # 24-56', 8213456),
(10, 'Dr.Lopez', 'ginecologia', 'cra 21 # 70-94', 8327654),
(11, 'Dra.Campo', 'obstetra', 'calle 20 # 49-51', 8320943);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitas`
--

CREATE TABLE `visitas` (
  `codigodelpasiente` int(11) NOT NULL,
  `diagnostico` varchar(30) NOT NULL,
  `fechadevista` date NOT NULL,
  `tratamiento` varchar(30) NOT NULL,
  `codigodelpaciente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `visitas`
--

INSERT INTO `visitas` (`codigodelpasiente`, `diagnostico`, `fechadevista`, `tratamiento`, `codigodelpaciente`) VALUES
(1, 'Apendicitis', '2008-12-06', 'Cirugia', 1),
(2, 'Artritis', '2009-01-07', 'cirugia', 2),
(4, 'diabetes', '2009-02-09', 'dieta baja en azucares', 4),
(5, 'gripe', '2009-02-10', 'acetaminofen', 5),
(6, 'sarampion', '2009-02-11', 'sinus', 6),
(7, 'sinusitis', '2009-03-12', 'acetaminofen', 7),
(8, 'cirrosis ', '2009-03-13', 'clamoxil', 8),
(9, 'amigdalitis', '2009-03-14', 'clamoxil', 9),
(10, 'anemia', '2009-04-15', 'purgante', 10),
(11, 'migraña', '2009-04-16', 'acetaminofen', 11);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `medicos`
--
ALTER TABLE `medicos`
  ADD PRIMARY KEY (`codigodelmedico`);

--
-- Indices de la tabla `visitas`
--
ALTER TABLE `visitas`
  ADD PRIMARY KEY (`codigodelpasiente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `medicos`
--
ALTER TABLE `medicos`
  MODIFY `codigodelmedico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `visitas`
--
ALTER TABLE `visitas`
  MODIFY `codigodelpasiente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
