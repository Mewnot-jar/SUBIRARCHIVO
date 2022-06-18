-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-06-2022 a las 05:16:47
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `libreria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `books`
--

CREATE TABLE `books` (
  `id_books` int(10) NOT NULL,
  `id_cat` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `name_book` varchar(50) NOT NULL,
  `autor_book` varchar(50) DEFAULT NULL,
  `edit_book` varchar(50) DEFAULT NULL,
  `stock_book` int(10) NOT NULL,
  `vendidos_book` int(10) DEFAULT NULL,
  `file_book` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `books`
--

INSERT INTO `books` (`id_books`, `id_cat`, `id_user`, `name_book`, `autor_book`, `edit_book`, `stock_book`, `vendidos_book`, `file_book`) VALUES
(26, 4, 1, 'El Economista Callejero', 'Axel Kaiser', 'Ediciones El Mercurio', 54, 48, NULL),
(27, 9, 1, 'Heartstopper #2', 'Alice Oseman', 'Zig Zag', 0, 15, NULL),
(28, 9, 1, 'Heartstopper #1', 'Alice Oseman', 'Vergara Y Riba', 35, 16, NULL),
(29, 4, 1, 'El Economista Callejero', 'Yo', 'Ediciones El Mercurio', 3, 15, NULL),
(30, 10, 1, 'Violeta', 'Isabel Allende', 'Sudamericana', 0, 12, NULL),
(33, 6, 1, 'asd', 'asd', 'asda', 12, NULL, '../img/upload/'),
(34, 5, 1, 'asd', 'asd', 'asd', 11, NULL, '../img/upload/'),
(35, 5, 1, 'ec', 'as', 'asd', 12, NULL, '../img/upload/caratula.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_cat` int(10) NOT NULL,
  `name_cat` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_cat`, `name_cat`) VALUES
(2, 'Terror'),
(3, 'Accion'),
(4, 'Comedia'),
(5, 'Autobiografico'),
(6, 'Suspenso'),
(7, 'Salud'),
(8, 'Thriller'),
(9, 'Romance'),
(10, 'Drama'),
(11, 'Fantasia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_user` int(10) NOT NULL,
  `name_user` varchar(15) NOT NULL,
  `email_user` varchar(30) NOT NULL,
  `pass_user` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_user`, `name_user`, `email_user`, `pass_user`) VALUES
(1, 'Juanito', 'juanito@gmail.com', 'juanito123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id_books`),
  ADD KEY `id_cat` (`id_cat`),
  ADD KEY `id_user` (`id_user`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_cat`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `books`
--
ALTER TABLE `books`
  MODIFY `id_books` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_cat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON UPDATE CASCADE,
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`id_cat`) REFERENCES `categorias` (`id_cat`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
