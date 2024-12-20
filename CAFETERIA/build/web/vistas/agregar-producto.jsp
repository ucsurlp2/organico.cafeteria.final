<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nuevo producto - Org�nico Cafeter�a</title>
    <link rel="stylesheet" href="../css/barra_lateral.css">
    <link rel="stylesheet" href="../css/nuevo_producto.css">
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
            <h1>Agregar Nuevo Producto</h1>
        </div>
        <!--AQUI VA EL CODIGO DE LA PARTE DERECHA-->
        <div class="grid">
            <!-- Fila 1 -->
            <div>
                <label>C�digo de producto</label>
                <input type="text" placeholder="35" readonly>
            </div>
            <div>
                <label>Fecha de fabricaci�n</label>
                <input type="date">
            </div>
            <div>
                <label>Fecha de vencimiento</label>
                <input type="date">
            </div>

            <!-- Fila 2 -->
            <div>
                <label>Nombre de Producto</label>
                <input type="text" placeholder="Nombre de producto">
            </div>
            <div>
                <label>Nombre de la categor�a</label>
                <select>
                    <option>Selecciona una categor�a</option>
                </select>
            </div>

            <!-- Fila 3 -->
            <div>
                <label>Stock disponible*</label>
                <input type="number" placeholder="0" required>
            </div>
            <div>
                <label>Precio unitario*</label>
                <input type="number" placeholder="0" required>
            </div>
            <div>
                <label>Valor de inventario</label>
                <input type="text" placeholder="0" readonly>
            </div>
            <div>
                <label>Nombre del proveedor</label>
                <select>
                    <option>PANADER�AS UNIDAD S.A</option>
                </select>
            </div>

            <!-- Descripci�n -->
            <div class="descripcion full-width">
                <label>Descripci�n</label>
                <textarea placeholder="Descripci�n del producto"></textarea>
            </div>
        </div>
        <div class="actions">
            <button class="add">Agregar producto</button>
            <button class="clear">Limpiar</button>
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