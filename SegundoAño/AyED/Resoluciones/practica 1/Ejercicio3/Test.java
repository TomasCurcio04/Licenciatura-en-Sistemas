package tp1.ejercicio3;
public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Estudiante arrayEstu[]=new Estudiante[2];
		Profesor arrayProf[]=new Profesor[3];
		
		for(int i=0;i<2;i++) {
			arrayEstu[i]=new Estudiante("Lucas"+i,"Gonzales"+i,"LucasGonzales@gmail.com."+i,""+i,"Rivadavia"+i);
		}
		
		for(int i=0;i<3;i++) {
			arrayProf[i]=new Profesor("Genaro"+i,"Fernandez"+i,"GenaroFernandez@gmail."+i,""+i,"Pelegrini"+i);
		}
		
		for(int i=0;i<2;i++) {
			System.out.println(arrayEstu[i].tusDatos());
		}
		
		System.out.println();
		
		for(int i=0;i<3;i++) {
			System.out.println(arrayProf[i].tusDatos());
		}
		
	}
}
