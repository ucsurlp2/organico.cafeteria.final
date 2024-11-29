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
 * @author lucer
 */
public class nueva_venta extends HttpServlet {
    String listar="vistas/nueva_venta.jsp";
    Producto p=new Producto();
    ProductoDAO dao=new ProductoDAO();
    int id;
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso="";
        String action=request.getParameter("accion");
        if (action.equalsIgnoreCase("listar")){
            acceso=listar;
        }
        RequestDispatcher vista= request.getRequestDispatcher(acceso);
        vista.forward(request,response);
    }
    
}
