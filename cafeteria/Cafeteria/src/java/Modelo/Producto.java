package Modelo;


public class Producto {
    int ID;
    String nombre;
    double precio;

    public Producto() {
    }

    public Producto(int ID, String nomproduc, double precio) {
        this.ID = ID;
        this.nombre = nomproduc;
        this.precio = precio;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }
    
    
    
}