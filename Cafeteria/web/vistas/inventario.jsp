<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inventario - Orgánico Cafetería</title>
    <link rel="stylesheet" href="barra_lateral.css">
    <link rel="stylesheet" href="inventario.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
    <!-- Barra lateral fija con el menú principal -->
    <div class="barra-lateral">
        <h2>ORGÁNICO CAFETERÍA</h2>
        <!-- Opciones del menú -->
        <a href="index.html" class="opcion-menu">
            <i class="fa fa-home"></i>
            <span>Inicio</span>
        </a>
        <a href="ventas.html" class="opcion-menu">
            <i class="fa fa-shopping-cart"></i>
            <span>Venta</span>
        </a>
        <a href="inventario.html" class="opcion-menu activo">
            <i class="fa fa-boxes"></i>
            <span>Inventario</span>
        </a>
        <a href="#" class="opcion-menu">
            <i class="fa fa-chart-bar"></i>
            <span>Reportes</span>
        </a>
        <a href="#" class="opcion-menu">
            <i class="fa fa-cogs"></i>
            <span>Configuración</span>
        </a>

        <!-- Botones de acciones ubicados al final -->
        <div class="acciones">
            <form action="apertura-caja.html" method="get">
                <button class="boton apertura-caja">Apertura y cierre de caja</button>
            </form>
            <button class="boton salir"><i class="fa fa-sign-out-alt"></i>Salir</button>
        </div>
    </div>

    <!-- Contenido principal -->
    <div class="contenido-principal">
        <h1>INVENTARIO</h1>

        <!-- Resumen de inventario -->
        <div class="resumen-inventario">
            <div class="tarjeta-inventario">
                <i class="fa fa-dollar-sign"></i>
                <h2>12,313.40</h2>
                <p>Valor de inventario</p>
            </div>
            <div class="tarjeta-inventario">
                <i class="fa fa-box"></i>
                <h2>65</h2>
                <p>Artículos de inventario</p>
            </div>
            <div class="tarjeta-inventario">
                <i class="fa fa-user"></i>
                <h2>16</h2>
                <p>Proveedores</p>
            </div>
        </div>
        <h2>Lista de productos</h2>
        <!-- Lista de productos -->
        <div class="lista-productos">
            <div class="barra-busqueda">
                <div class="campo-lupa">
                    <i class="fa fa-search"></i>
                    <input type="text" placeholder="Buscar productos...">
                </div>
                <button>Agrupar por: Sin filtro aplicado</button>
            </div>
            
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Categoría</th>
                        <th>Nombre</th>
                        <th>Descripción</th>
                        <th>Stock disp</th>
                        <th>Venta</th>
                        <th>Stock real</th>
                        <th>Precio</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>01</td>
                        <td>Bebidas calientes</td>
                        <td>Espresso</td>
                        <td>Café espresso fuerte, preparado con granos 100% arábica.</td>
                        <td>16</td>
                        <td>10</td>
                        <td>6</td>
                        <td>8.00</td>
                        <td>
                            <a href="#" class="editar">Editar</a> | <a href="#" class="eliminar">Eliminar</a>
                        </td>
                    </tr>
                    <!-- Repite más filas según sea necesario -->
                </tbody>
            </table>
        </div>

        <!-- Opciones de acción -->
        <div class="acciones-inventario">
            <button class="boton agregar-producto">Agregar Nuevo Producto</button>
            <button class="boton registrar-compra">Registrar Nueva Compra</button>
        </div>
    </div>
</body>
</html>
