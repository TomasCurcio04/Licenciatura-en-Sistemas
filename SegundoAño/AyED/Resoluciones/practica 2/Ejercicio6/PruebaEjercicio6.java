package tp2.ejercicio6;

import tp2.ejercicio1y2.*;

public class PruebaEjercicio6 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		BinaryTree<Integer> ab=new BinaryTree<Integer>(1);
		
		ab.addLeftChild(new BinaryTree<Integer>(2));
		ab.addRightChild(new BinaryTree<Integer>(3));
		
		ab.getLeftChild().addRightChild(new BinaryTree<Integer>(4));
		
		ab.getRightChild().addLeftChild(new BinaryTree<Integer>(5));
		ab.getRightChild().addRightChild(new BinaryTree<>(6));
		
	        ab.getRightChild().getLeftChild().addLeftChild(new BinaryTree<>(7));
	        ab.getRightChild().getLeftChild().addRightChild(new BinaryTree<>(8));
	        
	        ab.imprimirArbol();
	        System.out.println();
        
		Transformacion t=new Transformacion(ab);
		BinaryTree<Integer> trans=new BinaryTree<Integer>();
		trans=t.suma();
		trans.imprimirArbol();
	}

}
