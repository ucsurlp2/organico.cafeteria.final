<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nuevo compra - Orgánico Cafetería</title>
    <link rel="stylesheet" href="../css/barra_lateral.css">
    <link rel="stylesheet" href="../css/nueva_compra.css">
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
    <!--CONTENIDO PRINCIPAL-->
    <div class="main-content">
        <div class="header">
            <h1>Agregar Nueva Compra</h1>
        </div>
        <!--AQUI VA EL CODIGO DE LA PARTE DERECHA-->
        <div class="grid">
            <!-- Fila 1 -->
            <div>
                <label>Código de producto</label>
                <input type="text" placeholder="Ingrese codigo">
            </div>
            <div>
                <label>Fecha de compra</label>
                <input type="date">
            </div>
            <div>
                <label>Codigo de compra</label>
                <input type="text" placeholder="-">
            </div>

            <!-- Fila 2 -->
            <div>
                <label>Nombre de Producto</label>
                <input type="text" placeholder="Nombre de producto">
            </div>
            <div>
                <label>Existencias actuales</label>
                <input type="number" placeholder="00">
            </div>
            <div>
                <label>Nombre del proveedor</label>
                <select>
                    <option>Selecciona una categoría</option>
                </select>
            </div>

            <!-- Fila 3 -->
            <div>
                <label>Cantidad*</label>
                <input type="number" placeholder="0" required>
            </div>
            <div>
                <label>Precio unitario*</label>
                <input type="number" placeholder="0" required>
            </div>
            <div>
                <label>Costo total</label>
                <input type="number" placeholder="0" readonly>
            </div>

            <!-- Descripción -->
            <div class="descripcion full-width">
                <label>Descripción</label>
                <textarea placeholder="Descripción de la compra"></textarea>
            </div>
        </div>
        <div class="actions">
            <button class="add">Agregar compra</button>
            <button class="update">Actualizar</button>
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