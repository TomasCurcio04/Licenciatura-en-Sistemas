package tp2.ejercicio3;
import tp2.ejercicio1y2.*;
import java.util.*;
public class ContadorArbol {
	private BinaryTree<Integer> ab;
	private LinkedList<Integer >lista;
	
	public ContadorArbol(BinaryTree<Integer> a) {
		ab=a;
	}
	
	public LinkedList<Integer> numerosParesA(){
		lista=new LinkedList<Integer>();
		if(!ab.isEmpty())
			numerosParesA(ab);
		return lista;
		
	}
	
	private LinkedList<Integer> numerosParesA( BinaryTree<Integer> a){
		if(a.hasLeftChild())
			numerosParesA(a.getLeftChild());
		if(a.getData()%2==0)
			lista.add(a.getData());
		if(a.hasRightChild())
			numerosParesA(a.getRightChild());
		return lista;
	}

	public LinkedList<Integer> numerosParesB(){
		lista=new LinkedList<Integer>();
		if(!ab.isEmpty())
			numerosParesB(ab);
		return lista;
	}
	
	private LinkedList<Integer> numerosParesB( BinaryTree<Integer> a){
		if(a.hasLeftChild())
			numerosParesA(a.getLeftChild());
		if(a.hasRightChild())
			numerosParesA(a.getRightChild());
		if(a.getData()%2==0)
			lista.add(a.getData());
		return lista;
	}
	
	
}