<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ventas - Orgánico Cafeteria</title>
    <link rel="stylesheet" href="../css/barra_lateral.css">
    <link rel="stylesheet" href="../css/ventas.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
    <div class="barra-lateral">
        <div class="top">
            <div class="logo">
                <i class="bx bxs-coffee-alt"></i>
                <span style="font-weight: 600;">Orgánico Cafetería</span>
            </div>
            <i class="bx bx-menu" id="btn"></i>
        </div>
        <ul>
            <li>
                <a href="VentasDia">
                    <i class="bx bx-grid-alt"></i>
                    <span class="nav-item">Inicio</span>
                </a>
                <span class="tooltip">Inicio</span>
            </li>
            <li>
                <a href="ventas.jsp">
                    <i class="bx bxs-store-alt"></i>
                    <span class="nav-item">Ventas</span>
                </a>
                <span class="tooltip">Ventas</span>
            </li>
            <li>
                <a href="inventario.jsp">
                    <i class="bx bx-basket"></i>
                    <span class="nav-item">Inventario</span>
                </a>
                <span class="tooltip">Inventario</span>
            </li>
            <li>
                <a href="reportes.jsp">
                    <i class="bx bxs-report"></i>
                    <span class="nav-item">Reportes</span>
                </a>
                <span class="tooltip">Reportes</span>
            </li>
            <li>
                <a href="config.jsp">
                    <i class="bx bx-cog"></i>
                    <span class="nav-item">Configuración</span>
                </a>
                <span class="tooltip">Configuración</span>
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
            <button class="boton salir">
                <i class="bx bx-log-out"></i>
                <span class="boton-texto">Salir</span>
            </button>
        </div>
    </div>
    <div class="main-content">
        <div class="header">
            <h1>Ventas</h1>
        </div>
        <div class="encabezado">
            <h2>Lista de ventas</h2>
            <button class="boton verde">Mostrar las ultimas 5 ventas</button>
        </div>
        <div class="lista-ventas">
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Cliente</th>
                        <th>Empleado</th>
                        <th>Comentario</th>
                        <th>Fecha</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>a</td>
                        <td>b</td>
                        <td>c</td>
                        <td>d</td>
                        <td>e</td>
                        <td>f</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!-- Opciones de acci?n -->
        <div class="acciones-ventas">
            <form action="editar-carta.jsp" method="get">
                <button class="boton editar-carta">Editar Carta</button>
            </form>
            <form action="nueva-venta.jsp" method="get">
                <button class="boton nueva-venta">Crear nueva venta</button>
            </form>
            <form action="ver-total-ventas.jsp" method="get">
                <button class="boton total-ventas">Ver total de ventas</button>
            </form>
        </div>
    </div>
</body>
<script>
    let btn=document.querySelector('#btn');
    let sidebar=document.querySelector('.barra-lateral');

    btn.onclick=function(){
        sidebar.classList.toggle('active');
    };
</script>
</html>