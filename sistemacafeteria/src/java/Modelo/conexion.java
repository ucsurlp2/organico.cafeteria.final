/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conexion {
    // Constantes para la conexión
    private static final String URL = "jdbc:mysql://localhost/cafeteriaprueba";
    private static final String USER = "root";
    private static final String PASSWORD = "";

    public Connection conectar() {
        
        Connection con = null;
        
        try {
            // No es necesario cargar el driver explícitamente en versiones modernas de JDBC
            con = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Conexión establecida con éxito.");
        } catch (Exception e) {
            System.err.println("Error al establecer la conexión: " + e.getMessage());
            e.printStackTrace();
        }
        return con;
    }
    
}