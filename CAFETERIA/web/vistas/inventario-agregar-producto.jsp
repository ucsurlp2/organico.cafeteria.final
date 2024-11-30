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
                <h1>Inventario / Agregar nuevo produto</h1>
                <form action="Controlador">
                    
                    Código del producto (Debe mostrar el cod del producto que se podría autogenerar):<br><!-- comment -->
                    <input type="text" name="txtCodProd"><br>
                    Fecha de fabricación: <br>
                    <input type="text" name="txtFechFab"><br>
                    Fecha de vencimiento <br>
                    <input type="text" name="txtFechaVenc"><br>
                    Nombre del producto <br>
                    <input type="text" name="txtNombre"><br>
                    Categoría <br>
                        <select>
                            <option>Sin categoria</option>
                            <option>Categoria1</option>
                            <option>Categoria1</option>
                        </select> <br>                    
                    Tipo de producto <br>
                        <select>
                            <option>Sin tipo</option>
                            <option>Materia prima</option>
                            <option>Producto preparado</option>
                        </select> <br>              
                    Stock disponible<br>
                    <input type="text" name="txtStockDisp"><br>
                    Precio unitario<br>
                    <input type="text" name="txtStockDisp"><br>
                    Valor de inventario de producto<br>
                    <input type="text" name="txtStockDisp"><br>
                    Nombre del proveedor <br>
                        <select>
                            <option>Sin proveedor</option>
                            <option>Proveedor1</option>
                            <option>Proveedor2</option>
                        </select> <br>
                    <!-- Botón -->
                    <input type="submit" name ="accion" value="agregar"
                </form>
            </div>
            <h2>Debajo de esto mostrar el producto para editar</h2>
            
            

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