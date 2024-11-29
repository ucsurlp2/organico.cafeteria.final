package Modelo;


public class Producto {
    int id;
    String nombre;
    double precio;
    String cat;

    public Producto() {
    }

    public Producto(int id, String nomproduc, double precio, String cat) {
        this.id = id;
        this.nombre = nomproduc;
        this.precio = precio;
        this.cat= cat;
    }

    public String getCat() {
        return cat;
    }

    public void setCat(String cat) {
        this.cat = cat;
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