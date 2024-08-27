package tp1.ejercicio7;
import java.util.*;
public class EjercicioSucesion {
	private ArrayList<Integer> lista=new ArrayList<Integer>();
	
	public List<Integer> calcularSucesion(int n) {
		lista.add(n);
		if(n==1) {
			return lista;
		}
		else {
			if(n % 2 ==0) {
				calcularSucesion(n/2);
			}
			else {
				calcularSucesion(3*n+1);
			}
			return lista;
		}
	}
	
	
	public static void main(String[] args) {
		System.out.println("Punto g");
		EjercicioSucesion s=new EjercicioSucesion();
		ArrayList<Integer> lista=new ArrayList<Integer>(s.calcularSucesion(6));
		for(Integer i:lista) {
			System.out.print(i+"|");
		}
	}
}
