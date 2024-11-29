package ModeloDAO;

import Config.Conexion;
import Modelo.Producto;
import java.sql.*;
import java.util.*;
import Interfaces.*;


public class ProductoDAO implements productoCRUD {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Producto p= new Producto();  

    @Override
    public Producto list(int id) {
        String sql= "select * from producto where cod_catepro="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                p.setId(rs.getInt("cod_catepro"));
                p.setNombre(rs.getString("nombre"));
                p.setPrecio(rs.getDouble("precio"));
            }
        } catch (Exception e) {
        }
        return p;
    }

    
    @Override
    public List listar() {
        ArrayList<Producto>list=new ArrayList<>();
       String sql= "select * from producto";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Producto pro= new Producto();
                pro.setId(rs.getInt("cod_catepro"));
                pro.setNombre(rs.getString("nombre"));
                pro.setPrecio(rs.getDouble("precio"));
                list.add(pro);
            }
        } catch (Exception e) {
        }
        return list;
    }


    @Override
    public boolean add(Producto pro) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean edit(Producto pro) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean eliminar(Producto pro) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Producto list(String cat) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
