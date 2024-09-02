package tp2.ejercicio1y2;
import tp1.ejercicio8.*;
//Ejercicio 1
public class BinaryTree<T> {
	private T data;
	private BinaryTree<T> leftChild;
	private BinaryTree<T> rightChild;

	public BinaryTree() {
		super();
	}

	public BinaryTree(T data) {
		this.data = data;
	}

	public T getData() {
		return data;
	}

	public void setData(T data) {
		this.data = data;
	}

	public BinaryTree<T> getLeftChild() {
		return leftChild;
	}

	public BinaryTree<T> getRightChild() {
		return rightChild;
	}

	public void addLeftChild(BinaryTree<T> child) {
		this.leftChild = child;
	}

	public void addRightChild(BinaryTree<T> child) {
		this.rightChild = child;
	}

	public void removeLeftChild() {
		this.leftChild = null;
	}

	public void removeRightChild() {
		this.rightChild = null;
	}

	public boolean isEmpty() {
		return (this.isLeaf() && this.getData() == null);
	}

	public boolean isLeaf() {
		return (!this.hasLeftChild() && !this.hasRightChild());
	}

	public boolean hasLeftChild() {
		return this.leftChild != null;
	}

	public boolean hasRightChild() {
		return this.rightChild != null;
	}

	@Override
	public String toString() {
		return this.getData().toString();
	}
	// Ejercicio 2

	public int contarHojas() {
		if (!this.isEmpty())
			return contarHojas(this);
		else
			return 0;
	}

	private int contarHojas(BinaryTree<T> ab) {
		int cant = 0;
		if (ab.isLeaf()) {
			return 1;
		} else {
			if (ab.hasLeftChild())
				cant += contarHojas(ab.getLeftChild());
			if (ab.hasRightChild())
				cant += contarHojas(ab.getRightChild());
		}
		return cant;

	}

	public BinaryTree<T> espejo() {
		if (!this.isEmpty()) {
			BinaryTree<T> esp = new BinaryTree<T>(this.getData());
			espejo(esp, this);
			return esp;
		}
		else
			return this;
	}

	private BinaryTree<T> espejo(BinaryTree<T> esp, BinaryTree<T> ab) {
		if (ab.hasLeftChild()) {
			esp.addRightChild(new BinaryTree<T>(ab.getLeftChild().getData()));
			espejo(esp.getRightChild(),ab.getLeftChild());
		}
		if (ab.hasRightChild()) {
			esp.addLeftChild(new BinaryTree<T>(ab.getRightChild().getData()));
			espejo(esp.getLeftChild(), ab.getRightChild());
		}
		return esp;
	}

	public void entreNiveles(int n, int m) {
		int nivel=0;
		Queue<BinaryTree<T>> cola=new Queue<BinaryTree<T>>();
		cola.enqueue(this);
		cola.enqueue(null);
		BinaryTree<T> ab=null;
		while(!cola.isEmpty()) {
			ab=cola.dequeue();
			if(ab!=null)  {
				if((nivel>=n)&& (nivel<=m))
					System.out.print(ab.getData()+" ");
				if(ab.hasLeftChild())
					cola.enqueue(ab.getLeftChild());
				if(ab.hasRightChild())
					cola.enqueue(ab.getRightChild());
			}
			else if(!cola.isEmpty()) {
				cola.enqueue(null);
				nivel++;
				System.out.println();
			}
		}
	}
	
	public void imprimirArbol() {
		System.out.print(this.getData()+" ");
		if (this.hasLeftChild()) 
			this.getLeftChild().imprimirArbol();
		if (this.hasRightChild()) 
			this.getRightChild().imprimirArbol();
	}

	public static void main(String[] args) {
		System.out.println("Test metodos Arboles");
		BinaryTree<Integer> ab = new BinaryTree<Integer>(1);
		ab.addLeftChild(new BinaryTree<Integer>(2));
		ab.addRightChild(new BinaryTree<Integer>(3));
		ab.getLeftChild().addLeftChild(new BinaryTree<Integer>(4));
		ab.getLeftChild().addRightChild(new BinaryTree<Integer>(5));
		ab.getRightChild().addLeftChild(new BinaryTree<Integer>(6));
		ab.getLeftChild().getLeftChild().addLeftChild(new BinaryTree<Integer>(7));
		System.out.println(ab.contarHojas());
		
		BinaryTree<Integer> esp=new BinaryTree<Integer>();
		ab.imprimirArbol();
		
		System.out.println();
		
		esp=ab.espejo();
		esp.imprimirArbol();
		
		ab.entreNiveles(2,3); 

	}
}

