<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Configuraci�n - Org�nico Cafeteria</title>
    <link rel="stylesheet" href="../css/barra_lateral.css">
    <link rel="stylesheet" href="../css/config.css">
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
    <div class="main-content">
        <div class="header">
            <h1>Configuraci�n</h1>
        </div>
        <section class="mi-usuario">
            <h2>Mi Usuario</h2>
            <form>
                <label>Nombres completos</label>
                <input type="text" value="Roberto Paolo" readonly>
                
                <label>Apellidos</label>
                <input type="text" value="Cris�stomo Berrocal" readonly>

                <label>N�mero de documento de identidad</label>
                <input type="text" value="71776762" readonly>

                <label>C�digo de empleado</label>
                <input type="text" value="01" readonly>

                <label>Tel�fono</label>
                <input type="text" value="934 401 034" readonly>
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
                        <th>�ltimo acceso</th>
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
                        <td>Paolo Cris�stomo</td>
                        <td>Cajero</td>
                        <td>15/11/2024 | 10:00</td>
                        <td><button>Editar</button></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Mar�a Casasani</td>
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
                        <td>Paolo Cris�stomo</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Fredy Nolasco</td>
                        <td>200.00</td>
                        <td>493.50</td>
                        <td></td>
                        <td>Paolo Cris�stomo</td>
                    </tr>
                </tbody>
            </table>
        </section>
</body>
<script>
    let btn=document.querySelector('#btn');
    let sidebar=document.querySelector('.barra-lateral');

    btn.onclick=function(){
        sidebar.classList.toggle('active');
    };
</script>
</html>