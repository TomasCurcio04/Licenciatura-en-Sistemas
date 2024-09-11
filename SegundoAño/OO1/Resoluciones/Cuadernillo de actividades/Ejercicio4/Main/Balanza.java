package ar.edu.unlp.info.oo1.Ejercicio4;

import java.util.LinkedList;
import java.util.List;

public class Balanza {
	private List<Producto> productos=new LinkedList<Producto>();
	
	public void ponerEnCero() {
		this.productos.clear();
	}
	
	public void agregarProducto(Producto producto) {
		this.productos.add(producto);
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
		double tot=0;
		for(Producto p:productos)
			tot+=p.getPrecio();
		return tot;
	}
	
	public Ticket emitirTicket() {
		Ticket ticke=new Ticket(this.productos);
		return ticke;
	}
	
	public List <Producto> getProductos(){
		return productos;
	}
}
