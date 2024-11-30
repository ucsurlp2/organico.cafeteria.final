package Controlador;

import Modelo.Inventario;
import Modelo.Principal;
import Modelo.Producto;
import Modelo.Ventas;
import ModeloDAO.InventarioDAO;
import ModeloDAO.PrincipalDAO;
import ModeloDAO.ProductoDAO;
import ModeloDAO.VentasDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.*;
import java.util.List;

public class Controlador extends HttpServlet {

    String listar = "vistas/ventas.jsp";
    String listarpr = "vistas/principal.jsp";
    String listarprod = "vistas/editar-carta.jsp";
    String listarinv= "vistas/inventario.jsp";
    VentasDAO vtdao = new VentasDAO();
    Ventas vt = new Ventas();
    PrincipalDAO prdao = new PrincipalDAO();
    Principal pr = new Principal();
    Producto p = new Producto();
    ProductoDAO pdao = new ProductoDAO();
    InventarioDAO invdao= new InventarioDAO();
    Inventario inv = new Inventario();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String acceso = "";
        String action = request.getParameter("accion");

        if (action == null) {
            acceso = listar; // Acción por defecto si no se proporciona ninguna
        } else if (action.equalsIgnoreCase("listar")) {
            acceso = listar; // Acción para listar las ventas
        }else if (action.equalsIgnoreCase("listarprod")){ 
            acceso = listarprod;
        }else if (action.equalsIgnoreCase("listarpr")) {
            // Lógica para listar los productos principales
            List<Principal> listaProductos = prdao.listarpr(); // Obtener lista de productos más vendidos
            request.setAttribute("productosPrincipales", listaProductos);

            // Obtener estadísticas desde el DAO y pasarlas al JSP
            pr = prdao.obtenerEstadisticas(); // Método para obtener estadísticas como número de usuarios, productos, etc.
            request.setAttribute("numUsuarios", pr.getNumUsuarios());
            request.setAttribute("numCategorias", pr.getNumCategorias());
            request.setAttribute("numProductos", pr.getNumProductos());
            request.setAttribute("ventasDelDia", pr.getVentasDelDia());
            request.setAttribute("numVentasTotal", pr.getNumVentasTotal());
            
            acceso = listarpr; // Redirigir a principal.jsp con los datos
        } else if (action.equalsIgnoreCase("listarinv")){
            // Lógica para listar los productos del inventario
            List<Inventario> listarinven = invdao.listarinv(); // Obtener lista de productos más vendidos
            request.setAttribute("productosInventario", listarinven);
            
            inv = invdao.datosInventario();
            request.setAttribute("valor_invent", inv.getValor_invent());
            request.setAttribute("cant_prov", inv.getCant_prov());
            request.setAttribute("stock_invent", inv.getStock_invent());
            
            acceso = listarinv;
        }else{
            acceso = listar; // Acción desconocida, redirigir a lista de ventas
        }

        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}