<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="public/css/login.css">
</head>
<body>

    <div class="logo">
        <img src="/TuercasTornillosY+/public/img/logo.png" alt="">
    </div>

    <main>
    <form action="login" method="post"> <!-- Añadir 'index.php?ruta=login' como acción del formulario -->
        <div class="campo">
            <label for="usuario">Nombre de Usuario</label>
            <input type="text" name="usuario" id="usuario" class="campoInicio">
        </div>

        <div class="campo">
            <label for="contrasenia">Contraseña</label>
            <input type="password" name="contrasenia" id="contrasenia" class="campoInicio">
        </div>
                    
        <input type="submit" value="Iniciar Sesión" class="boton">
    </form>
    </main>

    <footer>
        <p>Tuercas Tornillos y Mas</p>
    </footer>

</body>
</html>