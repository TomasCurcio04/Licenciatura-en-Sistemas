package tp2.ejercicio5;

import tp2.ejercicio1y2.BinaryTree;

public class PruebaEjercicio5 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		BinaryTree<Integer> ab=new BinaryTree<Integer>(1);
		
		ab.addLeftChild(new BinaryTree<Integer>(2));
		ab.addRightChild(new BinaryTree<Integer>(3));
		
		ab.getLeftChild().addLeftChild(new BinaryTree<Integer>(4));;
		ab.getLeftChild().addRightChild(new BinaryTree<Integer>(5));
		ab.getRightChild().addLeftChild(new BinaryTree<Integer>(6));
		ab.getRightChild().addRightChild(new BinaryTree<>(7));
		
		ab.getLeftChild().getLeftChild().addLeftChild(new BinaryTree<>(8));
        ab.getLeftChild().getLeftChild().addRightChild(new BinaryTree<>(9));
        ab.getLeftChild().getRightChild().addLeftChild(new BinaryTree<>(10));
        ab.getLeftChild().getRightChild().addRightChild(new BinaryTree<>(11));
        ab.getRightChild().getLeftChild().addLeftChild(new BinaryTree<>(12));
        ab.getRightChild().getLeftChild().addRightChild(new BinaryTree<>(13));
        ab.getRightChild().getRightChild().addLeftChild(new BinaryTree<>(14));
        ab.getRightChild().getRightChild().addRightChild(new BinaryTree<>(15));
        
		ProfundidadArbolBinario pab=new ProfundidadArbolBinario(ab);
		System.out.println(pab.sumaElementosProfundidad(2));
	}

}
