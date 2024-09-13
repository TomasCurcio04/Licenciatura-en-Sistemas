package ar.edu.unlp.info.oo1.Ejercicio4;
import java.time.LocalDate;
import java.util.*;
public class Ticket {
	private LocalDate fecha;
	private List<Producto> productos;
	private int cantidadDeProductos;
	private double pesoTotal;
	private double precioTotal;
	
	public Ticket(int cantidadDeProductos, double pesoTotal, double precioTotal, List<Producto> productos) {
		this.productos=new LinkedList <Producto>();
		this.cantidadDeProductos = cantidadDeProductos;
		this.pesoTotal = pesoTotal;
		this.precioTotal = precioTotal;
		this.productos = productos;
		this.fecha = LocalDate.now();
	}
	
	public double impuesto() {
		return this .getPrecioTotal()*0.21;
	}

	public LocalDate getFecha() {
		return fecha;
	}

	public double getPesoTotal() {
		return this.pesoTotal;
	}

	public int getCantidadDeProductos() {
		return this.cantidadDeProductos;
	}

	public double getPrecioTotal() {
		return this.precioTotal;
	}
	
	public List <Producto> getProductos(){
		return productos;
	}
}
