package tp2.ejercicio4;
import tp2.ejercicio1y2.*;
import tp1.ejercicio8.*;
public class RedBinariaLlena {
	BinaryTree<Integer> ab;
	
	public RedBinariaLlena(BinaryTree<Integer> a) {
		ab=a;
	}
	
	public int retardoReenvio() {
		int tot=0;
		int max=Integer.MIN_VALUE;
		Queue<BinaryTree<Integer>> cola=new Queue<BinaryTree<Integer>>();
		cola.enqueue(ab);
		cola.enqueue(null);
		BinaryTree<Integer> a=null;
		while(!cola.isEmpty()) {
			a=cola.dequeue();
			if(a!=null) {
				if(a.getData()>=max) {
					max=a.getData();
				}
				if(a.hasLeftChild())
					cola.enqueue(a.getLeftChild());
				if(a.hasRightChild())
					cola.enqueue(a.getRightChild());
			}
			else {
				tot+=max;
				max=Integer.MIN_VALUE;
				if(!cola.isEmpty()) 
					cola.enqueue(null);
			}
		}
		return tot;
	}
	/*Como me pide el mayor retardo de toda la red, use el recorrido por niveles donde me guardo el maximo de cada nivel 
	y lo sumo a una variable total en la cual se guarda el maximo retardo de toda la red al finalizar el metodo.*/
}
