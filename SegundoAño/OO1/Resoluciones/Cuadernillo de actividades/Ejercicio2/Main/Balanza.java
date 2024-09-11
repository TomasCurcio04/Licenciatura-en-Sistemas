package ar.edu.unlp.info.o1.balanzaElectronica;

public class Balanza {
	private int cantidadDeProductos;
	private double precioTotal;
	private double pesoTotal;
	
	
	public void ponerEnCero() {
		this.cantidadDeProductos=0;
		this.precioTotal=0;
		this.pesoTotal=0;
	}
	
	public void agregarProducto(Producto producto) {
		this.cantidadDeProductos++;
		this.pesoTotal+=producto.getPeso();
		this.precioTotal+=producto.getPrecio();
	}
	
	public double getPesoTotal() {
		return this.pesoTotal;
	}

	public int getCantidadDeProductos() {
		return cantidadDeProductos;
	}

	public double getPrecioTotal() {
		return precioTotal;
	}
	
	
	public Ticket emitirTicket() {
		Ticket ticke=new Ticket(this.cantidadDeProductos,this.pesoTotal,this.precioTotal);
		return ticke;
	}
}
