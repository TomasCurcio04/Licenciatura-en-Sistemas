package ar.edu.unlp.info.oo1.Ejercicio4;
import java.time.LocalDate;
import java.util.*;
public class Ticket {
	private LocalDate fecha;
	private List<Producto> productos=new LinkedList <Producto>();
	
	public Ticket (List<Producto> productos) {
		this.fecha=LocalDate.now();
		this.productos=productos;
	}
	
	public double impuesto() {
		return this .getPrecioTotal()*0.21;
	}

	public LocalDate getFecha() {
		return fecha;
	}


	public double getPesoTotal() {
		double tot=0;
		for(Producto p:productos)
			tot+=p.getPeso();
		return tot;
	}

	public int getCantidadDeProductos() {
		return this.productos.size();
	}

	public double getPrecioTotal() {
		return this.productos.stream().mapToDouble(Producto::getPrecio).sum();
	}
	
	
	public List <Producto> getProductos(){
		return productos;
	}
}
