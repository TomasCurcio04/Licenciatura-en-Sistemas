package tp1.ejercicio2;
import java.util.Scanner;

public class PruebaEje2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner s=new Scanner (System.in);
		System.out.println("Ingrese un numero entero para la dimension del arreglo");
		int num=s.nextInt();
		int arreglo[]=Ejercicio2.arreglo(num);
		for (int i=0;i<num;i++) {
			System.out.print(arreglo[i]+"|");
		}
	}

}
