
package ModeloDAO;
import Config.Conexion;
import Modelo.Producto;
import Interfaces.CRUD;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductoDAO implements CRUD{
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Conexion conexion = new Conexion();
    
    @Override
    public List<Producto> listarprod() {
        ArrayList<Producto> listarprod = new ArrayList<>();
        String sql = "Select p.*, cp.Descripcion as NomCat from producto p inner join categoria_pro cp on p.Cod_CatePro = cp.Cod_CatePro where p.Cod_Tipoprod = 2";
        try {
            con = conexion.getConexion(); // Obtiene la conexión
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Producto prod = new Producto();
                prod.setCod_prod(rs.getInt("Cod_Producto"));
                prod.setNom_cat(rs.getString("NomCat"));
                prod.setNombre(rs.getString("Nombre"));
                prod.setDescripcion(rs.getString("Descripcion"));
                prod.setStock(rs.getInt("stock"));
                prod.setPrecio(rs.getDouble("Precio"));
                listarprod.add(prod);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return listarprod;
    }

    @Override
    public List listar() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List listarinv() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Producto List(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List listarpr() {
        ArrayList<Producto>list = new ArrayList<>();
        String sql= "select * from producto";
        try {
            con = conexion.getConexion(); // Obtiene la conexión
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {
                
                Producto prod = new Producto();
                prod.setCod_prod(rs.getInt("Cod_Producto"));
                prod.setNombre(rs.getString("nombre"));
                prod.setPrecio(rs.getDouble("precio"));
                list.add(prod);
                
                
            }
            
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public boolean editarproducto(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean eliminaproducto(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean añadirproducto(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<Producto> listarpr(int codCatePro) {
        List<Producto> lista = new ArrayList<>();
        String sql = "SELECT Cod_Producto, precio, nombre FROM producto WHERE Cod_catePro = ?";
        try {
            con = conexion.getConexion(); // Obtiene la conexión
            ps = con.prepareStatement(sql);
            ps.setInt(1, codCatePro);
            rs = ps.executeQuery();
            while (rs.next()) {
                Producto p = new Producto();
                p.setCod_prod(rs.getInt("Cod_Producto"));
                p.setPrecio(rs.getDouble("precio"));
                p.setNombre(rs.getString("nombre"));
                lista.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lista;
    }
}
