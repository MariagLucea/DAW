package PILA;


public class Principal {

	public static void main(String[] args) {
		
		//probamos nuestra pila
		
		System.out.println("Prueba de la pila");
		
		Pila pilaPrueba = new Pila ();
		pilaPrueba.insertar(1);
		pilaPrueba.insertar(2);
		pilaPrueba.insertar(3);
		pilaPrueba.insertar(4);
		pilaPrueba.insertar(5);
		pilaPrueba.insertar(6);
		pilaPrueba.insertar(7);
		pilaPrueba.insertar(8);
		pilaPrueba.obtenerCima();
		System.out.println(pilaPrueba.devolverCima());
		System.out.println(pilaPrueba.recuperar());
		System.out.println(pilaPrueba.recuperar());
		System.out.println(pilaPrueba.recuperar());
		System.out.println(pilaPrueba.recuperar());
		System.out.println(pilaPrueba.recuperar());
		System.out.println(pilaPrueba.recuperar());
		System.out.println(pilaPrueba.recuperar());
		System.out.println(pilaPrueba.recuperar());
		
	}

}