/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author paolo
 */
public class comprobar {
    public static void main(String[] args) {
        conexion c = new conexion();
        
        if (c.conectar()!=null) {
            System.out.println("Se conectó");
        }
        else {
            System.out.println("No se conectó");
        }

    }
}
