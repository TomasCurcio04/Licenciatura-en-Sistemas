package tp1.ejercicio7;
import java.util.*;
import PaqueteLectura.*;
public class Ordenados {
	
	
	public ArrayList<Integer> combinarOrdenado(ArrayList<Integer> lista1, ArrayList<Integer> lista2){
		ArrayList <Integer>nuevaLista=new ArrayList <Integer>();
		int pos1=0;
		int pos2=0;
		
		while((lista1.size()!=pos1) && (lista2.size()!=pos2)) {
			if(lista1.get(pos1)<lista2.get(pos2)) {
				nuevaLista.add(lista1.get(pos1));
				pos1++;
			}
			else {
				nuevaLista.add(lista2.get(pos2));
				pos2++;
			}
		}
		while ((lista1.size()!=pos1)) {
			nuevaLista.add(lista1.get(pos1));
			pos1++;
		}
		while ((lista2.size()!=pos2)) {
			nuevaLista.add(lista2.get(pos2));
			pos2++;
		}
		return nuevaLista;
	}
	
		public static void main(String[] args) {
		System.out.println("Punto j");
		PaqueteLectura.GeneradorAleatorio.iniciar();
		ArrayList <Integer>lista1=new ArrayList <Integer>();
		ArrayList <Integer>lista2=new ArrayList <Integer>();
		
		for(int i=0;i<10;i++) {
			lista1.add(GeneradorAleatorio.generarInt(1000));
			lista2.add(GeneradorAleatorio.generarInt(500));
		}
		
		Collections.sort(lista1);
		Collections.sort(lista2);
		
		for(Integer i:lista1)
			System.out.print(i+"|");
		System.out.println();
		for(Integer i:lista2)
			System.out.print(i+"|");
		System.out.println();
		Ordenados o=new Ordenados();
		ArrayList <Integer>nuevaLista=o.combinarOrdenado(lista1, lista2);
		for(Integer i:nuevaLista)
			System.out.print(i+"|");
	}
}
