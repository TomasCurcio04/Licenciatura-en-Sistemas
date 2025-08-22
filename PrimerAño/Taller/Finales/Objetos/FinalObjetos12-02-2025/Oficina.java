package Final12Febrero;

public class Oficina {
	private boolean alquilada;
	private Persona persona;
	private double monto;
	
	public Oficina(boolean alquilada, Persona persona, double monto) {
		this.alquilada=alquilada;
		this.persona=persona;
		this.monto=monto;
	}
	
	public Oficina() {}

	public void setAlquilada(boolean alquilada) {
		this.alquilada = alquilada;
	}

	public void setPersona(Persona persona) {
		this.persona = persona;
	}

	public void setMonto(double monto) {
		this.monto = monto;
	}

	public Persona getPersona() {
		return persona;
	}

	public double getMonto() {
		return monto;
	}

	public boolean isAlquilada() {
		return alquilada;
	}

	@Override
	public String toString() {
		return " Oficina [alquilada=" + alquilada + ", persona=" + persona  + ", monto=" + monto + "]";
	}
	
	
}
