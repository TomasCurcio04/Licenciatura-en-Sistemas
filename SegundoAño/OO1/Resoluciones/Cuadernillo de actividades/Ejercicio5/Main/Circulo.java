package ar.edu.unlp.info.oo1.figurasYCuerpos;

public class Circulo implements Figura {
	private double diametro;
	private double radio;
	
	public Circulo () {
		
	}
	
	public double getDiametro() {
		return radio*2;
	}
	
	public void setDiametro(double diametro) {
		this.diametro = diametro;
		this.radio=this.diametro/2;
	}
	
	public double getRadio() {
		return Math.sqrt(this.getArea()/Math.PI);
	}
	
	public void setRadio(double radio) {
		this.radio = radio;
		this.diametro=this.radio*2;
	}
	
	public double getPerimetro() {
		return Math.PI*diametro;
	}

	public double getArea() {
		return Math.PI*radio*radio;
	}

	
	
}
