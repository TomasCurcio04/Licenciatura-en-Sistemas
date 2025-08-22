package Final12Febrero;
import java.util.Scanner;
public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Empresa empresa=new Empresa("SRL alquileres", "San Martin y Corrientes");
		
		Persona persona1=new Persona("Juan",1);

		Persona persona2=new Persona("Pedro",2);

		Persona persona3=new Persona("Lucas",3);

		Persona persona4=new Persona("Tomas",4);
		
		empresa.realizarAlquiler(persona1, 10, 0, 0);

		empresa.realizarAlquiler(persona2, 20, 1, 2);

		empresa.realizarAlquiler(persona3, 30, 2, 4);

		empresa.realizarAlquiler(persona4, 40, 2, 6);
		
		empresa.aumentarAlquiler();
		
		System.out.println(empresa.toString());
		
		System.out.println(empresa.cantAlquiladas(2));
		
		System.out.println("Ingrese un DNI para liberar la oficina alquilada por esa persona");
		Scanner scanner=new Scanner(System.in);
		
		int dni=scanner.nextInt();
		
		empresa.liberarOficina(dni);
	}

}
