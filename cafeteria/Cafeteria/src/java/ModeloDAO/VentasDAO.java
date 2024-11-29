
package ModeloDAO;

import Config.Conexion;
import Modelo.Ventas;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class VentasDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    public List<Ventas> listar() {
        List<Ventas> lista = new ArrayList<>();
        String sql = "SELECT pd.Cod_Pedido, pd.Cliente, pd.Comentario, pd.Fecha, pd.Total, em.Nombre AS NomEmp "
                   + "FROM pedido pd INNER JOIN empleado em ON pd.Cod_Empleado = em.Cod_Empleado";

        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Ventas vt = new Ventas();
                vt.setId(rs.getInt("Cod_Pedido"));
                vt.setCliente(rs.getString("Cliente"));
                vt.setEmpleado(rs.getString("NomEmp"));
                vt.setComentario(rs.getString("Comentario"));
                vt.setFecha(rs.getString("Fecha"));
                vt.setPrecio(rs.getFloat("Total"));
                lista.add(vt);
            }
        } catch (Exception e) {
            System.out.println("Error al listar ventas: " + e.getMessage());
        }
        return lista;
    }
}