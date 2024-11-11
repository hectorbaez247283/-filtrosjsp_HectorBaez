<%-- 
    Document   : home
    Created on : 7 nov 2024, 16:54:20
    Author     : PERSONAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Pokémons Registrados</title>
    </head>
    <body>
        <h1>Lista de Pokémons Registrados</h1>

        <table border="1">
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Número en la Pokédex</th>
                    <th>Tipo</th>
                    <th>Evolución</th>
                    <th>Poder</th>
                    <th>Descripción</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="pokemon" items="${listaPokemones}">
                    <tr>
                        <td>${pokemon.nombre}</td>
                        <td>${pokemon.numero}</td>
                        <td>${pokemon.tipo}</td>
                        <td>${pokemon.evolucion}</td>
                        <td>${pokemon.poder}</td>
                        <td>${pokemon.descripcion}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <br>
        <a href="registroPkm.jsp">Agregar otro Pokémon</a>
    </body>
</html>
