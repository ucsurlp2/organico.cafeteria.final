
package ModeloDAO;
import Config.Conexion;
import Modelo.Ventas;
import Interfaces.CRUD;
import java.util.*;
import java.sql.*;

public class VentasDAO {
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Conexion conexion = new Conexion();
    
    public List<Ventas> listar() {
       ArrayList<Ventas>list=new ArrayList<>();
       String sql= "select pd.*, em.Nombre as NomEmp from pedido pd inner join empleado em on pd.Cod_Empleado = em.Cod_Empleado ";
        try {
            con = conexion.getConexion(); // Obtiene la conexión
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Ventas vnt= new Ventas();
                vnt.setId(rs.getInt("Cod_Pedido"));
                vnt.setCliente(rs.getString("Cliente"));
                vnt.setNombemp(rs.getString("NomEmp"));
                vnt.setPrecio(rs.getFloat("Total"));
                vnt.setComentario(rs.getString("Comentario"));
                vnt.setFecha(rs.getString("Fecha"));
                list.add(vnt);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return list;
    }
}
