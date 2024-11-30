
package Modelo;


public class Principal {
    int id, cant;
    String Cat, Nombre,Desc;
    double numUsuarios;
    double numCategorias;
    double numProductos;
    double ventasDelDia;
    double numVentasTotal;
    public Principal() {
    }

    public Principal(int id, int cant, String Cat, String Nombre, String Desc, double numUsuarios, double numCategorias, double numProductos, double ventasDelDia, double numVentasTotal) {
        this.id = id;
        this.cant = cant;
        this.Cat = Cat;
        this.Nombre = Nombre;
        this.Desc = Desc;
        this.numUsuarios = numUsuarios;
        this.numCategorias = numCategorias;
        this.numProductos = numProductos;
        this.ventasDelDia = ventasDelDia;
        this.numVentasTotal = numVentasTotal;
    }

    public double getNumUsuarios() {
        return numUsuarios;
    }

    public void setNumUsuarios(double numUsuarios) {
        this.numUsuarios = numUsuarios;
    }

    public double getNumCategorias() {
        return numCategorias;
    }

    public void setNumCategorias(double numCategorias) {
        this.numCategorias = numCategorias;
    }

    public double getNumProductos() {
        return numProductos;
    }

    public void setNumProductos(double numProductos) {
        this.numProductos = numProductos;
    }

    public double getVentasDelDia() {
        return ventasDelDia;
    }

    public void setVentasDelDia(double ventasDelDia) {
        this.ventasDelDia = ventasDelDia;
    }

    public double getNumVentasTotal() {
        return numVentasTotal;
    }

    public void setNumVentasTotal(double numVentasTotal) {
        this.numVentasTotal = numVentasTotal;
    }

    

    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCant() {
        return cant;
    }

    public void setCant(int cant) {
        this.cant = cant;
    }

    public String getCat() {
        return Cat;
    }

    public void setCat(String Cat) {
        this.Cat = Cat;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getDesc() {
        return Desc;
    }

    public void setDesc(String Desc) {
        this.Desc = Desc;
    }
    
    
}
