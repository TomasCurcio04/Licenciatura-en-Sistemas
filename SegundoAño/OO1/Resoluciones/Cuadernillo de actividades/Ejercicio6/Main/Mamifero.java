package ar.edu.unlp.info.oo1.Ejercicio_6;
import java.util.*;

public class Mamifero {
	private Mamifero padre;
	private Mamifero madre;
	private String especie;
	private String identificador;
	private Date fechaNacimiento;
	
	public Mamifero () {}
	
	public Mamifero (String identificador) {
		this.identificador=identificador;
	}
	
	public void setPadre(Mamifero padre) {
		this.padre=padre;
	}
	
	public void setMadre (Mamifero madre) {
		this.madre=madre;
	}
	
	public Mamifero getPadre() {
		return this.padre;
	}
	public Mamifero getMadre() {
		return this.madre;
	}
	
	public Mamifero getAbuelaMaterna() {
		if(this.getMadre()!=null) {
			Mamifero madre = this.getMadre();
			if(madre.getMadre()!=null) {
				Mamifero abuelaMaterna = madre.getMadre();
				return abuelaMaterna;
			}
			else return null;
		}
		else return null;
	}
	
	
	public Mamifero getAbuelaPaterna() {
		if(this.getPadre()!=null) {
			Mamifero padre = this.getPadre();
			if(padre.getMadre()!=null) {
				Mamifero abuelaPaterna = padre.getMadre();
				return abuelaPaterna;
			}
			else return null;
		}
		else return null;
	}
		
	
	public Mamifero getAbueloMaterno() {
		if(this.getMadre()!=null) {
			Mamifero madre = this.getMadre();
			if(madre.getPadre()!=null) {
				Mamifero abueloMaterno = madre.getPadre();
				return abueloMaterno;
			}
			else return null;
		}
		else return null;
	}

	public Mamifero getAbueloPaterno() {
		if(this.getPadre()!=null) {
			Mamifero padre = this.getPadre();
			if(padre.getPadre()!=null) {
				Mamifero abueloPaterno = padre.getPadre();
				return abueloPaterno;
			}
			else return null;
		}
		else return null;
	}
	
	public void setEspecie(String especie) {
		this.especie=especie;
	}
	
	public String getEspecie() {
		return this.especie;
	}
	
	public void setIdentificador (String identificador) {
		this.identificador=identificador;
	}
	
	public String getIdentificador() {
		return this.identificador;
	}
	
	public Date getFechadeNacimiento() {
		return this.fechaNacimiento;
	}
	
	public void setFechadeNacimiento(Date fechaNacimiento) {
		this.fechaNacimiento=fechaNacimiento;
	}
	
	public boolean tieneComoAncestroA(Mamifero m) {
		if((this.padre==m) || (this.madre==m) || 
		(this.padre!=null && this.padre.tieneComoAncestroA(m) ||
		(this.madre!=null && this.madre.tieneComoAncestroA(m)))) {
				return true;
		}
		else
			return false;
	}
	
	
	
	
	
	
	
	
}
