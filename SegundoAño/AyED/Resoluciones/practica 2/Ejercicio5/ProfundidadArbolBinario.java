package tp2.ejercicio5;
import tp2.ejercicio1y2.*;
import tp1.ejercicio8.*;
public class ProfundidadArbolBinario {
	private BinaryTree<Integer> ab;
	
	
	public ProfundidadArbolBinario(BinaryTree<Integer> a){
		ab=a;
	}
	
	public int sumaElementosProfundidad(int p) {
		Queue<BinaryTree<Integer>> cola=new Queue<BinaryTree<Integer>>();
		int suma=0;
		int nivel=0;
		BinaryTree<Integer> a;
		cola.enqueue(ab);
		cola.enqueue(null);
		while(!cola.isEmpty()) {
			a=cola.dequeue();
			if(a!=null) {
				if(nivel== p)
					suma+=a.getData();
				if(a.hasLeftChild())
					cola.enqueue(a.getLeftChild());
				if(a.hasRightChild())
					cola.enqueue(a.getRightChild());
			}
			else if(!cola.isEmpty()) {
				nivel++;
				cola.enqueue(null);
			}
		}
		return suma;
	}
}
