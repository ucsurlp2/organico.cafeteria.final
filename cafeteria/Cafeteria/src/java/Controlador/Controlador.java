/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package Controlador;

import Modelo.Producto;
import ModeloDAO.ProductoDAO;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Alvaro
 */
public class Controlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String accion = request.getParameter("accion");
            switch (accion){
                case "Principal":
                    request.getRequestDispatcher("VentasDia").forward(request,response);
                    break;
                default:
                    throw new AssertionError();
            }
    }

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
        processRequest(request, response);
        String btnValue = request.getParameter("btnselec");

        if (btnValue != null && !btnValue.isEmpty()) {
            try {
                // Convertir el parámetro 'btnselec' a un valor entero
                int id = Integer.parseInt(btnValue);

                // Lógica para consultar el producto por ID
                ProductoDAO dao = new ProductoDAO();
                Producto producto = dao.list(id); // Método de ProductoDAO que devuelve el producto por ID

                if (producto != null) {
                    // Enviar el producto como atributo para la JSP
                    request.setAttribute("producto", producto);
                    RequestDispatcher dispatcher = request.getRequestDispatcher("vistas/nueva-venta.jsp");
                    dispatcher.forward(request, response); // Redirigir a la página nueva-venta.jsp
                } else {
                    // Si el producto no se encuentra, mostrar mensaje de error
                    response.getWriter().println("Error: Producto no encontrado.");
                }

            } catch (NumberFormatException e) {
                // Si no se puede convertir el parámetro 'btnselec' a entero
                response.getWriter().println("Error: El valor recibido no es válido.");
            }
        } else {
            // Si no se recibe ningún valor para 'btnselec'
            response.getWriter().println("Error: No se recibió un valor válido.");
        }
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
        processRequest(request, response);
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
