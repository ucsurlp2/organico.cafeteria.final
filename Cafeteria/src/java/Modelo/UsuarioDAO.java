/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import Config.Conexion;
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