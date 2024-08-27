package tp1.ejercicio7;
import java.util.*;
import PaqueteLectura.*;
public class InvertirArray {
	private ArrayList<Integer> invertida=new ArrayList<Integer>();
	private Integer num;
	
	public void invertirArrayList(ArrayList <Integer> lista) {
		if(lista.size()==0) {
			lista.addAll(invertida);
		}
		else {
			num=lista.get(lista.size()-1);
			lista.remove(lista.size()-1);
			invertida.add(num);
			invertirArrayList(lista);
		}
	
	}
	
	public static void main(String[] args) {
		System.out.println("Punto h");
		GeneradorAleatorio.iniciar();
		InvertirArray ia=new InvertirArray();
		ArrayList<Integer> lista=new ArrayList<Integer>();
		for(int i=0;i<10;i++) {
			lista.add(GeneradorAleatorio.generarInt(500));
		}
		for(Integer i:lista) {
			System.out.print(i+"|");
		}
		System.out.println();
		ia.invertirArrayList(lista);
		for(Integer i:lista) {	
			System.out.print(i+"|");
		}
	}
}
