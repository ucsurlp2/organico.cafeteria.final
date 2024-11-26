/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Config;
import java.sql.*;

/**
 *
 * @author paolo
 */
public class Conexion {
    Connection con;
    public Conexion() {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:msql://localhost:3306/cafeteriaprueba,root,123");
        } catch (Exception e) {
            System.err.println("Error" + e);
        }
    }
    public Connection getConnection() {
      return con;
    };
    
    
    
}
