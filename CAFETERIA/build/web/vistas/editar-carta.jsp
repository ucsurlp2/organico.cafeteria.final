<%@page import="Modelo.Producto"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.ProductoDAO"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Editar carta - Org?nico Cafeter?a</title>
        <link rel="stylesheet" href="css/barra_lateral.css">
        <link rel="stylesheet" href="css/editar_carta.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    </head>
    <body>
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
        <!--CONTENIDO PRINCIPAL-->
        <div class="main-content">
            <div class="header">
                <h1>Editar Carta</h1>
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
                            <th>Categor?a</th>
                            <th>Nombre</th>
                            <th>Descripci?n</th>
                            <th>Stock disp</th>
                            <th>Precio</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            ProductoDAO proddao = new ProductoDAO();
                            List<Producto> listprod = proddao.listarprod();
                            for (Producto prod : listprod) {
                        %>
                        <tr>
                            <td><%= prod.getCod_prod()%></td>
                            <td><%= prod.getNom_cat()%></td>
                            <td><%= prod.getNombre()%></td>
                            <td><%= prod.getDescripcion()%></td>
                            <td><%= prod.getStock()%></td>
                            <td><%= prod.getPrecio()%></td>
                            <td>
                                <a href="#" class="editar">Editar</a> | <a href="#" class="eliminar">Eliminar</a>
                            </td>
                        </tr>
                        <%}%>
                        <!-- Repite m?s filas seg?n sea necesario -->
                    </tbody>
                </table>
            </div>

            <!-- Opciones de acci?n -->
        </div>
    </body>
    <script>
        let btn = document.querySelector('#btn');
        let sidebar = document.querySelector('.barra-lateral');

        btn.onclick = function () {
            sidebar.classList.toggle('active');
        };
    </script>
</html>