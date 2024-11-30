/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author maria
 */

public class Pedidos {
    int id_ped, cant_tot;
    double totped;
    String fecped;
    
    public Pedidos() {
    } 
    public Pedidos(int cant_tot, double totped, String fecped) {
        this.cant_tot= cant_tot;
        this.totped = totped;
        this.fecped = fecped;
    }

    public int getCant_tot() {
        return cant_tot;
    }

    public void setCant_tot(int cant_tot) {
        this.cant_tot = cant_tot;
    }

    public int getId_ped() {
        return id_ped;
    }

    public void setId_ped(int id_ped) {
        this.id_ped = id_ped;
    }

    public double getTotped() {
        return totped;
    }

    public void setTotped(double totped) {
        this.totped = totped;
    }

    public String getFecped() {
        return fecped;
    }

    public void setFecped(String fecped) {
        this.fecped = fecped;
    }
    
}

