
package Interfaces;
import Modelo.Producto;
import java.util.List;
public interface CRUD {
    public List listar();
    public List listarinv();
    
    //CRUD de ventas.jsp
    public Producto List(int id);
    public List listarpr(); //METODO QUE SE DIRIGE A PRINCIPAL.JSP
    public List listarpr(int codCatePro);
    public List listarprod();
    public boolean editarproducto( int id);
    public boolean eliminaproducto( int id);
    
    //CRUD de inventario.jsp
    public boolean añadirproducto( int id); //METODO QUE SE DIRIGE A INVENTARIO-AGREGAR-PRODUCTO.JSP
}
