<%-- 
    Document   : index
    Created on : 7 nov 2024, 16:53:29
    Author     : PERSONAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Iniciar sesión</h1>
        <form action="Login" method="POST">
            <label for="user">Usuario</label>
            <input type="text" name="user" required>
            <br>
            <label for="pass">Contraseña</label>
            <input type="password" name="pass" required>
            <br>
            <input type="submit" value="Entrar">
        </form>
    </body>
</html>
