<%@page import="Modelo.Principal"%>
<%@page import="java.util.*"%>
<%@page import="ModeloDAO.PrincipalDAO"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Configuraci髇</title>
    <link rel="stylesheet" href="css/config.css">
    <link rel="stylesheet" href="css/barra_lateral.css">
    <link rel="stylesheet" href="css/panel_principal.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
    <!-- Barra lateral fija con el men煤 principal -->
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

    <div class="main-content">
            <h1>Configuraci髇</h1>

            <section class="mi-usuario">
                <h2>Mi Usuario</h2>
                <form>
                    <label>Nombres completos</label>
                    <input type="text" value="Roberto Paolo">
                    
                    <label>Apellidos</label>
                    <input type="text" value="Cris贸stomo Berrocal">

                    <label>N鷐ero de documento de identidad</label>
                    <input type="text" value="71776762">

                    <label>C骴igo de empleado</label>
                    <input type="text" value="01">

                    <label>Tel閒ono</label>
                    <input type="text" value="934 401 034">

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
                            <th>脷ltimo acceso</th>
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
                            <td>Paolo Cris贸stomo</td>
                            <td>Cajero</td>
                            <td>15/11/2024 | 10:00</td>
                            <td><button>Editar</button></td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Mar铆a Casasani</td>
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
                            <td>Paolo Cris贸stomo</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Fredy Nolasco</td>
                            <td>200.00</td>
                            <td>493.50</td>
                            <td></td>
                            <td>Paolo Cris贸stomo</td>
                        </tr>
                    </tbody>
                </table>
            </section>
    </div>
</body>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const btn = document.querySelector('#btn');
        const sidebar = document.querySelector('.barra-lateral');

        btn.onclick = function() {
            sidebar.classList.toggle('active');
        };
    });
</script>
</html>
