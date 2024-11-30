
package Modelo;

public class Usuario {
    int id;
    String Usuario;
    String Contraseña;

    public Usuario() {
    }

    public Usuario(int id, String Usuario, String Contraseña) {
        this.id = id;
        this.Usuario = Usuario;
        this.Contraseña = Contraseña;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsuario() {
        return Usuario;
    }

    public void setUsuario(String Usuario) {
        this.Usuario = Usuario;
    }

    public String getContraseña() {
        return Contraseña;
    }

    public void setContraseña(String Contraseña) {
        this.Contraseña = Contraseña;
    }
    
    
}
