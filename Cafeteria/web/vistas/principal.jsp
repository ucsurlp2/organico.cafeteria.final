<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pagina de Inicio - Organico Cafeteri�a</title>
    <link rel="stylesheet" href="../css/barra_lateral.css">
    <link rel="stylesheet" href="../css/panel_principal.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
    <!-- Barra lateral fija con el menú principal -->
    <div class="barra-lateral">
        <h2>ORGANICO CAFETERIA</h2>
        <!-- Opciones del menú -->
        <a href="#" class="opcion-menu">
            <i class="fa fa-home"></i>
            <span>Inicio</span>
        </a>
        <a href="ventas.jsp" class="opcion-menu">
            <i class="fa fa-shopping-cart"></i>
            <span>Venta</span>
        </a>
        <a href="inventario.jsp" class="opcion-menu">
            <i class="fa fa-boxes"></i>
            <span>Inventario</span>
        </a>
        <a href="#" class="opcion-menu">
            <i class="fa fa-chart-bar"></i>
            <span>Reportes</span>
        </a>
        <a href="config.jsp" class="opcion-menu">
            <i class="fa fa-cogs"></i>
            <span>Configuracion</span>
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
        <h1>INICIO</h1>
        <!-- Estadísticas resumidas -->
        <div class="resumen">
            <div class="tarjeta-resumen">
                <i class="fa fa-user"></i>
                <h3>Usuarios</h3>
                <p>4</p>
            </div>
            <div class="tarjeta-resumen">
                <i class="fa fa-tags"></i>
                <h3>Categorías</h3>
                <p>5</p>
            </div>
            <div class="tarjeta-resumen">
                <i class="fa fa-box"></i>
                <h3>Productos</h3>
                <p>16</p>
            </div>
        </div>

        <!-- Segunda fila de estadísticas -->
        <div class="resumen">
            <div class="tarjeta-resumen">
                <i class="fa fa-shopping-cart"></i>
                <h3>Ventas pendientes por cobrar</h3>
                <p>S/. 00</p>
            </div>
            <div class="tarjeta-resumen">
                <i class="fa fa-cash-register"></i>
                <h3>Cobro de ventas</h3>
                <p>S/. 00</p>
            </div>
        </div>

        <!-- Tabla de productos más vendidos -->
        <div class="contenedor-tabla">
            <h2>PRODUCTOS MAS VENDIDOS</h2>
            <span class="top-diez">Top 10</span>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Categori�a</th>
                        <th>Nombre</th>
                        <th>Precio</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>07</td>
                        <td>Cafe</td>
                        <td>Espresso clasico</td>
                        <td>Cafe espresso fuerte, preparado con granos 100% arabica.</td>
                        <td>16</td>
                    </tr>
                    <tr>
                        <td>25</td>
                        <td>Bebidas frías</td>
                        <td>Latte Frappé</td>
                        <td>Café con leche, hielo, azúcar y crema batida, servido bien frío.</td>
                        <td>16</td>
                    </tr>
                    <!-- Añadir más filas según sea necesario -->
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
