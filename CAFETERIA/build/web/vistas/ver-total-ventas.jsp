<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inventario - Orgánico Cafetería</title>
    <link rel="stylesheet" href="barra_lateral.css">
    <link rel="stylesheet" href="ventas.css">
    <link rel="stylesheet" href="ver-total-ventas.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
    <!-- Barra lateral fija con el menú principal -->
    <div class="barra-lateral">
        <div class="top">
            <div class="logo">
                <i class="bx bxs-coffee-alt"></i>
                <span style="font-weight: 600;">Organico Cafeteria</span>
            </div>
            <i class="bx bx-menu" id="btn"></i>
        </div>
        <ul>
            <li>
                <a href="Controlador?accion=listarpr">
                    <i class="bx bx-grid-alt"></i>
                    <span class="nav-item">Inicio</span>
                </a>
                <span class="tooltip">Inicio</span>
            </li>
            <li>
                <a href="Controlador?accion=listar">
                    <i class="bx bxs-store-alt"></i>
                    <span class="nav-item">Ventas</span>
                </a>
                <span class="tooltip">Ventas</span>
            </li>
            <li>
                <a href="Controlador?accion=listarinv">
                    <i class="bx bx-basket"></i>
                    <span class="nav-item">Inventario</span>
                </a>
                <span class="tooltip">Inventario</span>
            </li>
            <li>
                <a href="Controlador?accion=listarrep">
                    <i class="bx bxs-report"></i>
                    <span class="nav-item">Reportes</span>
                </a>
                <span class="tooltip">Reportes</span>
            </li>
            <li>
                <a href="Controlador?accion=listarusuario">
                    <i class="bx bx-cog"></i>
                    <span class="nav-item">Configuracion</span>
                </a>
                <span class="tooltip">Configuracion</span>
            </li>
        </ul>
        <!-- Botones de acciones ubicados al final -->
        <div class="acciones">
            <form action="apertura-caja.jsp" method="get">
                <button class="boton apertura-caja">
                    <i class="bx bx-wallet"></i>
                    <span class="boton-texto">Apertura y cierre de caja</span>
                </button>
            </form>
            <form action="Validar" method="POST">
                <button type="submit" class="boton salir" name="accion" value="Salir">
                    <i class="bx bx-log-out"></i>
                    <span class="boton-texto">Salir</span>
                </button>
            </form>
            
        </div>
    </div>

    <!-- Contenido principal -->
    <div class="contenido-principal">
        <h1>VENTA / VER TOTAL VENTAS</h1>
        <div class="encabezado">
            <h2>Lista de ventas</h2>
            <button class="boton verde">Mostrar las últimas 5 ventas</button>
        </div>
        <div class="campo-lupa">
            <i class="fa fa-search"></i>
            <input type="text" placeholder="Buscar ">
        </div>
        <div class="lista-ventas">
            <table>
                <thead>
                    <tr>
                        <th>Cod</th>
                        <th>Fecha</th>
                        <th>Comentarios</th>
                        <th>Método de Pago</th>
                        <th>Productos</th>
                        <th>N° Items</th>
                        <th>Monto cancelado</th>
                        <th>ACCIONES</th>
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
                        <td>    </td>
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
        <!-- Cuadros informativos inferiores -->
        <div class="resumen">
            <div class="tarjeta-resumen">
                <h3>Cobranza en efectivo</h3>
                <p>S/. 00</p>
            </div>
            <div class="tarjeta-resumen">
                <h3>Cobranza con tarjetas/Billeteras digitales</h3>
                <p>S/. 00</p>
            </div>
            <div class="tarjeta-resumen">
                <h3>Total Ventas día</h3>
                <p>S/. 00</p>
            </div>
        </div>
    </div>
</body>
</html>
