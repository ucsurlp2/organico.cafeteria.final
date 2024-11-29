<%@page import="java.util.*"%>
<%@page import="Modelo.Producto"%>
<%@page import="ModeloDAO.ProductoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Config.Conexion"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Registrar Venta - Orgánico Cafeteria</title>
    <link rel="stylesheet" href="../css/barra_lateral.css">
    <link rel="stylesheet" href="../css/nueva_venta.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>

<body>
    <!--Barra Lateral-->
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
                <a href="principal.jsp">
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

    <!--Contenido principal-->
    <div class="main-content">
        <div class="header">
            <h1>VENTA / REGISTRAR NUEVA VENTA</h1>
        </div>
        <div class="grid-container">
            <div class="izquierda">
                <div>
                    <div class="categoria-display">
                        <h3>Categorias</h3>
                        <div class="grupo-c">
                            <!-- Control buttons -->
                            <div id="contenedor-btn">
                                <button class="btn " onclick="mostrarTabla()"> Todo</button>
                                <button class="btn" onclick="filterSelection('cars')"> Bebidas frías</button>
                                <button class="btn" onclick="filterSelection('animals')"> Animals</button>
                                <button class="btn" onclick="filterSelection('fruits')"> Fruits</button>
                                <button class="btn" onclick="filterSelection('colors')"> Colors</button>
                            </div>
                        </div>
                    </div>                   
                </div>

                <%
                    Connection cn = null;
                    Statement st = null;
                    ResultSet rs = null;

                %>
                <div>
                    <div class="lista-productos">
                        <h3>Lista de Productos</h3>
                        <div class="barra-busqueda">
                            <form action="">
                                <i class="fa fa-search"></i>
                                <input type="text" placeholder="Buscar productos...">
                            </form>
                        </div>
                        <div class="tabla-body" id="tabla-productos">
                            <table class="tableB">
                                <thead>
                                    <tr>
                                        <th>ID<span class="icon-arrow">&UpArrow;</span></th>
                                        <th>Producto<span class="icon-arrow">&UpArrow;</span></th>
                                        <th>Precio<span class="icon-arrow">&UpArrow;</span></th>
                                        <th style="width: 40px">Opciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%                                        
                                        ProductoDAO dao = new ProductoDAO();
                                        List<Producto> list = dao.listar();
                                        Iterator<Producto> iter = list.iterator();
                                        while (iter.hasNext()) {
                                            Producto pro = iter.next();
                                    %>
                                    <tr class="align-middle">
                                        <th scope="row"><%= pro.getId() %></td>
                                        <td><%= pro.getNombre() %></td>
                                        <td><%= pro.getPrecio() %></td>
                                        <td><a>Añadir</a></td>
                                    </tr>
                                    <%}%>
                                </tbody>
                            </table>
                        </div> <!-- /.card-body -->
                    </div>
                </div>
            </div>
            <div class="derecha">
                <div class="tabla-body2" id="tabla-productos2">
                    <table class="tableP">
                    <thead>
                        <tr>
                            <th style="width: 10px">ID</th>
                            <th>Producto</th>
                            <th>Precio</th>
                            <th style="width: 40px">Opciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            while (iter.hasNext()) {
                                Producto pro = iter.next();
                        %>
                        <tr class="align-middle">
                            <th scope="row"><%= pro.getId()%></td>
                            <td><%= pro.getNombre()%></td>
                            <td><%= pro.getPrecio()%></td>
                            <td><a>Añadir</a></td>
                        </tr>
                        <%}%>
                    </tbody>
                </table>
                </div>
                <div >
                    <form class="form-nventa">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Tipo de Comprobante</label>
                            <select>
                                <option></option>
                                <option>Factura</option>
                                <option>Boleta</option>
                            </select>
                        </div>
                        <div class="col-md-6" style="margin-top: 15px">
                            <label>Cliente</label>
                            <input type="text" value="" >
                        </div>
                    </div>
                    
                        <div class="col-md-6">
                            <label>Metodo de Pago</label>
                            <select>
                                <option></option>
                                <option>Efectivo</option>
                                <option>Tarjeta</option>
                            </select> 
                        </div>

                        <label>Agregar Comentarios</label>
                        <textarea class="form-control" rows="3" placeholder="Enter ..."></textarea>
                    </form>
                </div>
                    
                <div class="acciones-nventa">
                    <button class="boton cancelar-orden" >Cancelar Orden</button>
                    <button class="boton finalizar-orden" onclick="location.href='nueva-venta-2.jsp'">Finalizar Orden</button>
                </div>
            </div>
        </div>
    </div>
</body>

<script>
    function mostrarTabla() {
        // Obtener el elemento de la tabla por su id
        const tabla = document.getElementById('tabla-productos');
        // Cambiar el estilo a 'block' para hacerla visible
        tabla.style.display = 'block';
    }
</script>

 <script>
        // Tu script original para la barra lateral
        let btn = document.querySelector('#btn');
        let sidebar = document.querySelector('.barra-lateral');

        btn.onclick = function () {
            sidebar.classList.toggle('active');
        };

        // Obtener el modal y el botón de cerrar
    var modal = document.getElementById("modal");
    var closeBtn = document.querySelector(".close");

    // Abrir el modal cuando se haga clic en "Editar"
    document.querySelector(".editar").addEventListener("click", function(event) {
        event.preventDefault(); // Evita que se siga el enlace
        modal.style.display = "flex"; // Mostrar el modal
    });

    // Cerrar el modal cuando se haga clic en el botón de cerrar
    closeBtn.addEventListener("click", function() {
        modal.style.display = "none"; // Ocultar el modal
    });

    // Cerrar el modal si se hace clic fuera de él
    window.addEventListener("click", function(event) {
        if (event.target === modal) {
            modal.style.display = "none"; // Ocultar el modal si se hace clic fuera de él
        }
    });
    </script>
<script>    
    table_headings.forEach((head, i) => {
        let sort_asc = true;
        head.onclick = () => {
            table_headings.forEach(head => head.classList.remove('active'));
            head.classList.add('active');

            document.querySelectorAll('td').forEach(td => td.classList.remove('active'));
            table_rows.forEach(row => {
                row.querySelectorAll('td')[i].classList.add('active');
            });

            head.classList.toggle('asc', sort_asc);
            sort_asc = head.classList.contains('asc') ? false : true;

            sortTable(i, sort_asc);
        };
    });


    function sortTable(column, sort_asc) {
        [...table_rows].sort((a, b) => {
            let first_row = a.querySelectorAll('td')[column].textContent.toLowerCase(),
                second_row = b.querySelectorAll('td')[column].textContent.toLowerCase();

            return sort_asc ? (first_row < second_row ? 1 : -1) : (first_row < second_row ? -1 : 1);
        })
            .map(sorted_row => document.querySelector('tbody').appendChild(sorted_row));
    }
</script>
</html>
