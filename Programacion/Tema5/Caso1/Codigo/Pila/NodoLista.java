package PILA;



public class NodoLista {

	private int dato; // dato de cada nodo
	private NodoLista sig; // puntero de cada nodo
	
	
	//constructor 
	
	public NodoLista (int x, NodoLista n) {
		
		dato=x;
		sig=n;
		
	}

	//getter y setters
	
	public int getDato() {
		return dato;
	}


	public void setDato(int dato) {
		this.dato = dato;
	}


	public NodoLista getSig() {
		return sig;
	}


	public void setSig(NodoLista sig) {
		this.sig = sig;
	}
	
	
}




