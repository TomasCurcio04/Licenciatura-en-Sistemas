package tp1.ejercicio2;

public class Ejercicio2 {
	
	public static int [] arreglo(int n) {
		int array[]=new int [n];
		for(int i=0;i<n;i++) {
			array[i]=(i+1)*n;
		}
		return array;
	}
	
}
