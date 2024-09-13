package ar.edu.unlp.info.o1.Ejercicio3_Presupuesto;
import java.time.*;
import java.util.*;
public class Presupuesto {
	private LocalDate fecha;
	private String cliente;
	private List <Item> items;
	
	public Presupuesto(String cliente) {
		this.fecha=LocalDate.now();
		this.cliente=cliente;
		this.items=new LinkedList<Item>();
	}
	
	public LocalDate getFecha() {
		return fecha;
	}

	public String getCliente() {
		return cliente;
	}

	public void agregarItem(Item item) {
		this.items.add(item);
	}
	
	public double calcularTotal() {
		return this.items.stream().mapToDouble(Item::costo).sum();
	}
	
}
