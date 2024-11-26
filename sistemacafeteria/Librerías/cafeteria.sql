-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-11-2024 a las 03:36:50
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
-- Estructura de tabla para la tabla `categoria_ing`
--

CREATE TABLE `categoria_ing` (
  `Cod_CateIng` int(11) NOT NULL,
  `Descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria_ing`
--

INSERT INTO `categoria_ing` (`Cod_CateIng`, `Descripcion`) VALUES
(1, 'Granos de Café'),
(2, 'Lácteos'),
(3, 'Ingredientes de Repostería');

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
(3, 'Snacks');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_exp`
--

CREATE TABLE `detalle_exp` (
  `Cod_Producto` int(11) NOT NULL,
  `Fecha_Fab` datetime NOT NULL,
  `Fecha_Exp` datetime NOT NULL,
  `Estado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `SubTotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Estructura de tabla para la tabla `ingredientes`
--

CREATE TABLE `ingredientes` (
  `Cod_Ingrediente` int(11) NOT NULL,
  `Cod_CateIng` int(11) NOT NULL,
  `Cod_Proveedor` int(11) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `Stock` int(11) NOT NULL,
  `Precio_Compra` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ingredientes`
--

INSERT INTO `ingredientes` (`Cod_Ingrediente`, `Cod_CateIng`, `Cod_Proveedor`, `Descripcion`, `Stock`, `Precio_Compra`) VALUES
(1, 1, 1, 'Granos de café arábica', 50, 0),
(2, 2, 2, 'Leche entera', 100, 0),
(3, 3, 1, 'Harina de repostería', 30, 0);

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
  `Total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `Cod_Producto` int(11) NOT NULL,
  `Cod_CatePro` int(11) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `Precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`Cod_Producto`, `Cod_CatePro`, `Descripcion`, `Precio`) VALUES
(1, 1, 'Café Americano', 10.5),
(2, 1, 'Café Latte', 12),
(3, 2, 'Cheesecake', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prod_ing`
--

CREATE TABLE `prod_ing` (
  `Cod_Producto` int(11) NOT NULL,
  `Cod_Ingrediente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Indices de la tabla `categoria_ing`
--
ALTER TABLE `categoria_ing`
  ADD PRIMARY KEY (`Cod_CateIng`);

--
-- Indices de la tabla `categoria_pro`
--
ALTER TABLE `categoria_pro`
  ADD PRIMARY KEY (`Cod_CatePro`);

--
-- Indices de la tabla `detalle_exp`
--
ALTER TABLE `detalle_exp`
  ADD KEY `producto_Cod_Producto_detalle_exp` (`Cod_Producto`);

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
-- Indices de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD PRIMARY KEY (`Cod_Ingrediente`),
  ADD KEY `proveedores_Cod_Proveedor_ingredientes` (`Cod_Proveedor`),
  ADD KEY `categoria_ing_Cod_CateIng_ingredientes` (`Cod_CateIng`);

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
  ADD KEY `categoria_pro_Cod_CatePro_producto` (`Cod_CatePro`);

--
-- Indices de la tabla `prod_ing`
--
ALTER TABLE `prod_ing`
  ADD KEY `producto_Cod_Producto_prod_ing` (`Cod_Producto`),
  ADD KEY `ingredientes_Cod_Ingrediente_prod_ing` (`Cod_Ingrediente`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`Cod_Proveedor`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Cod_Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria_ing`
--
ALTER TABLE `categoria_ing`
  MODIFY `Cod_CateIng` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `categoria_pro`
--
ALTER TABLE `categoria_pro`
  MODIFY `Cod_CatePro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `detalle_orden`
--
ALTER TABLE `detalle_orden`
  MODIFY `Cod_DetOrden` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `Cod_DetallePed` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `Cod_Empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  MODIFY `Cod_Ingrediente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `orden_compra`
--
ALTER TABLE `orden_compra`
  MODIFY `Cod_Orden` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `Cod_Pedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `Cod_Producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `Cod_Proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Cod_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_exp`
--
ALTER TABLE `detalle_exp`
  ADD CONSTRAINT `producto_Cod_Producto_detalle_exp` FOREIGN KEY (`Cod_Producto`) REFERENCES `producto` (`Cod_Producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
-- Filtros para la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD CONSTRAINT `categoria_ing_Cod_CateIng_ingredientes` FOREIGN KEY (`Cod_CateIng`) REFERENCES `categoria_ing` (`Cod_CateIng`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `proveedores_Cod_Proveedor_ingredientes` FOREIGN KEY (`Cod_Proveedor`) REFERENCES `proveedores` (`Cod_Proveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
  ADD CONSTRAINT `categoria_pro_Cod_CatePro_producto` FOREIGN KEY (`Cod_CatePro`) REFERENCES `categoria_pro` (`Cod_CatePro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `prod_ing`
--
ALTER TABLE `prod_ing`
  ADD CONSTRAINT `ingredientes_Cod_Ingrediente_prod_ing` FOREIGN KEY (`Cod_Ingrediente`) REFERENCES `ingredientes` (`Cod_Ingrediente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `producto_Cod_Producto_prod_ing` FOREIGN KEY (`Cod_Producto`) REFERENCES `producto` (`Cod_Producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
