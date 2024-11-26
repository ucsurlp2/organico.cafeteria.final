<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio de Sesión - Orgánico Cafetería</title>
    <link rel="stylesheet" href="style.css">
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
        <form class="login-form" action="index.html" method="GET" target="_blank">
            <p>Por favor, ingrese sus credenciales para acceder.</p>
            <label for="username">Ingrese su nombre de usuario</label>
            <input type="text" id="username" placeholder="Nombre de usuario" required>
            <label for="password">Ingrese su contraseña</label>
            <input type="password" id="password" placeholder="Contraseña" required>

            <button type="submit">Iniciar sesión</button>
        </form>
    </div>
</body>
</html>