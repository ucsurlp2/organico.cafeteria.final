
package ModeloDAO;
import Config.Conexion;
import Modelo.Producto;
import Interfaces.CRUD;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductoDAO {
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Conexion conexion = new Conexion();
    
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
}
