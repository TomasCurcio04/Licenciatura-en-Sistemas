package ar.edu.unlp.info.oo1.Ejercicio8;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Gerente alan = new Gerente("Alan Turing");
		double aportesDeAlan = alan.aportes();
		
		Gerente alan1 = new Gerente("Alan Turing");
		double sueldoBasicoDeAlan1 = alan1.sueldoBasico();
		System.out.println(aportesDeAlan);
		System.out.println(sueldoBasicoDeAlan1);
		/*1) alan.aportes(); -> 1)Se ejecuta metodo +aportes de la clase Gerente, 2) Se ejecuta
		 metodo +montoBasico de la clase Gerente. 
		 
		 alan1.sueldoBasico(); 1)Se ejecuta metodo +SueldoBasico de la clase EmpleadoJerarquico
		 2)Se ejecuta metodo +SueldoBasico de la clase Empleado, 3)Se ejecuta metodo +MontoBasico
		 de la clase Gerente, 4)Se ejcuta metodo +aportes de la clase Gerente, 5)Se ejecuta 
		 metodo +BonoPorCategoria de la clase EmpleadoJerarquico.
		*/
		
		/*2) aportesDeAlan=2850.00 y sueldoBasicoDeAlan1= 67850*/
		
	}

}
