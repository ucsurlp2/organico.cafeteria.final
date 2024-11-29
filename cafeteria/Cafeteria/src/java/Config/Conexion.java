package Config;
import java.sql.Connection;
import java.sql.*;

public class Conexion {

    public static Connection getConnection() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    Connection con;
    String url="jdbc:mysql://localhost:3306/cafeteria";
    String user="root";
    String pass="";
    public Connection Conexion(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
             con=DriverManager.getConnection(url,user,pass);
        }catch (Exception e){
            System.out.println("Error de conexión: " + e.getMessage());
        }
        return con;
    }
}
