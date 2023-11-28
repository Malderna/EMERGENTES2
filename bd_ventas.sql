-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 12-11-2023 a las 00:03:12
-- Versión del servidor: 5.7.17-log
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_ventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(32) NOT NULL,
  `correo` varchar(128) NOT NULL,
  `celular` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `correo`, `celular`) VALUES
(1, 'Marcelo Honorio Quispe', 'marcelohonorio@mail.com', '77766612'),
(2, 'Carlita Benitez', 'carlita@mail.org', '70016000'),
(3, 'Gabriela Zegarra Gonzales Flores', 'gabi@lmail.com', '79112323'),
(7, 'Marco Perez', 'marco@mail.com', '71526789'),
(8, 'Rafael Perez', 'rafael@mail.com', '72054577'),
(9, 'Juan de Arco', 'juanita@mail.com', '77112456'),
(10, 'Luis Callejas', 'lucho@mial.com', '77122456'),
(16, 'Marcelo Martins', 'marcelo@mail.com', '70012345'),
(17, 'Juan Capriles', 'capri@mail.com', '78945612'),
(18, 'Ruben', 'ruben@gmail.com', '73464747'),
(19, 'Paola Andre', 'paola@mail.com', '78923415'),
(20, 'Adhemar', 'adhemar@mail.com', '72037465'),
(21, 'Andrea ', 'andrea@mail.com', '63542612'),
(22, '            ', 'anita@mail.com', '72398764'),
(23, 'Beltran ', 'beltran@mail.com', '79484734'),
(24, 'Roberta Almendra', 'roberta@mail.com', '78935354'),
(25, 'Julian Ramos', 'julianramos@mail.com', '67653531');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` float NOT NULL,
  `ruta` varchar(1000) NOT NULL,
  `imagen` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `ruta`, `imagen`) VALUES
(1, 'Dell R', 'Color Verde', 5000, 'D:\\Docente\\Analisis y Diseño\\ADI_VENTAS\\AnalisisDiseño_I_SistemaVentas1\\src\\analisisdiseño_i_sistemaventas\\Imagenes\\Computadora de Escritorio.jpeg', 0xffd8ffe000104a46494600010100000100010000ffe201d84943435f50524f46494c45000101000001c800000000043000006d6e74725247422058595a2007e00001000100000000000061637370000000000000000000000000000000000000000000000000000000010000f6d6000100000000d32d00000000000000000000000000000000000000000000000000000000),
(2, 'iPhone 5', 'iPhone 5 from Apple', 150, '', ''),
(3, 'iPhone 5s', 'iPhone 5s is too expensive.', 300.8, '', ''),
(5, 'HTC One', 'Best of 2013', 250, '', ''),
(6, 'Azus Sure', 'Importado desde Rusia', 15000, '', ''),
(7, 'Lenovo 2020', 'This sword is so sharp that it can slice itself. Good for slicing jellies.', 2000, '', ''),
(8, 'Latitude e6420', 'Built by ultimate killing machines. For ultimate killing hobies.', 50, '', ''),
(9, 'Toshiba xd456', 'This jacket could save you from heart attack. And maybe heartbreaks.', 50000, '', ''),
(10, 'Dell vostro 456', 'This helps you brighten things in the dark.', 650, '', ''),
(11, 'Azus core i7', 'Importado desde EE.UU.', 4500, '', ''),
(12, 'AlienWare', 'Memoria disco solido', 6000, '', ''),
(13, 'Mac', 'Sistema operativo linux', 7000, '', ''),
(14, 'hp pavilion', 'Color rojo core i5', 4500, '', ''),
(15, 'Samsung', 'Generacion nueva', 3500, '', ''),
(16, 'Laptop Gamer', 'AlienWare Color Negro', 12000, 'D:\\Docente\\Analisis y Diseño\\ADI_VENTAS\\AnalisisDiseño_I_SistemaVentas1\\src\\analisisdiseño_i_sistemaventas\\Imagenes\\AlienWare.jpeg', 0xffd8ffe000104a46494600010100000100010000ffe201d84943435f50524f46494c45000101000001c800000000043000006d6e74725247422058595a2007e00001000100000000000061637370000000000000000000000000000000000000000000000000000000010000f6d6000100000000d32d000000000000000000000000),
(17, 'Laptop', 'Color Plomo', 2000, 'C:Usersale12DownloadsLaptop3Dell.jpeg', 0xffd8ffe000104a46494600010100000100010000ffe201d84943435f50524f46494c4500),
(18, 'DELL AlienWare', 'Color plateado', 4500, 'C:Usersale12DownloadsLaptop.jpeg', 0xffd8ffe000104a46494600010100000100010000ffe201d84943435f50524f46494c45000101000001c8000000),
(19, 'Celular Samsung SXXI', 'Pantalla Plana', 7000, 'C:\\Users\\ale12\\Downloads\\Celular Samsung S21.jpeg', 0xffd8ffe000104a46494600010100000100010000ffe201d84943435f50524f46494c45000101000001c800000000043000),
(20, 'Telefono Samsung', 'Color Rosado Mate', 8000, 'C:\\Users\\ale12\\Downloads\\TelefonoSamsungS21.jpeg', 0xffd8ffe000104a46494600010100000100010000ffe201d84943435f50524f46494c45000101000001c8000000000430),
(21, 'Telefono Samsung', 'Color Blanco ', 8500, 'D:\\Docente\\Analisis y Diseño\\ADI_VENTAS\\AnalisisDiseño_I_SistemaVentas1\\src\\analisisdiseño_i_sistemaventas\\Imagenes\\TelefonoSamsungS21Blanco.jpeg', 0xffd8ffe000104a46494600010100000100010000ffe201d84943435f50524f46494c45000101000001c800000000043000006d6e74725247422058595a2007e00001000100000000000061637370000000000000000000000000000000000000000000000000000000010000f6d6000100000000d32d000000000000000000000000000000000000000000000000000000),
(22, 'Teclado HP', 'Color negro', 800, 'D:\\Docente\\Analisis y Diseño\\ADI_VENTAS\\AnalisisDiseño_I_SistemaVentas1\\src\\analisisdiseño_i_sistemaventas\\Imagenes\\Teclado.jpeg', 0xffd8ffe000104a46494600010100000100010000ffe201d84943435f50524f46494c45000101000001c800000000043000006d6e74725247422058595a2007e00001000100000000000061637370000000000000000000000000000000000000000000000000000000010000f6d6000100000000d32d00000000000000000000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipo` int(11) DEFAULT NULL,
  `detalle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `tipo`, `detalle`) VALUES
(1, 1, 'administrador'),
(2, 2, 'vendedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tareas`
--

