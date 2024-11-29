package Controlador;

import Modelo.Producto;
import ModeloDAO.ProductoDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class productoControlador extends HttpServlet {



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

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

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Si no estás usando POST, puedes dejar este método vacío o eliminarlo
    }

    @Override
    public String getServletInfo() {
        return "Controlador para gestionar productos";
    }
}
