package tp1.ejercicio7;
import java.util.*;
import PaqueteLectura.*;

public class Suma {
	private int suma=0;
	public int sumarLinkedList (LinkedList<Integer> lista) {
		if(!lista.isEmpty()) {
			suma=sumarLinkedList(lista,lista.size()-1);
		}
		return suma;
	}
	
	private int sumarLinkedList(LinkedList<Integer>lista, int pos) {
		if(pos<0) {
			return 0;
		}
		else {
			 suma=suma+lista.get(pos);
			 sumarLinkedList(lista,pos-1);
			 return suma;
		}
	}
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("Punto i");
		GeneradorAleatorio.iniciar();
		LinkedList<Integer> lista=new LinkedList<Integer>();
		for(int i=0;i<10;i++) {
			lista.add(GeneradorAleatorio.generarInt(500));
			System.out.print(lista.get(i)+"|");
		}
		System.out.println();
		Suma s=new Suma();
		System.out.println("La suma de todos los elementos de la lista es "+s.sumarLinkedList(lista));
	}
	

}
