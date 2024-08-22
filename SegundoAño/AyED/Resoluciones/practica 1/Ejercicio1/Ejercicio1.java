package tp1.ejercicio1;

public class Ejercicio1 {
	
	public static void imprimir1(int a,int b) {
		for (int i=a;i<=b;i++) {
			System.out.println(i);
		}
	}
	
	public static void imprimir2(int a,int b) {
		while(a<=b) {
			System.out.println(a);
			a++;
		}	
	}

	public static void imprimir3(int a,int b) {
		if(a<=b) {
			System.out.println(a);
			imprimir3(a+1,b);
		}
	}
}
