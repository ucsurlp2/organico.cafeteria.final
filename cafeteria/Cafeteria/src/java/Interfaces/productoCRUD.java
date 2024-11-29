
package Interfaces;

import Modelo.Producto;
import java.util.List;

public interface productoCRUD {
    public List listar();
    public Producto list(int id);
    public Producto list(String cat);
    public boolean add(Producto pro);
    public boolean edit(Producto pro);
    public boolean eliminar(Producto pro);
    
}
