package Final12Febrero;

public class Persona {

	private String nombre;
	private int DNI;
	
	
	public Persona(String nombre, int dNI) {
		super();
		this.nombre = nombre;
		DNI = dNI;
	}


	public int getDNI() {
		return DNI;
	}
	
	@Override
	public String toString() {
		return "Persona [nombre=" + nombre + ", DNI=" + DNI + "]";
	}

}
