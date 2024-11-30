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
        <link rel="stylesheet" href="../css/nueva-venta.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    </head>

    <body>
        <!--Barra Lateral-->
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

        <!--Contenido principal-->
        <div class="main-content">
            <div class="header">
                <h1>VENTA / REGISTRAR NUEVA VENTA</h1>
            </div>
            <div class="grid-container">
                <div class="izquierda">
                    <div class="categoria-display">
                        <h3>Categorias</h3>
                        <!-- Control buttons -->
                        <div id="contenedor-btn" class="contenedor-btn">
                            <button class="botonC" href="productoControlador?btnselec=all_p"> Todo</button>
                            <button class="botonC" href="productoControlador?btnselec=cat&idc=1"> Bebidas Calientes</button>
                            <button class="botonC" href="productoControlador?btnselec=cat&idc=2"> Postres</button>
                            <button class="botonC" href="productoControlador?btnselec=cat&idc=4"> Bedidas Frías</button>
                            <button class="botonC" href="productoControlador?btnselec=cat&idc=5"> Jugos</button>
                            <button class="botonC" href="productoControlador?btnselec=cat&idc=6"> Sandwiches</button>
                            <button class="botonC" href="productoControlador?btnselec=cat&idc=7"> Hamburguesas</button>
                        </div>
                    </div>                   
                    <div>
                        <div class="lista-productos">
                            <div class="t_header">
                                <div>
                                    <h3>Lista de Productos</h3>
                                </div>
                                <div class="barra-busqueda">
                                    <form action="">
                                        <i class="bx bx-search-alt"></i>
                                        <input type="text" placeholder="Buscar productos...">
                                    </form>
                                </div>
                            </div>
                            <div class="tabla-body" id="tabla-productos">
                                <%
                                Connection con;
                                String url = "jdbc:mysql://localhost:3306/cafeteria";
                                String user = "root";
                                String pass = "";
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection(url, user, pass);
                                PreparedStatement ps;
                                ResultSet rs;
                                ps = con.prepareStatement("select * from producto");
                                rs = ps.executeQuery();
                            %>
                            <table class="table">
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
                                        while (rs.next()) {
                                    %>
                                    <tr class="align-middle">
                                        <td><%=rs.getInt("Cod_Producto")%></td>
                                        <td><%=rs.getString("Nombre")%></td>
                                        <td><%=rs.getFloat("Precio")%></td>
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
                                <tr class="align-middle">
                                    <th scope="row"></td>
                                    <td></td>
                                    <td></td>
                                    <td style="width:120px"> <input type="number" style="width: 40px"><a style="font-size: 12px">  Eliminar</a></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div >
                        <div class="c_header">
                            <h3>Detalles de Cliente</h3>
                        </div>
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
                                <div class="col-md-6" >
                                    <label>Cliente</label>
                                    <input type="text" value="" >
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Metodo de Pago</label>
                                    <select>
                                        <option></option>
                                        <option>Efectivo</option>
                                        <option>Tarjeta</option>
                                    </select> 
                                </div>
                                <div class="comen">
                                    <label>Agregar Comentarios:</label>
                                    <textarea class="form-control"></textarea>
                                </div>
                            </div>
                        </form>
                    </div>

                    <div class="acciones-nventa">
                        <button class="boton cancelar-orden" >Cancelar Orden</button>
                        <button class="boton finalizar-orden" onclick="location.href = 'nueva-venta-2.jsp'">Finalizar Orden</button>
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
        document.querySelector(".editar").addEventListener("click", function (event) {
            event.preventDefault(); // Evita que se siga el enlace
            modal.style.display = "flex"; // Mostrar el modal
        });

        // Cerrar el modal cuando se haga clic en el botón de cerrar
        closeBtn.addEventListener("click", function () {
            modal.style.display = "none"; // Ocultar el modal
        });

        // Cerrar el modal si se hace clic fuera de él
        window.addEventListener("click", function (event) {
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
