package tp2.ejercicio3;
import tp2.ejercicio1y2.*;
import java.util.*;
public class PruebaEjercicio3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		BinaryTree<Integer> ab=new BinaryTree<Integer>(1);
		ab.addLeftChild(new BinaryTree<Integer>(2));
		ab.addRightChild(new BinaryTree<Integer>(3));
		ab.getLeftChild().addLeftChild(new BinaryTree<Integer>(4));;
		ab.getLeftChild().addRightChild(new BinaryTree<Integer>(5));
		ab.getRightChild().addLeftChild(new BinaryTree<Integer>(6));
		ab.getLeftChild().getLeftChild().addLeftChild(new BinaryTree<Integer>(7));
		
		ContadorArbol ca=new ContadorArbol(ab);
		
		List<Integer> lista1=new LinkedList<Integer>();
		lista1=ca.numerosParesA();	
		System.out.println(lista1.toString());
		
		List<Integer> lista2=new LinkedList<Integer>();
		lista2=ca.numerosParesB();
		System.out.println(lista2.toString());
		
	}
}
