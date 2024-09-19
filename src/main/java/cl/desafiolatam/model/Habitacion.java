package cl.desafiolatam.model;

public class Habitacion {
    private int id;
    private String nombre;
    private String descripcion;
    private String imagen;
    private int precio;
    private int habitacion;
    private int metraje;

    public Habitacion(int id, String nombre, String descripcion, String imagen, int precio, int habitacion, int metraje) {
        this.id = id;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.imagen = imagen;
        this.precio = precio;
        this.habitacion = habitacion;
        this.metraje = metraje;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public int getHabitacion() {
        return habitacion;
    }

    public void setHabitacion(int habitacion) {
        this.habitacion = habitacion;
    }

    public int getMetraje() {
        return metraje;
    }

    public void setMetraje(int metraje) {
        this.metraje = metraje;
    }
}