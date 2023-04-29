
import java.io.*;
import java.util.ArrayList;
import java.util.Arrays;

public class Vector {

		// leemos los numeros de vector.txt
	
		public static void main(String[] args)throws Exception
		{
			File doc = new File("vector.txt");

			ArrayList <Integer> vector = new ArrayList <> ();

			BufferedReader obj = new BufferedReader(new FileReader(doc));

			// Para que los numeros no esten repetidos
			
			String cadena;
			int leer;

			while ((cadena = obj.readLine()) != null) {

				leer= Integer.parseInt(cadena);

				if (!vector.contains (leer))
					vector.add(leer);
			}
			
			//ordenamos vector con el algoritmo de la burbuja
			
			
			int aux;
			
			for (int i = 0; i < vector.size ()- 1; i++) {
				for (int j = 0; j < vector.size () - i - 1; j++) {                                                              
					if (vector.get(j + 1) < vector.get(j)) {
						aux = vector.get(j + 1);
						vector.set(j + 1, vector.get(j));
						vector.set(j, aux);
					}
				}
			}

			for (int i = 0; i < vector.size (); i++ )
				System.out.println(vector.get(i));
			
			// Funcion para saber si un numero está en el vector(true) o no (false)
			
			 int[] arr = {5,30,20,0,1,3,23,15,18,4,3,2,105,84,32};
	            int key = 14;
	            boolean val = contains(arr, key);
	            System.out.println("Array contains "+key+"? \n"+val);
	    }
	    public static boolean contains(final int[] arr, final int key) {
	        return Arrays.asList(arr).contains(key);
			
		
			
		}

	}


	

