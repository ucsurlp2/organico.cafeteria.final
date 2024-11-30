package ModeloDAO;

import Config.Conexion;
import Modelo.Inventario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import Interfaces.CRUD;
import java.sql.SQLException;
import java.util.List;

public class InventarioDAO {

    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Conexion conexion = new Conexion();

    //Metodo para obtener las metricas del inventario (valor de inventario, articulos, proveedores)
    public Inventario datosInventario() {
        Inventario inv = new Inventario();

        try {
            con = conexion.getConexion();

            String sqlValorinventario = "SELECT SUM(Precio * stock) AS valor_invent FROM producto Where Stock > 0";
            ps = con.prepareStatement(sqlValorinventario);
            rs = ps.executeQuery();
            if (rs.next()) {
                inv.setValor_invent(rs.getDouble("valor_invent"));
            }

            String sqlTotalinventario = "SELECT SUM(stock) AS stock_invent FROM producto Where Stock > 0";
            ps = con.prepareStatement(sqlTotalinventario);
            rs = ps.executeQuery();
            if (rs.next()) {
                inv.setStock_invent(rs.getInt("stock_invent"));
            }
            
            String sqlNumproveedor = "SELECT COUNT(*) AS cant_prov FROM proveedores";
            ps = con.prepareStatement(sqlNumproveedor);
            rs = ps.executeQuery();
            if (rs.next()) {
                int count = rs.getInt("cant_prov"); // Usamos getInt porque COUNT(*) devuelve un entero
                System.out.println("Cantidad de proveedores: " + count);
                inv.setCant_prov(count); // Asignamos directamente como int
            }
        
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Cerrar los recursos para evitar fugas de memoria
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return inv; // Devolver el objeto Principal con las métricas
    }
    
    // Método para listar los productos más vendidos
    public List<Inventario> listarinv() {
        List<Inventario> listarinv = new ArrayList<>();
        
        try {
            con = conexion.getConexion(); // Obtener la conexión a la base de datos
            
            // Consulta para obtener los productos más vendidos
            String sql = "SELECT p.Cod_Producto, cp.Descripcion AS cat_produc, p.Nombre, p.Descripcion, p.stock, p.Precio, p.Cod_Tipoprod,"
                       + " p.Fecha_fab, p.Fecha_exp FROM producto p "
                       + "INNER JOIN categoria_pro cp ON p.Cod_CatePro = cp.Cod_CatePro "
                    +"Where p.Stock > 0"
                       ;
                       
            
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                // Crear un objeto Principal para cada producto más vendido
                Inventario inven = new Inventario();
                inven.setId_produc(rs.getInt("Cod_Producto"));
                inven.setCat_produc(rs.getString("cat_produc"));
                inven.setNom_produc(rs.getString("Nombre"));
                inven.setDescrip_produc(rs.getString("Descripcion"));
                inven.setStock_produc(rs.getInt("stock"));
                inven.setPrecio(rs.getInt("Precio"));
                inven.setFechaexp(rs.getString("Fecha_exp"));
                inven.setFechafab(rs.getString("Fecha_fab"));
                
                // Añadir el producto a la lista
                listarinv.add(inven);
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
        
        return listarinv; // Devolver la lista de productos más vendidos
    }
    
}
