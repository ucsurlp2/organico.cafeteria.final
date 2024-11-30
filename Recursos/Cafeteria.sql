-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-11-2024 a las 06:33:17
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
-- Base de datos: `cafeteria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_pro`
--

CREATE TABLE `categoria_pro` (
  `Cod_CatePro` int(11) NOT NULL,
  `Descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria_pro`
--

INSERT INTO `categoria_pro` (`Cod_CatePro`, `Descripcion`) VALUES
(1, 'Bebidas Calientes'),
(2, 'Postres'),
(4, 'Bebidas Frías'),
(5, 'Jugos'),
(6, 'Sandwiches'),
(7, 'Hamburguesas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_orden`
--

CREATE TABLE `detalle_orden` (
  `Cod_DetOrden` int(11) NOT NULL,
  `Cod_Orden` int(11) NOT NULL,
  `Cod_Producto` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `PrecioUnit` double NOT NULL,
  `SubTotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `Cod_DetallePed` int(11) NOT NULL,
  `Cod_Pedido` int(11) NOT NULL,
  `Cod_Producto` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `PrecioUnit` double NOT NULL,
  `SubTotal` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`Cod_DetallePed`, `Cod_Pedido`, `Cod_Producto`, `Cantidad`, `PrecioUnit`, `SubTotal`) VALUES
(1, 1, 4, 5, 8, 40),
(2, 1, 5, 6, 10, 60),
(3, 1, 6, 3, 6, 18),
(4, 2, 4, 9, 8, 72),
(5, 2, 5, 4, 10, 40),
(6, 2, 6, 9, 6, 54),
(7, 2, 7, 10, 10, 100),
(8, 2, 8, 5, 14, 70);

--
-- Disparadores `detalle_pedido`
--
DELIMITER $$
CREATE TRIGGER `calculate_subtotal` BEFORE INSERT ON `detalle_pedido` FOR EACH ROW BEGIN
    SET NEW.SubTotal = NEW.Cantidad * NEW.PrecioUnit;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `Cod_Empleado` int(11) NOT NULL,
  `Cod_Usuario` int(11) NOT NULL,
  `Nombre` varchar(150) NOT NULL,
  `DNI` char(8) NOT NULL,
  `Fecha_Nac` date NOT NULL,
  `Correo` varchar(200) NOT NULL,
  `Rol` varchar(150) NOT NULL,
  `Telefono` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`Cod_Empleado`, `Cod_Usuario`, `Nombre`, `DNI`, `Fecha_Nac`, `Correo`, `Rol`, `Telefono`) VALUES
(1, 1, 'Juan Pérez', '12345678', '1990-05-15', 'juan.perez@cafeteria.com', 'Administrador', '987654321'),
(2, 2, 'María López', '87654321', '1985-10-22', 'maria.lopez@cafeteria.com', 'Cajero', '912345678');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_compra`
--

CREATE TABLE `orden_compra` (
  `Cod_Orden` int(11) NOT NULL,
  `Cod_Empleado` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `Cod_Pedido` int(11) NOT NULL,
  `Cod_Empleado` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Total` double NOT NULL,
  `Cliente` varchar(150) NOT NULL,
  `Comentario` varchar(500) DEFAULT 'Sin comentarios'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`Cod_Pedido`, `Cod_Empleado`, `Fecha`, `Total`, `Cliente`, `Comentario`) VALUES
(1, 2, '2024-11-28', 30.05, 'José', NULL),
(2, 2, '2024-11-28', 25.2, 'Miguel', NULL),
(3, 2, '2024-11-28', 60, 'Maria', 'Sin comentarios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `Cod_Producto` int(11) NOT NULL,
  `Cod_CatePro` int(11) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `Precio` double NOT NULL,
  `Nombre` varchar(150) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `Fecha_fab` datetime DEFAULT NULL,
  `Fecha_exp` datetime DEFAULT NULL,
  `Cod_Proveedor` int(11) DEFAULT NULL,
  `Cod_Tipoprod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`Cod_Producto`, `Cod_CatePro`, `Descripcion`, `Precio`, `Nombre`, `stock`, `Fecha_fab`, `Fecha_exp`, `Cod_Proveedor`, `Cod_Tipoprod`) VALUES
(4, 1, '400', 8, 'Café Americano', NULL, NULL, NULL, NULL, 2),
(5, 1, '400', 10, 'Chocolate', NULL, NULL, NULL, NULL, 2),
(6, 1, '400', 6, 'Café Espresso', NULL, NULL, NULL, NULL, 2),
(7, 1, '400', 10, 'Café Capuccino', NULL, NULL, NULL, NULL, 2),
(8, 4, '500', 14, 'Moccha frappé', NULL, NULL, NULL, NULL, 2),
(9, 4, '500', 14, 'Caramel frappé', NULL, NULL, NULL, NULL, 2),
(10, 4, '400', 9, 'Iced Coffee', NULL, NULL, NULL, NULL, 2),
(11, 4, '500', 12, 'Iced Latte', NULL, NULL, NULL, NULL, 2),
(12, 5, '500', 13, 'Jugo de Fresa', NULL, NULL, NULL, NULL, 2),
(13, 5, '500', 13, 'Jugo de Piña', NULL, NULL, NULL, NULL, 2),
(14, 5, '500', 13, 'Jugo de Papaya', NULL, NULL, NULL, NULL, 2),
(15, 5, '500', 15, 'Jugo de Surtido', NULL, NULL, NULL, NULL, 2),
(16, 5, '500', 10, 'Jugo de Naranja', NULL, NULL, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `Cod_Proveedor` int(11) NOT NULL,
  `Razon_Social` varchar(150) NOT NULL,
  `RUC` char(20) NOT NULL,
  `Correo` varchar(200) NOT NULL,
  `Telefono` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`Cod_Proveedor`, `Razon_Social`, `RUC`, `Correo`, `Telefono`) VALUES
(1, 'Café del Sur', '12345678901', 'contacto@cafedelsur.com', '987654321'),
(2, 'Lácteos Frescos', '23456789012', 'ventas@lacteosfrescos.com', '912345678');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_prod`
--

CREATE TABLE `tipo_prod` (
  `Cod_Tipoprod` int(11) NOT NULL,
  `Descripcion` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_prod`
--

INSERT INTO `tipo_prod` (`Cod_Tipoprod`, `Descripcion`) VALUES
(1, 'Materia Prima'),
(2, 'Producto Preparado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Cod_Usuario` int(11) NOT NULL,
  `Usuario` varchar(150) NOT NULL,
  `Contraseña` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Cod_Usuario`, `Usuario`, `Contraseña`) VALUES
(1, 'admin', '12345'),
(2, 'empleado1', 'abcd1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria_pro`
--
ALTER TABLE `categoria_pro`
  ADD PRIMARY KEY (`Cod_CatePro`);

--
-- Indices de la tabla `detalle_orden`
--
ALTER TABLE `detalle_orden`
  ADD PRIMARY KEY (`Cod_DetOrden`),
  ADD KEY `producto_Cod_Producto_detalle_orden` (`Cod_Producto`),
  ADD KEY `orden_compra_Cod_Orden_detalle_orden` (`Cod_Orden`);

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`Cod_DetallePed`),
  ADD KEY `detalle_pedido_Cod_Pedido_pedido` (`Cod_Pedido`),
  ADD KEY `pedido_Cod_Producto_detalle_pedido` (`Cod_Producto`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`Cod_Empleado`);

--
-- Indices de la tabla `orden_compra`
--
ALTER TABLE `orden_compra`
  ADD PRIMARY KEY (`Cod_Orden`),
  ADD KEY `empleado_Cod_Empleado_orden_compra` (`Cod_Empleado`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`Cod_Pedido`),
  ADD KEY `empleado_Cod_Empleado_pedido` (`Cod_Empleado`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`Cod_Producto`),
  ADD KEY `categoria_pro_Cod_CatePro_producto` (`Cod_CatePro`),
  ADD KEY `proveedores_Cod_Proveedor_producto` (`Cod_Proveedor`),
  ADD KEY `a` (`Cod_Tipoprod`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`Cod_Proveedor`);

--
-- Indices de la tabla `tipo_prod`
--
ALTER TABLE `tipo_prod`
  ADD PRIMARY KEY (`Cod_Tipoprod`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Cod_Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria_pro`
--
ALTER TABLE `categoria_pro`
  MODIFY `Cod_CatePro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `detalle_orden`
--
ALTER TABLE `detalle_orden`
  MODIFY `Cod_DetOrden` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `Cod_DetallePed` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `Cod_Empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `orden_compra`
--
ALTER TABLE `orden_compra`
  MODIFY `Cod_Orden` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `Cod_Pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `Cod_Producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `Cod_Proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_prod`
--
ALTER TABLE `tipo_prod`
  MODIFY `Cod_Tipoprod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Cod_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_orden`
--
ALTER TABLE `detalle_orden`
  ADD CONSTRAINT `orden_compra_Cod_Orden_detalle_orden` FOREIGN KEY (`Cod_Orden`) REFERENCES `orden_compra` (`Cod_Orden`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `producto_Cod_Producto_detalle_orden` FOREIGN KEY (`Cod_Producto`) REFERENCES `producto` (`Cod_Producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_Cod_Pedido_pedido` FOREIGN KEY (`Cod_Pedido`) REFERENCES `pedido` (`Cod_Pedido`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `pedido_Cod_Producto_detalle_pedido` FOREIGN KEY (`Cod_Producto`) REFERENCES `producto` (`Cod_Producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `orden_compra`
--
ALTER TABLE `orden_compra`
  ADD CONSTRAINT `empleado_Cod_Empleado_orden_compra` FOREIGN KEY (`Cod_Empleado`) REFERENCES `empleado` (`Cod_Empleado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `empleado_Cod_Empleado_pedido` FOREIGN KEY (`Cod_Empleado`) REFERENCES `empleado` (`Cod_Empleado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `a` FOREIGN KEY (`Cod_Tipoprod`) REFERENCES `tipo_prod` (`Cod_Tipoprod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `categoria_pro_Cod_CatePro_producto` FOREIGN KEY (`Cod_CatePro`) REFERENCES `categoria_pro` (`Cod_CatePro`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `proveedores_Cod_Proveedor_producto` FOREIGN KEY (`Cod_Proveedor`) REFERENCES `proveedores` (`Cod_Proveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
