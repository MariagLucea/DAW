package PILA;


public class Pila {
	
    
    private NodoLista raiz; //primer nodo 
    
    
    //constructor
    
    public Pila () {
        raiz=null;
    }
    
    // insertar datos en la pila
    
    public void insertar(int dato) {
    	NodoLista nuevo = new NodoLista(dato,raiz);
        raiz=nuevo;
    }
    
    // recuperar  datos de la pila
    
    public int recuperar () {
    int resultado;
    if (raiz==null) {
    	System.out.println("La pila está vacia");
    }
    
    resultado=raiz.getDato();
    raiz=raiz.getSig();
    return resultado;
    
    }
    
   //obtenemos el dato de la cima de la pila
    
    public void obtenerCima() {
    	System.out.println(raiz.getDato());
    }
    
    //devolver el dato de la cima de la pila
    
    public int devolverCima() {
    	return raiz.getDato();
    }
   
}

