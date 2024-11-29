<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio de Sesion - Organico Cafeteriï¿½a</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Radley:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">

</head>
<body>
    <div class="login-container">
        <div class="logo-container">
            <h1 class="logo">ORGANICO</h1>
            <h2 class="sublogo">CAFETERIA</h2>
        </div>
        
        
        <!-- Agregamos el action para redirigir a dashboard.html -->
        <form class="login-form" action="Validar" method="POST" >
            <p>Por favor, ingrese sus credenciales para acceder.</p>
            <label for="username">Ingrese su nombre de usuario</label>
            <input type="text" id="username" placeholder="Nombre de usuario" name="User" required>
            
            <label for="password">Ingrese su contraseña</label>
            <input type="password" id="password" placeholder="Contraseña" name="Pass" required>

            <button type="submit" name="accion" value="Ingresar" action="vistas/principal.jsp">Iniciar sesion</button>
        </form>
    </div>
</body>
</html>