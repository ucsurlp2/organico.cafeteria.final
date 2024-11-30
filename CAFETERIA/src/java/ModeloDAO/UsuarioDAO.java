package ModeloDAO;

import Config.Conexion;
import Modelo.Usuario;
import java.sql.*;

public class UsuarioDAO {
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Conexion conexion = new Conexion();
    
    public Usuario validar(String Usuario, String Contraseña){
        Usuario us = new Usuario();
        String sql = "SELECT * FROM usuario WHERE Usuario = ? AND Contraseña = ?";
        try {
            con = conexion.getConexion(); // Obtiene la conexión
            ps = con.prepareStatement(sql);
            // Establecer los parámetros antes de ejecutar la consulta
            ps.setString(1, Usuario);
            ps.setString(2, Contraseña);
            rs = ps.executeQuery(); // Ejecutar la consulta

            while (rs.next()) {
                // Asignar los valores correctamente a los atributos del objeto Usuario
                us.setId(rs.getInt("Cod_Usuario"));
                us.setUsuario(rs.getString("Usuario"));
                us.setContraseña(rs.getString("Contraseña")); // Suponiendo que tienes un campo para la contraseña
            }
        } catch (Exception e) {
            e.printStackTrace(); // Es recomendable imprimir o registrar los errores
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace(); // Manejar la excepción si ocurre al cerrar los recursos
            }
        }
        return us;
    }
}
