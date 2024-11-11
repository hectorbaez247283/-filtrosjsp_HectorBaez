<%-- 
    Document   : registrar-pokemon
    Created on : 7 nov 2024, 16:54:35
    Author     : PERSONAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../styles/registroPkm.css"
        <title>Registrar Pokemon</title>
    </head>
    <body>
        <h1>Registrar Pokemon</h1>

        <fieldset>

            <legend>Información del Pokémon</legend>

            <!-- Nombre del Pokémon -->
            <label for="nombre">Nombre del Pokémon:</label>
            <input type="text" id="nombre" name="nombre">
            <br>
            <br>

            <!-- Número en la Pokédex -->
            <label for="numero">Número en la Pokédex:</label>
            <input type="text" id="numero" name="numero">
            <br>
            <br>

            <!-- Tipo de Pokémon -->
            <label>Tipo de Pokémon:</label><br>
            <input type="radio" id="fuego" name="tipo" value="fuego">
            <label for="fuego">Fuego</label>
            <br>

            <input type="radio" id="agua" name="tipo" value="agua">
            <label for="agua">Agua</label>
            <br>

            <input type="radio" id="planta" name="tipo" value="planta">
            <label for="planta">Planta</label>
            <br>

            <input type="radio" id="electrico" name="tipo" value="electrico">
            <label for="electrico">Eléctrico</label>
            <br>
            <br>

            <!-- Nivel de evolución -->
            <label for="evolucion">Nivel de evolución:</label>
            <select id="evolucion" name="evolucion">
                <option value="basico">Básico</option>
                <option value="primera evolución">Primera evolución</option>
                <option value="segunda evolucion">Segunda evolución</option>
            </select>
            <br>
            <br>

            <!-- Nivel de poder -->
            <label for="poder">Nivel de poder:</label>
            <input type="range" id="poder" name="poder" min="1" max="100"><br><br>

            <!-- Descripción del Pokémon -->
            <label for="descripcion">Descripción del Pokémon:</label><br>
            <textarea id="descripcion" name="descripcion" rows="4" cols="50" placeholder="Descripción del pokémon"></textarea>
            <br>
            <br>

            <!-- Botones -->
            <input type="submit" value="Agregar Pokémon">
            <input type="reset" value="Limpiar formulario">


        </fieldset>

    </body>
</html>
