
package Modelo;

public class Ventas {
    
    int id,idemp;
    float precio;
    String fecha, cliente,comentario, nombemp;

    public Ventas() {
    }

    public Ventas(int id, int idemp, float precio, String fecha, String cliente, String comentario, String nombemp) {
        this.id = id;
        this.idemp = idemp;
        this.precio = precio;
        this.fecha = fecha;
        this.cliente = cliente;
        this.comentario = comentario;
        this.nombemp = nombemp;
    }

    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdemp() {
        return idemp;
    }

    public void setIdemp(int idemp) {
        this.idemp = idemp;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getCliente() {
        return cliente;
    }

    public void setCliente(String cliente) {
        this.cliente = cliente;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public String getNombemp() {
        return nombemp;
    }

    public void setNombemp(String nombemp) {
        this.nombemp = nombemp;
    }
    
    
}
