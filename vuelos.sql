-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-08-2023 a las 03:18:34
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
-- Base de datos: `vuelos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aerolinea`
--

CREATE TABLE `aerolinea` (
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aerolinea`
--

INSERT INTO `aerolinea` (`nombre`) VALUES
('Air France'),
('American Airlines'),
('Avianca'),
('China Airlines'),
('China Southern Airlines'),
('Copa Airlines'),
('Delta Air'),
('Delta Airlines'),
('EasyFly'),
('Emirates'),
('FedEx'),
('Hong Kong Airlines'),
('Iberia'),
('LATAM'),
('Lufthansa'),
('Pegasus'),
('Qatar Airways'),
('Ryanair'),
('SATENA'),
('Turkish Airlines'),
('Ultra Air'),
('United Airlines'),
('Viva Air'),
('Wingo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aeropuerto`
--

CREATE TABLE `aeropuerto` (
  `nombre` varchar(100) NOT NULL,
  `pais` varchar(100) NOT NULL,
  `ciudad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aeropuerto`
--

INSERT INTO `aeropuerto` (`nombre`, `pais`, `ciudad`) VALUES
('Aeropuerto de Bruselas', 'Bélgica', 'Bruselas'),
('Aeropuerto de Zúrich', 'Suiza', 'Zurich'),
('Aeropuerto Internacional de El Cairo', 'Egipto', 'El Cairo'),
('Aeropuerto Internacional de Haneda', 'Japón', 'Tokio'),
('Aeropuerto Internacional de Incheon', 'Corea del Sur', 'Seúl'),
('Aeropuerto Internacional de la Ciudad de México', 'Mexico', 'Ciudad de México'),
('Aeropuerto Internacional de Miami', 'Estados Unidos', 'Miami'),
('Aeropuerto Internacional El Dorado', 'Colombia', 'Bogotá'),
('Aeropuerto Internacional Ezeiza', 'Argentina', 'Buenos Aires'),
('Aeropuerto Internacional Suvarnabhumi', 'Tailandia', 'Bangkok'),
('Brandeburgo Willy Brandt', 'Alemania', 'Berlin'),
('Charles de Gaulle', 'Francia', 'París'),
('El Prat', 'España', 'Barcelona'),
('Eleftherios Venizelos', 'Grecia', 'Atenas'),
('Hamad', 'Qatar', 'Doha'),
('Istanbul Airport', 'Turquia', 'Estambul'),
('Jhon F. Kennedy', 'Estados Unidos', 'New York'),
('Londres-Heathrow', 'Inglaterra', 'Londres'),
('Los Ángeles Internacional', 'Estados Unidos', 'Los Angeles'),
('Madrid-Barajas', 'España', 'Madrid'),
('Moscú-Vnúkovo', 'Rusia', 'Moscú'),
('Pudong', 'China', 'Shangai'),
('Roma - Fiumicino', 'Italia', 'Roma'),
('São Paulo-Guarulhos', 'Brasil', 'Sao Pablo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `avion`
--

CREATE TABLE `avion` (
  `id` int(11) NOT NULL,
  `fabricante` varchar(100) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `capacidadPasajeros` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `avion`
--

INSERT INTO `avion` (`id`, `fabricante`, `modelo`, `capacidadPasajeros`) VALUES
(1, 'Boeing', '777', 300),
(2, 'Boeing', '747-8', 460),
(3, 'Boeing', '787', 300),
(4, 'Airbus', 'A310', 240),
(5, 'Airbus', 'A220', 150),
(6, 'Airbus', 'A300-600', 266),
(7, 'Airbus', '320', 220),
(8, 'Boeing', '737', 180);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `idhorario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`fecha`, `hora`, `idhorario`) VALUES
('2023-08-10', '01:00:00', 1),
('2023-08-08', '02:00:38', 2),
('2023-08-08', '03:00:00', 3),
('2023-08-08', '04:00:00', 4),
('2023-08-08', '05:00:00', 5),
('2023-08-08', '06:00:00', 6),
('2023-08-08', '07:00:00', 7),
('2023-08-08', '08:00:00', 8),
('2023-08-08', '09:00:00', 9),
('2023-08-08', '10:00:33', 10),
('2023-08-08', '11:00:00', 11),
('2023-08-08', '12:00:00', 12),
('2023-08-08', '13:00:00', 13),
('2023-08-08', '14:00:00', 14),
('2023-08-08', '15:00:00', 15),
('2023-08-08', '16:00:00', 16),
('2023-08-08', '17:00:00', 17),
('2023-08-08', '18:00:00', 18),
('2023-08-08', '19:00:00', 19),
('2023-08-08', '20:00:00', 20),
('2023-08-08', '21:00:00', 21),
('2023-08-08', '22:00:00', 22),
('2023-08-08', '23:00:00', 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasajero`
--

CREATE TABLE `pasajero` (
  `id` int(11) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `contra` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `pais` varchar(100) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `codigopostal` int(50) NOT NULL,
  `numTelf` int(60) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pasajero`
--

INSERT INTO `pasajero` (`id`, `usuario`, `contra`, `nombre`, `pais`, `ciudad`, `direccion`, `codigopostal`, `numTelf`, `email`) VALUES
(1, 'sanThiago', '123456', 'Santiago', 'Colombia', 'Bogotá', 'Cl. 36 1 - 35', 11139, 319457510, 'carlos@gmail.com'),
(3, 'car', '123456', 'carlos', 'brasil', 'sao pablo', 'cr 4 35-30', 896251, 4820075, 'carlos@correo.com'),
(4, 'maria23', '123456', 'Maria', 'Uruguay', 'Montevideo', 'dg 45 8-90', 36980, 789562, 'maria23@correo.com'),
(5, 'Sant', '123456', 'Santiago', 'Colombia', 'Bogotá', 'cr 4 89-20', 125963, 8952042, 'santiago@correo.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `codigoreserva` int(11) NOT NULL,
  `numeroVuelo` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`codigoreserva`, `numeroVuelo`) VALUES
(577257476, 1),
(541275123, 4),
(563244720, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarifa`
--

CREATE TABLE `tarifa` (
  `precio` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tarifa`
--

INSERT INTO `tarifa` (`precio`) VALUES
(2000000),
(2500000),
(3000000),
(3500000),
(5000000),
(5500000),
(8000000),
(8500000),
(10000000),
(10500000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjeta`
--

CREATE TABLE `tarjeta` (
  `numero` int(100) NOT NULL,
  `fechVenc` date NOT NULL,
  `idPasajero` int(100) NOT NULL,
  `empresatarjeta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tarjeta`
--

INSERT INTO `tarjeta` (`numero`, `fechVenc`, `idPasajero`, `empresatarjeta`) VALUES
(541275123, '2023-12-07', 4, 'Master Card'),
(563244720, '2023-12-13', 5, 'Master Card'),
(577257476, '2023-12-18', 1, 'Master Card');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket`
--

CREATE TABLE `ticket` (
  `tickets` int(11) NOT NULL,
  `idp` int(11) NOT NULL,
  `idtar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ticket`
--

INSERT INTO `ticket` (`tickets`, `idp`, `idtar`) VALUES
(13, 1, 577257476),
(14, 1, 577257476),
(22, 4, 541275123),
(23, 4, 541275123),
(24, 4, 541275123),
(25, 4, 541275123),
(27, 5, 563244720),
(28, 5, 563244720),
(29, 5, 563244720);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelo`
--

CREATE TABLE `vuelo` (
  `numVuelo` int(100) NOT NULL,
  `origen` varchar(100) NOT NULL,
  `destino` varchar(100) NOT NULL,
  `salida` int(100) NOT NULL,
  `llegada` int(100) NOT NULL,
  `aerolinea` varchar(100) NOT NULL,
  `avion` int(100) NOT NULL,
  `tarifa` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vuelo`
--

INSERT INTO `vuelo` (`numVuelo`, `origen`, `destino`, `salida`, `llegada`, `aerolinea`, `avion`, `tarifa`) VALUES
(1, 'Aeropuerto Internacional El Dorado', 'Madrid-Barajas', 7, 17, 'Iberia', 5, 5000000),
(2, 'Aeropuerto Internacional El Dorado', 'Jhon F. Kennedy', 6, 12, 'Avianca', 1, 2000000),
(3, 'Aeropuerto Internacional El Dorado', 'Los Ángeles Internacional', 11, 21, 'American Airlines', 6, 2000000),
(4, 'Aeropuerto Internacional Ezeiza', 'Madrid-Barajas', 4, 16, 'Iberia', 7, 10500000),
(5, 'Aeropuerto Internacional de El Cairo', 'El Prat', 11, 23, 'Lufthansa', 2, 2500000),
(6, 'Pudong', 'Aeropuerto Internacional de Haneda', 2, 5, 'Hong Kong Airlines', 6, 2500000),
(7, 'Aeropuerto Internacional de la Ciudad de México', 'Charles de Gaulle', 4, 18, 'Delta Airlines', 3, 5500000),
(8, 'Istanbul Airport', 'Londres-Heathrow', 15, 19, 'Pegasus', 1, 2000000),
(9, 'Brandeburgo Willy Brandt', 'Pudong', 2, 19, 'Air France', 1, 3500000),
(10, 'São Paulo-Guarulhos', 'Roma - Fiumicino', 5, 19, 'LATAM', 1, 8000000),
(11, 'Aeropuerto de Zúrich', 'Moscú-Vnúkovo', 3, 14, 'Turkish Airlines', 1, 3000000),
(12, 'Roma - Fiumicino', 'Aeropuerto Internacional de Haneda', 1, 19, 'China Southern Airlines', 7, 3500000),
(13, 'Eleftherios Venizelos', 'Aeropuerto Internacional El Dorado', 6, 22, 'Lufthansa', 3, 5000000),
(14, 'El Prat', 'Pudong', 4, 19, 'Lufthansa', 1, 3500000),
(15, 'Aeropuerto de Bruselas', 'Aeropuerto Internacional Ezeiza', 3, 20, 'Iberia', 2, 5000000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aerolinea`
--
ALTER TABLE `aerolinea`
  ADD PRIMARY KEY (`nombre`);

--
-- Indices de la tabla `aeropuerto`
--
ALTER TABLE `aeropuerto`
  ADD PRIMARY KEY (`nombre`);

--
-- Indices de la tabla `avion`
--
ALTER TABLE `avion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`idhorario`),
  ADD UNIQUE KEY `idhorario` (`idhorario`);

--
-- Indices de la tabla `pasajero`
--
ALTER TABLE `pasajero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`codigoreserva`),
  ADD KEY `codigoreserva` (`codigoreserva`),
  ADD KEY `numeroVuelo` (`numeroVuelo`);

--
-- Indices de la tabla `tarifa`
--
ALTER TABLE `tarifa`
  ADD PRIMARY KEY (`precio`);

--
-- Indices de la tabla `tarjeta`
--
ALTER TABLE `tarjeta`
  ADD PRIMARY KEY (`numero`),
  ADD KEY `idPasajero` (`idPasajero`);

--
-- Indices de la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`tickets`),
  ADD KEY `idp` (`idp`),
  ADD KEY `idtar` (`idtar`);

--
-- Indices de la tabla `vuelo`
--
ALTER TABLE `vuelo`
  ADD PRIMARY KEY (`numVuelo`),
  ADD KEY `origen` (`origen`),
  ADD KEY `destino` (`destino`),
  ADD KEY `llegada` (`salida`),
  ADD KEY `salida` (`llegada`),
  ADD KEY `aerolinea` (`aerolinea`),
  ADD KEY `avion` (`avion`),
  ADD KEY `tarifa` (`tarifa`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `avion`
--
ALTER TABLE `avion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `idhorario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `pasajero`
--
ALTER TABLE `pasajero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ticket`
--
ALTER TABLE `ticket`
  MODIFY `tickets` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `vuelo`
--
ALTER TABLE `vuelo`
  MODIFY `numVuelo` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`codigoreserva`) REFERENCES `tarjeta` (`numero`) ON UPDATE CASCADE,
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`numeroVuelo`) REFERENCES `vuelo` (`numVuelo`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tarjeta`
--
ALTER TABLE `tarjeta`
  ADD CONSTRAINT `tarjeta_ibfk_1` FOREIGN KEY (`idPasajero`) REFERENCES `pasajero` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`idp`) REFERENCES `pasajero` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`idtar`) REFERENCES `tarjeta` (`numero`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `vuelo`
--
ALTER TABLE `vuelo`
  ADD CONSTRAINT `vuelo_ibfk_1` FOREIGN KEY (`aerolinea`) REFERENCES `aerolinea` (`nombre`) ON UPDATE CASCADE,
  ADD CONSTRAINT `vuelo_ibfk_2` FOREIGN KEY (`salida`) REFERENCES `horario` (`idhorario`) ON UPDATE CASCADE,
  ADD CONSTRAINT `vuelo_ibfk_3` FOREIGN KEY (`llegada`) REFERENCES `horario` (`idhorario`) ON UPDATE CASCADE,
  ADD CONSTRAINT `vuelo_ibfk_4` FOREIGN KEY (`avion`) REFERENCES `avion` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `vuelo_ibfk_5` FOREIGN KEY (`tarifa`) REFERENCES `tarifa` (`precio`) ON UPDATE CASCADE,
  ADD CONSTRAINT `vuelo_ibfk_6` FOREIGN KEY (`origen`) REFERENCES `aeropuerto` (`nombre`) ON UPDATE CASCADE,
  ADD CONSTRAINT `vuelo_ibfk_7` FOREIGN KEY (`destino`) REFERENCES `aeropuerto` (`nombre`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
