package ModeloDAO;

import Config.Conexion;
import Modelo.Principal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import Interfaces.CRUD;
import java.sql.SQLException;
import java.util.List;

public class PrincipalDAO {
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Conexion conexion = new Conexion();
    
    // Método para obtener las métricas de la tienda (número de usuarios, categorías, productos, etc.)
    public Principal obtenerEstadisticas() {
        Principal pr = new Principal();
        
        try {
            con = conexion.getConexion(); // Obtener la conexión a la base de datos

            // Obtener el número de usuarios
            String sqlUsuarios = "SELECT COUNT(*) AS numUsuarios FROM usuario";
            ps = con.prepareStatement(sqlUsuarios);
            rs = ps.executeQuery();
            if (rs.next()) {
                pr.setNumUsuarios(rs.getDouble("numUsuarios"));
            }

            // Obtener el número de categorías
            String sqlCategorias = "SELECT COUNT(*) AS numCategorias FROM categoria_pro";
            ps = con.prepareStatement(sqlCategorias);
            rs = ps.executeQuery();
            if (rs.next()) {
                pr.setNumCategorias(rs.getDouble("numCategorias"));
            }

            // Obtener el número de productos
            String sqlProductos = "SELECT COUNT(*) AS numProductos FROM producto";
            ps = con.prepareStatement(sqlProductos);
            rs = ps.executeQuery();
            if (rs.next()) {
                pr.setNumProductos(rs.getDouble("numProductos"));
            }

            // Obtener las ventas del día
            String sqlVentas = "SELECT SUM(Total) AS ventasDelDia FROM pedido WHERE Fecha = CURDATE()";
            ps = con.prepareStatement(sqlVentas);
            rs = ps.executeQuery();
            if (rs.next()) {
                pr.setVentasDelDia(rs.getDouble("ventasDelDia"));
            }

            // Obtener el número total de ventas del día
            String sqlVentasTotal = "SELECT COUNT(*) AS numVentasTotal FROM pedido WHERE Fecha = CURDATE()";
            ps = con.prepareStatement(sqlVentasTotal);
            rs = ps.executeQuery();
            if (rs.next()) {
                pr.setNumVentasTotal(rs.getDouble("numVentasTotal"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Cerrar los recursos para evitar fugas de memoria
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        
        return pr; // Devolver el objeto Principal con las métricas
    }
    
    // Método para listar los productos más vendidos
    public List<Principal> listarpr() {
        List<Principal> listapr = new ArrayList<>();
        
        try {
            con = conexion.getConexion(); // Obtener la conexión a la base de datos
            
            // Consulta para obtener los productos más vendidos
            String sql = "SELECT p.Cod_Producto, cp.Descripcion AS CatDesc, p.Nombre, p.Descripcion, SUM(dp.Cantidad) AS TotalCantidad "
                       + "FROM producto p "
                       + "INNER JOIN categoria_pro cp ON p.Cod_CatePro = cp.Cod_CatePro "
                       + "INNER JOIN detalle_pedido dp ON p.Cod_Producto = dp.Cod_Producto "
                       + "GROUP BY p.Cod_Producto, cp.Descripcion, p.Nombre, p.Descripcion "
                       + "ORDER BY TotalCantidad DESC LIMIT 10";
            
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                // Crear un objeto Principal para cada producto más vendido
                Principal pl = new Principal();
                pl.setId(rs.getInt("Cod_Producto"));
                pl.setCat(rs.getString("CatDesc"));
                pl.setNombre(rs.getString("Nombre"));
                pl.setDesc(rs.getString("Descripcion"));
                pl.setCant(rs.getInt("TotalCantidad"));
                
                // Añadir el producto a la lista
                listapr.add(pl);
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Cerrar los recursos para evitar fugas de memoria
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        
        return listapr; // Devolver la lista de productos más vendidos
    }
}