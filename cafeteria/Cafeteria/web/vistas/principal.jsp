<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pagina de Inicio - Organico Cafeteriï¿½a</title>
    <link rel="stylesheet" href="../css/barra_lateral.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/barra_lateral.css">
    <link rel="stylesheet" href="../css/panel_principal.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/panel_principal.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
    <!-- Barra lateral fija con el menÃº principal -->
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
                <a href="principal.html">
                    <i class="bx bx-grid-alt"></i>
                    <span class="nav-item">Inicio</span>
                </a>
                <span class="tooltip">Inicio</span>
            </li>
            <li>
                <a href="ventas.html">
                    <i class="bx bxs-store-alt"></i>
                    <span class="nav-item">Ventas</span>
                </a>
                <span class="tooltip">Ventas</span>
            </li>
            <li>
                <a href="inventario.html">
                    <i class="bx bx-basket"></i>
                    <span class="nav-item">Inventario</span>
                </a>
                <span class="tooltip">Inventario</span>
            </li>
            <li>
                <a href="reportes.html">
                    <i class="bx bxs-report"></i>
                    <span class="nav-item">Reportes</span>
                </a>
                <span class="tooltip">Reportes</span>
            </li>
            <li>
                <a href="config.html">
                    <i class="bx bx-cog"></i>
                    <span class="nav-item">Configuración</span>
                </a>
                <span class="tooltip">Configuración</span>
            </li>
        </ul>
        <!-- Botones de acciones ubicados al final -->
        <div class="acciones">
            <form action="apertura-caja.html" method="get">
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
    
    <!-- Contenido principal -->
    <div class="main-content">
        <div class="header">
            <h1>Inicio</h1>
        </div>
        <!-- Estadísticas resumidas -->
        <div class="resumen">
            <div class="tarjeta-resumen">
                <i class="fa fa-user"></i>
                <h3>Usuarios</h3>
                <%
                    Double numUsuarios = (Double) request.getAttribute("numUsuarios");
                    String error1 = (String) request.getAttribute("error");
                %>
                <% if (error1 != null) { %>
                <p style="color: red;"><%= error1 %></p>
                <% } else { %>
                <p><strong><%= numUsuarios != null ? numUsuarios.intValue() : 0 %></strong></p>
                <% } %>
                
                
            </div>
            <div class="tarjeta-resumen">
                <i class="fa fa-tags"></i>
                <h3>Categorías</h3>               
                <%
                    Double numCategorias = (Double) request.getAttribute("numCategorias");
                    String error2 = (String) request.getAttribute("error");
                %>
                <% if (error2 != null) { %>
                <p style="color: red;"><%= error2 %></p>
                <% } else { %>
                <p><strong><%= numCategorias != null ? numCategorias.intValue() : 0 %></strong></p>
                <% } %>
            </div>
            <div class="tarjeta-resumen">
                <i class="fa fa-box"></i>
                <h3>Productos</h3>
                <%
                    Double numProductos = (Double) request.getAttribute("numProductos");
                    String error3 = (String) request.getAttribute("error");
                %>
                <% if (error3 != null) { %>
                <p style="color: red;"><%= error3 %></p>
                <% } else { %>
                <p><strong><%= numProductos != null ? numProductos.intValue() : 0 %></strong></p>
                <% } %>
            </div>
        </div>
        
        <!-- Segunda fila de estadísticas -->
        <div class="resumen">
            <div class="tarjeta-resumen">
                <i class="fa fa-shopping-cart"></i>
                <h3># de Ventas del día</h3>
                <%
                    Double numVentasTotal = (Double) request.getAttribute("numVentasTotal");
                    String error4 = (String) request.getAttribute("error");
                %>
                <% if (error4 != null) { %>
                    <p style="color: red;"><%= error4 %></p>
                <% } else { %>
                    <p><strong><%= numVentasTotal != null ? numVentasTotal.intValue() : 0 %></strong></p>
                <% } %>
            </div>
            <div class="tarjeta-resumen">
                <i class="fa fa-cash-register"></i>
                <h3>Cobro de ventas</h3>
                <%
                    Double ventasDelDia = (Double) request.getAttribute("ventasDelDia");
                        String error5 = (String) request.getAttribute("error");
                %>
                <% if (error5 != null) { %>
                    <p style="color: red;"><%= error5 %></p>
                <% } else { %>
                    <p><strong>S/. <%= ventasDelDia != null ? ventasDelDia : 0 %></strong></p>
                <% } %>

            </div>
        </div>
        <!-- Tabla de productos más vendidos -->
        <div class="contenedor-tabla">
            <span class="top-diez">Top 10</span>
            <h2>PRODUCTOS MAS VENDIDOS CHETUMARE 2</h2>
            <%
                Connection con;
                String url = "jdbc:mysql://localhost:3306/cafeteria";
                String user = "root";
                String pass = "";
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection(url, user, pass);
                PreparedStatement ps;
                ResultSet rs;
                ps = con.prepareStatement("Select p.*, cp.Descripcion as CatDesc, SUM(dp.Cantidad) as TotalCantidad from producto p inner join categoria_pro cp on p.Cod_CatePro = cp.Cod_CatePro inner join detalle_pedido dp on p.Cod_Producto = dp.Cod_Producto group by p.Cod_Producto, cp.Descripcion, p.Nombre, p.Descripcion order by TotalCantidad desc limit 10;");
                rs = ps.executeQuery();
            %>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Categoria</th>
                        <th>Nombre</th>
                        <th>Descripcion</th>
                        <th>Cantidad</th>
                    </tr>
                </thead>
                <tbody>
                    <%
            while (rs.next()) {
                    %>
                    <tr>
                        <td><%=rs.getInt("Cod_Producto")%></td>
                        <td><%=rs.getString("CatDesc")%></td>
                        <td><%=rs.getString("Nombre")%></td>
                        <td><%=rs.getString("Descripcion")%></td>
                        <td><%=rs.getInt("TotalCantidad")%></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </div>
</body>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const btn = document.querySelector('#btn');
        const sidebar = document.querySelector('.barra-lateral');

        btn.onclick = function() {
            sidebar.classList.toggle('active');
        };
    });
</script>
</html>