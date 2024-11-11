/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import dominio.Pokemon;
import jakarta.servlet.RequestDispatcher;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author PERSONAL
 */
public class RegistroPokemon extends HttpServlet {

    private static List<Pokemon> pokemones = new ArrayList<>();

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Recoger los datos del formulario
        String nombre = request.getParameter("nombre");
        String numero = request.getParameter("numero");
        String tipo = request.getParameter("tipo");
        String evolucion = request.getParameter("evolucion");
        int poder = Integer.parseInt(request.getParameter("poder"));
        String descripcion = request.getParameter("descripcion");

        // Crear un nuevo objeto Pokémon
        Pokemon pokemon = new Pokemon(nombre, numero, tipo, evolucion, poder, descripcion);
        
        // Agregar el Pokémon a la lista
        pokemones.add(pokemon);

        // Enviar la lista de Pokémons a Home.jsp
        request.setAttribute("listaPokemones", pokemones);
        
        // Redirigir a Home.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("Home.jsp");
        dispatcher.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
