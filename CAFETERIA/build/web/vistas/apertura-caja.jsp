<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Apertura y Cierre de Caja - Orgánico Cafetería</title>
    <link rel="stylesheet" href="../css/barra_lateral.css">
    <link rel="stylesheet" href="../css/apertura-cierre.css"> <!-- Archivo CSS específico -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
    <!-- Barra lateral reutilizando el mismo diseño -->
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

    <!-- Contenido principal: Apertura y cierre de caja -->
    <div class="contenido-principal">
        <h1>Apertura y Cierre de Caja</h1>

        <!-- Sección de Apertura -->
        <div class="contenedor-formularios">
            <div class="formulario-caja">
                <h2>Apertura de caja</h2>
                <form action="procesar_apertura.html" method="get">
                    <label for="monto-apertura">Monto de apertura</label>
                    <input type="number" id="monto-apertura" name="monto-apertura" required>
                    <label for="descripcion-apertura">Descripción</label>
                    <textarea id="descripcion-apertura" name="descripcion-apertura" rows="5" required></textarea>
                    <button type="submit" class="btn registrar">Registrar Apertura</button>
                </form>
            </div>

            <!-- Sección de Cierre -->
            <div class="formulario-caja">
                <h2>Cierre de caja</h2>
                <form action="procesar_cierre.html" method="get">
                    <label for="monto-cierre">Monto de cierre</label>
                    <input type="number" id="monto-cierre" name="monto-cierre" required>
                    <label for="descripcion-cierre">Descripción</label>
                    <textarea id="descripcion-cierre" name="descripcion-cierre" rows="5" required></textarea>
                    <button type="submit" class="btn registrar-cierre" disabled>Registrar Cierre</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
