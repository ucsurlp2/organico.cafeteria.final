
package Controlador.Ventas;

import Modelo.Ventas;
import ModeloDAO.VentasDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class VentasServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Crear instancia del DAO
        VentasDAO ventasDAO = new VentasDAO();

        // Obtener la lista de ventas desde el DAO
        List<Ventas> listaVentas = ventasDAO.listar();

        // Pasar los datos a la vista (Ventas.jsp)
        request.setAttribute("listaVentas", listaVentas);

        // Redirigir a la vista
        request.getRequestDispatcher("ventas.jsp").forward(request, response);
}

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
