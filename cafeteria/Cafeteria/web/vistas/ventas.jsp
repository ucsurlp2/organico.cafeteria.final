<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ventas - Organico Cafeteria</title>
    <link rel="stylesheet" href="../css/barra_lateral.css">
    <link rel="stylesheet" href="../css/ventas.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
    <!-- Barra lateral fija con el menÃº principal -->
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
        <a href="#" class="opcion-menu activo">
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
        <h1>VENTA</h1>
        <div class="encabezado">
            <h2>Lista de ventas</h2>
            <button class="boton verde">Mostrar las últimas 5 ventas</button>
        </div>
        <div class="lista-ventas">
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Cliente</th>
                        <th>Cajero</th>
                        <th>Total Pagado</th>
                        <th>Estado</th>
                        <th>Comentarios</th>
                        <th>Fecha de venta</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>34</td>
                        <td>Raul</td>
                        <td>Paolo Crisóstomo</td>
                        <td>32.00</td>
                        <td>PAGADO</td>
                        <td>Sin comentarios</td>
                        <td>15/11/2024</td>
                    </tr>
                    <tr>
                        <td>35</td>
                        <td>Miguel</td>
                        <td>Paolo Crisóstomo</td>
                        <td>32.00</td>
                        <td>PAGADO</td>
                        <td>El capuccino con leche...</td>
                        <td>15/11/2024</td>
                    </tr>
                    <!-- Agregar más filas según sea necesario -->
                </tbody>
            </table>
        </div>
        <!-- Opciones de acción -->
        <div class="acciones-inventario">
            <form action="editar-carta.html" method="get">
                <button class="boton editar-carta">Editar Carta</button>
            </form>
            <form action="nueva-venta.html" method="get">
                <button class="boton agregar-producto">Crear nueva venta</button>
            </form>
            <form action="total-ventas.html" method="get">
                <button class="boton registrar-compra">Ver total de ventas</button>
            </form>
        </div>
    </div>
</body>
</html>
