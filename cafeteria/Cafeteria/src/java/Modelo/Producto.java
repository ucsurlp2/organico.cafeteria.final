package Modelo;


public class Producto {
    int id;
    String nombre;
    double precio;

    public Producto() {
    }

    public Producto(int id, String nomproduc, double precio) {
        this.id = id;
        this.nombre = nomproduc;
        this.precio = precio;
    }

    public int getId() {
        return id;
    }

    public void setId(int Id) {
        this.id = id;
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