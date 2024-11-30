<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.Producto"%>
<%@page import="ModeloDAO.ProductoDAO"%>
<%@page import="Config.Conexion"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Registrar Venta - Orgánico Cafeteria</title>
    <link rel="stylesheet" href="../css/barra_lateral.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/nueva-venta.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="adminlte.min.css">
    </head>
    <body>
        <div>
        <%
            List<Producto> productos = (List<Producto>)request.getAttribute("productos");
            if (productos != null && !productos.isEmpty()) {
        %>
        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Producto</th>
                    <th>Precio</th>
                </tr>
            </thead>
            <tbody>
                <% for (Producto producto : productos) {%>
                <tr>
                    <td><%= producto.getCod_prod()%></td>
                    <td><%= producto.getNombre()%></td>
                    <td><%= producto.getPrecio()%></td>
                    <td><a>Añadir</a></td>
                </tr>
                <% } %>
            </tbody>
        </table>
        <%
        } else {
        %>
        <p>No se encontraron productos.</p>
        <%
            }
        %>
        </div>
    </body>
</html>