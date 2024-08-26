package tp1.ejercicio5;

public class InfoDatos {
	private int max;
	private int min;
	private double prom;
	
	public InfoDatos(){
	}
	
	public InfoDatos(int max,int min,double prom){
		this.setMax(max);
		this.setMin(min);
		this.setProm(prom);
	}
	
	public int getMax() {
		return max;
	}
	public void setMax(int max) {
		this.max = max;
	}
	public int getMin() {
		return min;
	}
	public void setMin(int min) {
		this.min = min;
	}
	public double getProm() {
		return prom;
	}
	public void setProm(double prom) {
		this.prom = prom;
	}
	@Override
	public String toString() {
		return "El elemento maximo del vector es el "+this.getMax()+" el elemento minimo es el "+this.getMin()+" y el promedio del vector es de "+this.getProm();
	}
	
	
}
