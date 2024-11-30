/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.Conexion;
import Modelo.Pedidos;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author lucer
 */
public class PedidosDAO {
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Conexion conexion = new Conexion();

    public List<Pedidos> listped() {
        List<Pedidos> listped = new ArrayList<>();
        try {
            con = conexion.getConexion(); // Obtener la conexión a la base de datos
            
            // Consulta para obtener los productos más vendidos
            String sql = "SELECT dp.Cod_Pedido, p.Fecha, p.Total,SUM(dp.Cantidad) AS cant_tot FROM pedido p "
                       + "INNER JOIN detalle_pedido dp ON p.Cod_Pedido =dp.Cod_Pedido "
                       +"GROUP BY(dp.Cod_Pedido)";
                       
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                // Crear un objeto Principal para cada producto más vendido
                Pedidos ped = new Pedidos();
                ped.setId_ped(rs.getInt("Cod_Pedido"));
                ped.setCant_tot(rs.getInt("cant_tot"));
                ped.setTotped(rs.getDouble("Total"));
                ped.setFecped(rs.getString("Fecha"));
                
                // Añadir el producto a la lista
                listped.add(ped);
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
        
        return listped; // Devolver la lista de productos más vendidos
    }
 
}
