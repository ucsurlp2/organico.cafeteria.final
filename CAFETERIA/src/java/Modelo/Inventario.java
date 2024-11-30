package Modelo;

public class Inventario {
    
    int id_produc, stock_invent, stock_produc, cant_prov;
    String cat_produc, nom_produc, descrip_produc;
    double valor_invent;
    double precio;
    String fechaexp, fechafab;

    public Inventario() {
    }

    public Inventario(int id_produc, int stock_invent, int stock_produc, int cant_prov, String cat_produc, String nom_produc, String descrip_produc, double valor_invent, double precio, String fechaexp, String fechafab) {
        this.id_produc = id_produc;
        this.stock_invent = stock_invent;
        this.stock_produc = stock_produc;
        this.cant_prov = cant_prov;
        this.cat_produc = cat_produc;
        this.nom_produc = nom_produc;
        this.descrip_produc = descrip_produc;
        this.valor_invent = valor_invent;
        this.precio = precio;
        this.fechaexp = fechaexp;
        this.fechafab = fechafab;
    }

    public String getFechaexp() {
        return fechaexp;
    }

    public void setFechaexp(String fechaexp) {
        this.fechaexp = fechaexp;
    }

    public String getFechafab() {
        return fechafab;
    }

    public void setFechafab(String fechafab) {
        this.fechafab = fechafab;
    }

    

    public int getId_produc() {
        return id_produc;
    }

    public void setId_produc(int id_produc) {
        this.id_produc = id_produc;
    }

    public int getStock_invent() {
        return stock_invent;
    }

    public void setStock_invent(int stock_invent) {
        this.stock_invent = stock_invent;
    }

    public int getStock_produc() {
        return stock_produc;
    }

    public void setStock_produc(int stock_produc) {
        this.stock_produc = stock_produc;
    }

    public int getCant_prov() {
        return cant_prov;
    }

    public void setCant_prov(int cant_prov) {
        this.cant_prov = cant_prov;
    }

    public String getCat_produc() {
        return cat_produc;
    }

    public void setCat_produc(String cat_produc) {
        this.cat_produc = cat_produc;
    }

    public String getNom_produc() {
        return nom_produc;
    }

    public void setNom_produc(String nom_produc) {
        this.nom_produc = nom_produc;
    }

    public String getDescrip_produc() {
        return descrip_produc;
    }

    public void setDescrip_produc(String descrip_produc) {
        this.descrip_produc = descrip_produc;
    }

    public double getValor_invent() {
        return valor_invent;
    }

    public void setValor_invent(double valor_invent) {
        this.valor_invent = valor_invent;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }
    
}