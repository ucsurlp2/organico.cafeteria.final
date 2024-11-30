
package Modelo;


public class Producto {
    int cod_prod;
    int cod_cateprod;
    String descripcion;
    double precio;
    String nombre;
    int stock;
    String fecha_fab;
    String fecha_exp;
    int cod_proveedor;
    String nom_cat;
    int cod_tipoproveedor;

    public Producto() {
    }

    public Producto(int cod_prod, int cod_cateprod, String descripcion, double precio, String nombre, int stock, String fecha_fab, String fecha_exp, int cod_proveedor, String nom_cat, int cod_tipoproveedor) {
        this.cod_prod = cod_prod;
        this.cod_cateprod = cod_cateprod;
        this.descripcion = descripcion;
        this.precio = precio;
        this.nombre = nombre;
        this.stock = stock;
        this.fecha_fab = fecha_fab;
        this.fecha_exp = fecha_exp;
        this.cod_proveedor = cod_proveedor;
        this.nom_cat = nom_cat;
        this.cod_tipoproveedor = cod_tipoproveedor;
    }

    public int getCod_prod() {
        return cod_prod;
    }

    public void setCod_prod(int cod_prod) {
        this.cod_prod = cod_prod;
    }

    public int getCod_cateprod() {
        return cod_cateprod;
    }

    public void setCod_cateprod(int cod_cateprod) {
        this.cod_cateprod = cod_cateprod;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getFecha_fab() {
        return fecha_fab;
    }

    public void setFecha_fab(String fecha_fab) {
        this.fecha_fab = fecha_fab;
    }

    public String getFecha_exp() {
        return fecha_exp;
    }

    public void setFecha_exp(String fecha_exp) {
        this.fecha_exp = fecha_exp;
    }

    public int getCod_proveedor() {
        return cod_proveedor;
    }

    public void setCod_proveedor(int cod_proveedor) {
        this.cod_proveedor = cod_proveedor;
    }

    public String getNom_cat() {
        return nom_cat;
    }

    public void setNom_cat(String nom_cat) {
        this.nom_cat = nom_cat;
    }

    public int getCod_tipoproveedor() {
        return cod_tipoproveedor;
    }

    public void setCod_tipoproveedor(int cod_tipoproveedor) {
        this.cod_tipoproveedor = cod_tipoproveedor;
    }
    
    
}
