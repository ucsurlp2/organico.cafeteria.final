<%@page import="Modelo.Inventario"%>
<%@page import="java.util.*"%>
<%@page import="ModeloDAO.InventarioDAO"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inventario - Org?nico Cafeteria</title>
    <link rel="stylesheet" href="css/barra_lateral.css">
    <link rel="stylesheet" href="css/editar-inventario.css">
    <link rel="stylesheet" href="css/inventario.css">
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
    
    <div class="main-content">
        <div class="header">
            <h1>Inventario</h1>
        </div>
    <!-- Contenido principal -->
        <!-- Resumen de inventario -->
        <div class="resumen-inventario">
            <div class="tarjeta-inventario">
                <i class="fa fa-dollar-sign"></i>
                <h2><%= request.getAttribute("valor_invent") != null ? request.getAttribute("valor_invent") : 0 %></h2>
                <p>Valor de inventario</p>
            </div>
            <div class="tarjeta-inventario">
                <i class="fa fa-box"></i>
                <h2><%= request.getAttribute("stock_invent") != null ? request.getAttribute("stock_invent") : 0 %></h2>
                <p>Articulos de inventario</p>
            </div>
            <div class="tarjeta-inventario">
                <i class="fa fa-user"></i>
                <h2><%= request.getAttribute("cant_prov") != null ? request.getAttribute("cant_prov") : 0 %></h2>
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
                        <th>Categoria</th>
                        <th>Nombre</th>
                        <th>Descripcion</th>
                        <th>Stock</th>
                        <th>Precio</th>
                        <th>Fecha fabricación</th>
                        <th>Fecha expiración</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        InventarioDAO dao = new InventarioDAO();
                        List<Inventario> listinv = dao.listarinv();
                        for (Inventario inv : listinv) {
                    %>
                    <tr>
                        <td><%=inv.getId_produc()%></td>
                        <td><%=inv.getCat_produc()%></td>
                        <td><%=inv.getNom_produc()%></td>
                        <td><%=inv.getDescrip_produc()%></td>
                        <td><%=inv.getStock_produc()%></td>
                        <td><%=inv.getPrecio()%></td>
                        <td><%=inv.getFechafab()%></td>
                        <td><%=inv.getFechaexp()%></td>
                        <td>
                            <a href="#" class="editar">Editar</a> | <a href="#" class="eliminar">Eliminar</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>

        <!-- Opciones de acci?n -->
        <div class="acciones-inventario">
            <form action="Controlador?accion=agregarnueprod" method="GET">
                <button class="boton agregar-producto" type="submit" name="accion" value="agregarnueprod"  class="boton editar-carta">Agregar Nuevo Producto</button>
            </form>
            <form action="agregar-cat.jsp" method="get">
                <button class="boton agregar-categoria">Agregar Nueva Categor?a</button>
            </form>
            <form action="agregar-compra.jsp" method="get">
                <button class="boton registrar-compra">Registrar Nueva Compra</button>
            </form>
        </div>
    </div>

    <!-- Modal oculto -->
    <!-- Modal para modificar producto -->
    <div id="modal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <h1>Modificar Producto</h1>
            <form action="Controlador">
                <label for="txtNom">Nombres:</label>
                <input class="form-control" type="text" id="txtNom" name="txtNom">
                <label for="txtProve">Proveedor:</label>
                <input class="form-control" type="text" id="txtProve" name="txtProve">
                <input type="hidden" name="txtId">
                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar">
                <a href="inventario.jsp" class="regresar">Regresar</a>
            </form>
        </div>
    </div>


    <script>
        // Tu script original para la barra lateral
        let btn = document.querySelector('#btn');
        let sidebar = document.querySelector('.barra-lateral');

        btn.onclick = function () {
            sidebar.classList.toggle('active');
        };

        // Obtener el modal y el bot?n de cerrar
    var modal = document.getElementById("modal");
    var closeBtn = document.querySelector(".close");

    // Abrir el modal cuando se haga clic en "Editar"
    document.querySelector(".editar").addEventListener("click", function(event) {
        event.preventDefault(); // Evita que se siga el enlace
        modal.style.display = "flex"; // Mostrar el modal
    });

    // Cerrar el modal cuando se haga clic en el bot?n de cerrar
    closeBtn.addEventListener("click", function() {
        modal.style.display = "none"; // Ocultar el modal
    });

    // Cerrar el modal si se hace clic fuera de ?l
    window.addEventListener("click", function(event) {
        if (event.target === modal) {
            modal.style.display = "none"; // Ocultar el modal si se hace clic fuera de ?l
        }
    });
    </script>

</body>
</html>