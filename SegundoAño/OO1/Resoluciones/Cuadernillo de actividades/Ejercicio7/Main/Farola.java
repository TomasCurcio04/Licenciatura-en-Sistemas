package ar.edu.unlp.info.oo1.Ejercicio7;
import java.util.*;
public class Farola {
	private boolean prendida;
	private List<Farola> farolas;
	
	
	
	public Farola () {
		this.prendida=false;
		this.farolas=new ArrayList<Farola>();
	}
	
	public void pairWithNeighbor(Farola otraFarola) {
		if(!this.farolas.contains(otraFarola)) {
			this.farolas.add(otraFarola);
			otraFarola.pairWithNeighbor(this);
		}
	}
	
	public List <Farola> getNeighbors (){
		return farolas;
	}
	
	public void turnOn() {
		if(this.isOn()==false) {
			this.prendida=true;
			for(Farola f: farolas) {
				f.turnOn();			
			}
		}
	}
	
	public boolean isOff() {
		return prendida==false;
	}
	public void turnOff() {
		if(this.isOn()==true) {
			this.prendida=false;
			for(Farola f:farolas) {
				f.turnOff();
			}
		}
	}
	
	public boolean isOn() {
		return prendida;
	}
	
}
