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
        <h2>ORGÁNICO CAFETERÍA</h2>
        <a href="index.html" class="opcion-menu">
            <i class="fa fa-home"></i>
            <span>Inicio</span>
        </a>
        <a href="venta.html" class="opcion-menu">
            <i class="fa fa-shopping-cart"></i>
            <span>Venta</span>
        </a>
        <a href="inventario.html" class="opcion-menu">
            <i class="fa fa-boxes"></i>
            <span>Inventario</span>
        </a>
        <a href="reportes.html" class="opcion-menu">
            <i class="fa fa-chart-bar"></i>
            <span>Reportes</span>
        </a>
        <a href="config.html" class="opcion-menu">
            <i class="fa fa-cogs"></i>
            <span>Configuración</span>
        </a>
        <div class="acciones">
            <form action="apertura-cierre.html" method="get">
                <button class="btn caja">Apertura y cierre de caja</button>
            </form>
            <button class="btn salir"><i class="fa fa-sign-out-alt"></i>Salir</button>
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
