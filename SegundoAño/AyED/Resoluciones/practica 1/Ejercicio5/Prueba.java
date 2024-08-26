package tp1.ejercicio5;
import PaqueteLectura.*;
public class Prueba {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		GeneradorAleatorio.iniciar();
		int arreglo[]=new int[20];
		for (int i=0;i<20;i++) {
			arreglo[i]=GeneradorAleatorio.generarInt(500);
			System.out.print(arreglo[i]+"|");
		}
		System.out.println();
		System.out.println(MaxMinProm.primerMetodo(arreglo).toString());
		
		InfoDatos id=new InfoDatos();
		MaxMinProm.segundoMetodo(arreglo, id);
		System.out.println(id.toString());
		
		System.out.println(MaxMinProm.tercerMetodo(arreglo).toString());
	}

}
