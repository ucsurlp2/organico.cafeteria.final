<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nueva categor�a - Org�nico Cafeter�a</title>
    <link rel="stylesheet" href="../css/barra_lateral.css">
    <link rel="stylesheet" href="../css/nueva_cat.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
    <div class="barra-lateral">
        <div class="top">
            <div class="logo">
                <i class="bx bxs-coffee-alt"></i>
                <span style="font-weight: 600;">Org�nico Cafeter�a</span>
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
                    <span class="nav-item">Configuraci�n</span>
                </a>
                <span class="tooltip">Configuraci�n</span>
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
            <h1>Agregar Nueva Categor�a</h1>
        </div>
        <!--AQUI VA EL CODIGO DE LA PARTE DERECHA-->
        <div class="flex">
            <!-- Fila 1 -->
            <div class="flex-item">
                <label>C�digo de la categor�a</label>
                <input type="text" placeholder="35" readonly>
            </div>
            <div class="flex-item">
                <label>Nombre de la categor�a</label>
                <input type="text" placeholder="Nombre de producto">
            </div>
        </div>
            <!-- Fila 2 -->
        <div class="descripcion full-width">
            <label>Descripci�n</label>
            <textarea placeholder="Descripci�n del producto"></textarea>
        </div>
        <div class="actions">
            <button class="add">Agregar categor�a</button>
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