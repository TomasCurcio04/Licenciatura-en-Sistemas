package tp2.ejercicio6;
import tp2.ejercicio1y2.*;

public class Transformacion {
	private BinaryTree<Integer> ab;
	
	public Transformacion(BinaryTree<Integer> a) {
		ab=a;
	}
	
	public BinaryTree<Integer> suma(){
		suma(ab);
		return ab;
	}
	
	private int suma(BinaryTree<Integer> a){
		int sum=0;
		int actual;
		if(a.isLeaf()) {
			sum=a.getData();
			a.setData(0);
			return sum;
		}
		if(a.hasLeftChild()) {
			sum=sum+suma(a.getLeftChild());	
		}
		if(a.hasRightChild()) {
			sum=sum+suma(a.getRightChild());
		}
		actual=a.getData();
		a.setData(sum);
		return sum+actual;
		
	}
		
}
