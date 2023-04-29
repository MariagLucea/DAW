package COLA;

import java.util.LinkedList;
import java.util.Queue;

public class Cola {

    public static void main(String[] args) {
        Queue<String> cola1 = new LinkedList<String>();
        System.out.println("Insertamos 8 elementos en la cola: numeros enteros del 1-8");
        cola1.add("1");
        cola1.add("2");
        cola1.add("3");
        cola1.add("4");
        cola1.add("5");
        cola1.add("6");
        cola1.add("7");
        cola1.add("8");
        
        //el primer elemento de la cola es 1
        System.out.println("Consultamos el primer elemento de la cola sin extraerlo:" + cola1.peek());
        
        //extraemos el primer elemento que es 1, ya que en las colas el primer elemento en entrar es el primero en salir
        System.out.println("Extraemos un elemento de la cola:" + cola1.poll());
        //extraemos los elementos que quedan el la cola (el 1 ya lo sacamos) por lo que se imprimirá desde el 2 en adelante
        System.out.println("Extraemos uno a un cada elemento de la cola mientras no este vacia:");
        while (!cola1.isEmpty())
            System.out.print(cola1.poll() + "-");
        System.out.println();


    }

}