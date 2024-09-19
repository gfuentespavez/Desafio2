package cl.desafiolatam.business;

import cl.desafiolatam.model.Habitacion;
import java.util.ArrayList;
import java.util.List;

public class HabitacionBusiness {
    private List<Habitacion> habitaciones = new ArrayList<>();

    // Método para añadir habitación
    public void addHabitacion(Habitacion habitacion) {
        habitaciones.add(habitacion);
    }

    // Método para obtener todas las habitaciones
    public List<Habitacion> getHabitaciones() {
        return habitaciones;
    }

    // Método para calcular valor total a pagar
    public int calcularValor(int id, int dias) {
        Habitacion habitacion = getHabitacionById(id);
        if (habitacion != null) {
            return habitacion.getPrecio() * dias;
        }
        return 0;
    }

    private Habitacion getHabitacionById(int id) {
        for (Habitacion hab : habitaciones) {
            if (hab.getId() == id) {
                return hab;
            }
        }
        return null;
    }
}