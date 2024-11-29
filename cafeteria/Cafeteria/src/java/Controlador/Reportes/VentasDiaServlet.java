/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador.Reportes;
import Config.Conexion;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/VentasDia")
public class VentasDiaServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        double numUsuarios = 0;
        double numCategorias = 0;
        double numProductos = 0;
        
        double ventasDelDia = 0;
        double numVentasTotal = 0;
        
        Conexion cn = new Conexion();
        Connection con;
        PreparedStatement ps;
        ResultSet rs;

//        # de Usuarios
        try {
            String sqlUsuarios = "SELECT COUNT(*) AS numUsuarios FROM usuario";
            con = cn.Conexion();
            ps = con.prepareStatement(sqlUsuarios);
            rs = ps.executeQuery();
            
            if (rs.next()) {
                numUsuarios = rs.getDouble("numUsuarios");
            }
        } catch (SQLException e) {
            request.setAttribute("error", "Error al obtener el número de usuaruis del sistema: " + e.getMessage());
        }

//        # de categorías     
        try {
            String sqlCategorias = "SELECT COUNT(*) AS numCategorias FROM categoria_pro";
            con = cn.Conexion();
            ps = con.prepareStatement(sqlCategorias);
            rs = ps.executeQuery();
            
            if (rs.next()) {
                numCategorias = rs.getDouble("numCategorias");
            }
        } catch (SQLException e) {
            request.setAttribute("error", "Error al obtener el número de categorías del sistema: " + e.getMessage());
        }        

//        # de productos        
        try {
            con = cn.Conexion();
            String sqlProductos = "SELECT COUNT(*) AS numProductos FROM producto";
            ps = con.prepareStatement(sqlProductos);
            rs = ps.executeQuery();
            
            if (rs.next()) {
                numProductos = rs.getDouble("numProductos");
            }
            
        } catch (SQLException e) {
            request.setAttribute("error", "Error al obtener el número de productos del sistema: " + e.getMessage());
        }
        
//        Cobro de ventas
        try {
            String sql = "SELECT SUM(Total) AS ventasDelDia FROM pedido WHERE Fecha = CURDATE()";
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            //ps.setDouble(1, ventasDelDia);

            if (rs.next()) {
                ventasDelDia = rs.getDouble("ventasDelDia");
            }
        } catch (SQLException e) {
            request.setAttribute("error", "Error al obtener el monto de las ventas del día: " + e.getMessage());
        }
        
//        # de ventas del día
        try {
            String sql = "SELECT COUNT(*) AS numVentasTotal FROM pedido WHERE Fecha = CURDATE()";
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            //ps.setDouble(1, ventasDelDia);

            if (rs.next()) {
                numVentasTotal = rs.getDouble("numVentasTotal");
            }
        } catch (SQLException e) {
            request.setAttribute("error", "Error al obtener el número de ventas del día: " + e.getMessage());
        }
        
        try {
            
        } catch (Exception e) {
        }
        



        

        

        // Enviar el monto a la página JSP
        request.setAttribute("ventasDelDia", ventasDelDia);
        request.setAttribute("numVentasTotal", numVentasTotal);
        request.setAttribute("numUsuarios", numUsuarios);
        request.setAttribute("numCategorias", numCategorias);
        request.setAttribute("numProductos", numProductos);
        request.getRequestDispatcher("vistas/principal.jsp").forward(request, response);
        System.out.println("Ventas del día calculadas: " + ventasDelDia);
    }
}
