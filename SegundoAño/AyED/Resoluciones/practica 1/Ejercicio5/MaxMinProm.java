package tp1.ejercicio5;

public class MaxMinProm {
	private static InfoDatos id;
	
	private static int maximo(int v[]) {
		int max=Integer.MIN_VALUE;
		for(int i:v) 
			if(i>max) {
				max=i;
			}
		 return max;
	}
	
	private static int minimo(int v[]) {
		int min = Integer.MAX_VALUE;
		for(int i:v) 
			if(i<min) {
				min=i;
			}
		return (min);
	}

	private static double promedio(int v[]) {
		double prom=0;
		for(int i:v)
			prom+=i;
		return (prom/v.length);
		
	}
	public static InfoDatos primerMetodo(int arreglo[]) {
		InfoDatos id=new InfoDatos(maximo(arreglo),minimo(arreglo),promedio(arreglo));
		return id;
	}
	
	public static void segundoMetodo(int arreglo[],InfoDatos id) {
		id.setMax(maximo(arreglo));
		id.setMin(minimo(arreglo));
		id.setProm(promedio(arreglo));
	}
	
	public static InfoDatos tercerMetodo(int v[]) {
		id=new InfoDatos();
		segundoMetodo(v,id);
		return id;
	}
}
