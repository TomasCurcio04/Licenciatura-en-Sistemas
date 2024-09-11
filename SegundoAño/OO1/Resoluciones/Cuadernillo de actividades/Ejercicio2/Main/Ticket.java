package ar.edu.unlp.info.o1.balanzaElectronica;
import java.time.LocalDate;

public class Ticket {
	private LocalDate fecha;
	private int cantidadDeProductos;
	private double pesoTotal;
	private double precioTotal;
	
	public Ticket (int cantidadDeProductos, double pesoTotal, double precioTotal) {
		this.cantidadDeProductos=cantidadDeProductos;
		this.pesoTotal=pesoTotal;
		this.precioTotal=precioTotal;
		this.fecha=LocalDate.now();
	}
	
	public double impuesto() {
		return this.precioTotal*0.21;
	}


	public LocalDate getFecha() {
		return fecha;
	}


	public int getCantidadDeProductos() {
		return cantidadDeProductos;
	}


	public double getPesoTotal() {
		return pesoTotal;
	}


	public double getPrecioTotal() {
		return precioTotal;
	}
	
	
}
