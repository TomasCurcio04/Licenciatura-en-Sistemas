package tp1.ejercicio7;

public class Estudiante {
	private String nombre;
	private String apellido;
	private String comision;
	private String email;
	private String direccion;
	
	public  Estudiante(String nombre,String apellido,String comision,String email,String direccion) {
	  this.setNombre(nombre);
	  this.setApellido(apellido);
	  this.setComision(comision);
	  this.setEmail(email);
	  this.setDireccion(direccion);
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public String getComision() {
		return comision;
	}
	public void setComision(String comision) {
		this.comision = comision;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	
	public String tusDatos () {
		return  ("Nombre: "+this.getNombre()+" Apellido: "+this.getApellido()+
		" Comision: "+this.getComision()+" Email: "+this.getEmail()+" Direccion: "+this.getDireccion());
	}
	
	 @Override
	    public boolean equals(Object obj){
	        boolean result = false;
	        if((obj!=null) && (obj instanceof Estudiante)) {
	            Estudiante e = (Estudiante)obj;
	            if((e.getApellido()== this.getApellido())&& (e.getNombre()==this.getNombre()) && (e.getComision()==this.comision) && (e.getEmail()==this.email) && (e.getDireccion()==this.direccion)) result = true;
	        }
	        return result;
	    }
}