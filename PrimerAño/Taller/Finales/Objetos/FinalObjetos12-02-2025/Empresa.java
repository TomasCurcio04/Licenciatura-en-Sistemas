package Final12Febrero;

import java.util.Arrays;

public class Empresa {
	private String nombre;
	private String direccion;
	private Oficina[][] oficina=new Oficina [3][10];
	
	public Empresa(String nombre, String direccion) {
		for (int i=0;i<3;i++)
			for (int j=0;j<10;j++) {
				oficina[i][j]=new Oficina();
				oficina[i][j].setAlquilada(false);
				oficina[i][j].setMonto(0);
			}
		this.direccion=direccion;
		this.nombre=nombre;
	}
	
	public void realizarAlquiler(Persona persona, double monto, int piso,int oficina) {
		this.oficina[piso][oficina].setAlquilada(true);
		this.oficina[piso][oficina].setMonto(monto);
		this.oficina[piso][oficina].setPersona(persona);
	}
	
	public void liberarOficina(int DNI) {
		boolean ocupada=true;
		for (int i=0;i<3;i++)
			for (int j=0;j<10;j++) {
			  
				if( (oficina[i][j].getPersona()!=null) && (oficina[i][j].getPersona().getDNI()==DNI) ) {
					oficina[i][j].setAlquilada(false);
					System.out.println("Oficina liberada de la persona con DNI "+DNI);
					ocupada=false;
				}
			}
		if(ocupada==true)
			System.out.print("Oficina no encontrada alquilada por persona con DNI "+ DNI);
	}
	

	public void aumentarAlquiler() {
		int aumento=5;
		for (int i=0;i<3;i++) {
			for (int j=0;j<10;j++) 
				oficina[i][j].setMonto(oficina[i][j].getMonto()+(oficina[i][j].getMonto()*aumento/100));
			aumento=aumento+5;
		}
	}
	
	public int cantAlquiladas(int piso) {
		int cant=0;
		for (int i=0;i<10;i++)
			if(oficina[piso][i].isAlquilada()==true)
				cant+=1;
		return cant;
	}
	
	@Override
	public String toString() {
		String total="Empresa [nombre=" + nombre + ", direccion=" + direccion+"\n";
		for (int i=0;i<3;i++) 
			for (int j=0;j<10;j++) 
				total+="Piso: "+(i+1) +" Oficina: "+(j+1) + oficina[i][j].toString() + "\n";
		return total;
	}
}
