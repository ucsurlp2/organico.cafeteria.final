package Config;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
    private Connection con;
    private String url = "jdbc:mysql://localhost:3306/cafeteria"; // Cambia 'cafeteria' por el nombre de tu base de datos
    private String user = "root"; // Cambia el usuario si es necesario
    private String pass = ""; // Cambia la contraseña si aplica

    public Connection getConexion() {
        try {
            // Cargar el driver JDBC moderno
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Establecer la conexión
            con = DriverManager.getConnection(url, user, pass);
        } catch (Exception e) {
            System.out.println("Error de conexión: " + e.getMessage());
        }
        return con;
    }
}