<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Registrar Venta - Orgánico Cafeteria</title>
    <link rel="stylesheet" href="estilos.css">
    <link rel="stylesheet" href="nueva-venta.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="adminlte.min.css">
</head>

<body class="hold-transition sidebar-mini layout-fixed">
    <!--Barra Lateral-->
    <div class="barra-lateral">
        <h2>ORGÁNICO CAFETERÍA</h2>
        <!-- Opciones del menú -->
        <a href="principal.jsp" class="opcion-menu">
            <i class="fa fa-home"></i>
            <span>Inicio</span>
        </a>
        <a href="ventas.jsp" class="opcion-menu">
            <i class="fa fa-shopping-cart"></i>
            <span>Venta</span>
        </a>
        <a href="inventario.jsp" class="opcion-menu activo">
            <i class="fa fa-boxes"></i>
            <span>Inventario</span>
        </a>
        <a href="reportes.jsp" class="opcion-menu">
            <i class="fa fa-chart-bar"></i>
            <span>Reportes</span>
        </a>
        <a href="config.jsp" class="opcion-menu">
            <i class="fa fa-cogs"></i>
            <span>Configuración</span>
        </a>

        <!-- Botones de acciones ubicados al final -->
        <div class="acciones">
            <form action="apertura-caja.jsp" method="get">
                <button class="boton apertura-caja">Apertura y cierre de caja</button>
            </form>
            <button class="boton salir"><i class="fa fa-sign-out-alt"></i>Salir</button>
        </div>
    </div>

    <!--Contenido principal-->
    <div class="contenido-principal">
        <h1>VENTA / REGISTRAR NUEVA VENTA</h1>

        <div class="grid-container">
            <div class="grid-left">

                <!-- Categorias -->
                <div>
                    <div class="categoria-display">
                        <h3>Categorias</h3>
                        <div class="grupo-c">
                            <!-- Control buttons -->
                            <div id="contenedor-btn">
                                <button class="btn active" onclick="filterSelection('all')"> Show
                                    all</button>
                                <button class="btn" onclick="filterSelection('cars')"> Cars</button>
                                <button class="btn" onclick="filterSelection('animals')"> Animals</button>
                                <button class="btn" onclick="filterSelection('fruits')"> Fruits</button>
                                <button class="btn" onclick="filterSelection('colors')"> Colors</button>
                            </div>
                        </div>
                    </div>                   
                </div>

                <!-- Lista de productos -->
                <div>
                    <div class="lista-productos">
                        <h3>Lista de Productos</h3>
                        <div class="barra-busqueda">
                            <form action="">
                                <i class="fa fa-search"></i>
                                <input type="text" placeholder="Buscar productos...">
                            </form>
                        </div>
                        <div class="card-body">
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
                                    <tr class="align-middle">
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr class="align-middle">
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr class="align-middle">
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr class="align-middle">
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div> <!-- /.card-body -->
                    </div>
                </div>
            </div>

            <div class="grid-rigth">
                <div>
                    <h2>Lista de Compras</h2>
                    <div class="card-body">
                        <table class="table ">
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
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="align-middle">
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="align-middle">
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="align-middle">
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                    </div> <!-- /.card-body -->
                </div>
                <div >
                    <div class="row">
                        <div class="col-md-6">
                            <label>Tipo de Comprobante</label>
                            <select>
                                <option>Efectivo</option>
                                <option>A</option>
                                <option>H</option>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label>Número de documento</label>
                            <input type="text" value="" disabled>
                        </div>
                    </div>
                    <form class="form-nventa">
                        <label>Metodo de Pago</label>
                        <select>
                            <option>Efectivo</option>
                            <option>A</option>
                            <option>H</option>
                        </select>

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
    </div>s
</body>

</html>
