<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Configuración</title>
    <link rel="stylesheet" href="config.css">
    <link rel="stylesheet" href="barra_lateral.css">
    <link rel="stylesheet" href="panel_principal.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
    <!-- Barra lateral fija con el menú principal -->
    <div class="barra-lateral">
        <h2>ORGÁNICO CAFETERÍA</h2>
        <!-- Opciones del menú -->
        <a href="index.html" class="opcion-menu">
            <i class="fa fa-home"></i>
            <span>Inicio</span>
        </a>
        <a href="ventas.html" class="opcion-menu">
            <i class="fa fa-shopping-cart"></i>
            <span>Venta</span>
        </a>
        <a href="inventario.html" class="opcion-menu">
            <i class="fa fa-boxes"></i>
            <span>Inventario</span>
        </a>
        <a href="#" class="opcion-menu">
            <i class="fa fa-chart-bar"></i>
            <span>Reportes</span>
        </a>
        <a href="config.html" class="opcion-menu">
            <i class="fa fa-cogs"></i>
            <span>Configuración</span>
        </a>

        <!-- Botones de acciones ubicados al final -->
        <div class="acciones">
            <form action="apertura-caja.html" method="get">
                <button class="boton apertura-caja">Apertura y cierre de caja</button>
            </form>
            <button class="boton salir"><i class="fa fa-sign-out-alt"></i>Salir</button>
        </div>
    </div>

    <div class="contenido-principal">
            <h1>Configuración</h1>

            <section class="mi-usuario">
                <h2>Mi Usuario</h2>
                <form>
                    <label>Nombres completos</label>
                    <input type="text" value="Roberto Paolo">
                    
                    <label>Apellidos</label>
                    <input type="text" value="Crisóstomo Berrocal">

                    <label>Número de documento de identidad</label>
                    <input type="text" value="71776762">

                    <label>Código de empleado</label>
                    <input type="text" value="01">

                    <label>Teléfono</label>
                    <input type="text" value="934 401 034">

                    <label>Editar permisos</label>
                    <select>
                        <option>Administrador</option>
                        <option>Cajero</option>
                        <option>Barista</option>
                    </select>
                </form>
            </section>
            <section class="usuarios">
                <h2>Usuarios</h2>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Rol</th>
                            <th>Último acceso</th>
                            <th>Editar</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Fredy Nolasco</td>
                            <td>Administrador</td>
                            <td>15/11/2024 | 21:53</td>
                            <td><button>Editar</button></td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Paolo Crisóstomo</td>
                            <td>Cajero</td>
                            <td>15/11/2024 | 10:00</td>
                            <td><button>Editar</button></td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>María Casasani</td>
                            <td>Barista</td>
                            <td>12/11/2024 | 12:00</td>
                            <td><button>Editar</button></td>
                        </tr>
                    </tbody>
                </table>
            </section>

            <section class="aperturas-cierres">
                <h2>Aperturas y cierres de caja</h2>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Usuario Apertura</th>
                            <th>Monto Apertura</th>
                            <th>Monto Cierre</th>
                            <th>Comentarios</th>
                            <th>Usuario Cierre</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>4</td>
                            <td>Fredy Nolasco</td>
                            <td>200.00</td>
                            <td>493.50</td>
                            <td></td>
                            <td>Paolo Crisóstomo</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Fredy Nolasco</td>
                            <td>200.00</td>
                            <td>493.50</td>
                            <td></td>
                            <td>Paolo Crisóstomo</td>
                        </tr>
                    </tbody>
                </table>
            </section>
    </div>
</body>
</html>