CREATE TABLE `tareas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rol` int(11) DEFAULT NULL,
  `modulo` varchar(50) DEFAULT NULL,
  `adicionar` varchar(1) DEFAULT NULL,
  `eliminar` varchar(1) DEFAULT NULL,
  `modificar` varchar(1) DEFAULT NULL,
  `listar` varchar(1) DEFAULT NULL,
  `imprimir` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tareas`
--

INSERT INTO `tareas` (`id`, `rol`, `modulo`, `adicionar`, `eliminar`, `modificar`, `listar`, `imprimir`) VALUES
(1, 1, 'productos', '0', '0', '1', '0', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `apellidos` varchar(80) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombres`, `apellidos`, `correo`, `password`) VALUES
(1, 'Admin', 'Istrador', 'admin@mail.com', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'Bruno', 'Diaz', 'bruno@mail.com', 'e3928a3bc4be46516aa33a79bbdfdb08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarioo`
--

CREATE TABLE `usuarioo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `users` varchar(50) DEFAULT NULL,
  `clave` varchar(255) DEFAULT NULL,
  `rol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarioo`
--

INSERT INTO `usuarioo` (`id`, `nombre`, `users`, `clave`, `rol`) VALUES
(1, 'juan perez', 'jperez', '827ccb0eea8a706c4c34a16891f84e7b', 1),
(2, 'Florencia Ramos', 'framos', 'e13dd027be0f2152ce387ac0ea83d863', 2),
(3, 'Pablo Ancieta', 'pancienta', '21232f297a57a5a743894a0e4a801fc3', 1),
(4, 'Maria Gutierrez', 'mgutierrez', '4ccec5bb6a5eb4a450d4143a56f7b49b', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `password`) VALUES
(1, 'admin@mail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(2, 'marco@mail.com', '12345'),
(3, 'adrian@mail.com', '8cb2237d0679ca88db6464eac60da96345513964'),
(4, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `producto_id`, `cliente_id`, `fecha`) VALUES
(1, 15, 25, '2023-09-12'),
(4, 1, 1, '2023-09-12'),
(16, 9, 7, '2023-06-29'),
(18, 1, 2, '2023-09-29'),
(19, 1, 2, '2024-10-30'),
(20, 1, 2, '2024-10-30'),
(21, 5, 7, '2023-09-09'),
(22, 5, 7, '2023-09-12'),
(23, 2, 3, '2023-09-10'),
(24, 2, 9, '2023-09-12'),
(25, 10, 23, '2023-09-14');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarioo`
--
ALTER TABLE `usuarioo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tareas`
--
ALTER TABLE `tareas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuarioo`
--
ALTER TABLE `usuarioo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
