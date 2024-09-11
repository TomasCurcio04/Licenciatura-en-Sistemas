package ar.edu.unlp.info.o1.balanzaElectronica;

public class Producto {
	private double peso;
	private double precioPorKilo;
	private String descripcion;
	
	public double getPrecio() {
		return this.peso*this.precioPorKilo;
	}
	
	public void setPeso(double peso) {
		this.peso=peso;
	}
	
	public void setPrecioPorKilo(double precioPorKilo) {
		this.precioPorKilo=precioPorKilo;
	}
	
	public void setDescripcion(String descripcion) {
		this.descripcion=descripcion;
	}

	public double getPeso() {
		return peso;
	}

	public double getPrecioPorKilo() {
		return precioPorKilo;
	}

	public String getDescripcion() {
		return descripcion;
	}
	
	
}
