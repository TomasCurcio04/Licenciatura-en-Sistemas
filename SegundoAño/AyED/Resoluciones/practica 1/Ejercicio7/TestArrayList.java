package tp1.ejercicio7;

import java.util.*;
import PaqueteLectura.*;
public class TestArrayList {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		GeneradorAleatorio.iniciar();
		
		System.out.println("Punto a");
		List<Integer> lista_int=new ArrayList <Integer>();
		for(int i=0;i<20;i++) {
			lista_int.add(GeneradorAleatorio.generarInt(500));
		}
		
		for(int i:lista_int) {
			System.out.print(i+"|");
		}
		System.out.println();
		System.out.println("Punto b");//Con una LinkedList lo que cambiaria respecto a la implementacion seria List<Integer> lista_int=new LinkedList();
		System.out.println("Punto c");
		Integer num_actual;
		while(!lista_int.isEmpty()){
			num_actual=lista_int.get(0);
			System.out.print(num_actual+"|");
			lista_int.remove(0);
		}
		System.out.println();
		System.out.println("Punto d.1");
		List<Estudiante> lista_estudiantes=new ArrayList<Estudiante>();
		for(int i=0;i<3;i++) {
			Estudiante e=new Estudiante("Pedro"+i,"Sanchez"+i,"Comision "+i,"PedroSanchez@gmail.com."+i,"8 y "+i);
			lista_estudiantes.add(e);
		}
		
		System.out.println("Punto d.2");
		List<Estudiante> nueva_lista=new ArrayList<Estudiante>();
		nueva_lista=lista_estudiantes;
		
		System.out.println("Punto d.3");
		System.out.println("Primera lista de estudiantes:");
		for(Estudiante i:lista_estudiantes) {
			System.out.println(i.tusDatos());
		}
		System.out.println("Copia de la primera lista de estudiantes:");
		for(Estudiante i:nueva_lista) {
			System.out.println(i.tusDatos());
		}
		
		System.out.println("Punto d.4");
		Estudiante e=new Estudiante("Ramiro","Diaz","Comision 12","RamiroSanchez@gmail.com","8 y 50");
		nueva_lista.set(0, e);
		
		System.out.println("Punto d.5");
		System.out.println("Primera lista de estudiantes:");
		for(Estudiante i:lista_estudiantes) {
			System.out.println(i.tusDatos());
		}
		System.out.println("Copia de la primera lista de estudiantes:");
		for(Estudiante i:nueva_lista) {
			System.out.println(i.tusDatos());
		}
		//Llego a la conclusion que igualando las dos listas haciendo lista1=lista2 hace que apunte a la misma direccion de memoria y que si se cambia una lista la otra tambien se cambiara");
		
		System.out.println("Punto d.6");
		/*Existen 3 formas de copiar una lista la primera es la lista1=lista2, otra es hacer List <T> lista2=new ArrayList <T>(lista1) y otra es hacer lista2.addAll(lista1) la diferencia esta que en 
		estas ultimas dos los cambios no se van a ver reflejados en las dos listas sino que solo en la que se modifico porque son listas independientes y no apuntan a la misma posicion de memoria como en la primera opcion*/
	
		System.out.println("Punto e");
		//Estudiante est=new Estudiante ("Fabricio","Romero","Comision 13","FabricioRomero@gmail.com","50 6 y 7");
		Estudiante est=new Estudiante("Ramiro","Diaz","Comision 12","RamiroSanchez@gmail.com","8 y 50");
		
		if(!lista_estudiantes.contains(est)) {
			lista_estudiantes.add(est);
			System.out.println("Se agrego correctamente a la lista el nuevo estudiante");
		}
		else {
			System.out.println("No se pudo agregar a la lista el estudiante porque ya formaba parte de esta");
		}
		
		
	}
}