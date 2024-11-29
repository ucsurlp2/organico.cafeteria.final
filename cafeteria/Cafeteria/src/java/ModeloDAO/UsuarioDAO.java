
package ModeloDAO;

import Config.Conexion;
import Modelo.Usuario;
import java.sql.*;
public class UsuarioDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public Usuario validar(String Usuario, String Contraseña){
        Usuario us = new Usuario();
        String sql = "Select * from usuario where Usuario = ? and Contraseña = ?";
        try{
            con = cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, Usuario );
            ps.setString(2, Contraseña);
            rs=ps.executeQuery();
            while(rs.next()){
                us.setId(rs.getInt("Cod_Usuario"));
                us.setUsuario(rs.getString("Usuario"));
                us.setUsuario(rs.getString("Contraseña"));
            }
        }catch(Exception e){
            
        }
        return us;
    }
}
