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
		return this.productos.stream().mapToDouble(producto -> producto.getPeso()).sum();
	}

	public int getCantidadDeProductos() {
		return this.productos.size();
	}

	public double getPrecioTotal() {
		return this.productos.stream().mapToDouble(producto -> producto.getPrecio()).sum();
	}
	
	public Ticket emitirTicket() {
		Ticket ticke=new Ticket(this.getCantidadDeProductos(),this.getPesoTotal(),this.getPrecioTotal(),this.productos);
		this.ponerEnCero();
		return ticke;
	}
	
	public List <Producto> getProductos(){
		return productos;
	}
}
