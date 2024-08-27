package tp1.ejercicio7;
import java.util.*;
public class EsCapicua {
	
	public  boolean capicua(ArrayList <Integer> lista) {
		if(lista.isEmpty()) {
			return false;
		}
		else {
			boolean ok=true;
			int tam=lista.size() / 2;
			int i=0;
			while((i<tam) && (ok==true)){
				if((lista.get(i)==lista.get(lista.size()-(i+1))) && (ok=true)) {
					i++;
				}
				else {
					ok=false;
				}
			}
			return ok;
		}
	}
	
	public static void main(String[] args) {
		System.out.println("Punto f");
		ArrayList<Integer> lista_capicua=new ArrayList<Integer>();
		lista_capicua.add(5);
		lista_capicua.add(1);
		lista_capicua.add(2);
		lista_capicua.add(1);
		lista_capicua.add(5);
		EsCapicua c=new EsCapicua();
		if(c.capicua(lista_capicua)) {
			System.out.println("Es capicua");
		}
		else {
			System.out.println("No es capicua");
		}
		
		ArrayList<Integer> lista_capicua2=new ArrayList<Integer>();
		lista_capicua2.add(5);
		lista_capicua2.add(1);
		lista_capicua2.add(2);
		lista_capicua2.add(1);
		
		if(c.capicua(lista_capicua2)) {
			System.out.println("Es capicua");
		}
		else {
			System.out.println("No es capicua");
		}
		
		ArrayList<Integer> lista_capicua3=new ArrayList<Integer>();
		if(c.capicua(lista_capicua3)) {
			System.out.println("Es capicua");
		}
		else {
			System.out.println("No es capicua");
		}
	}
}
