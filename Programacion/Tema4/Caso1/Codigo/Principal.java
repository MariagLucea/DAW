package caso1;

public class Principal {

	public static void main(String[] args) {
		
	
		
		//objeto de la clase Administrativo, lo llamamos administrativo1
		Administrativo administrativo1= new Administrativo ("Juan","Perez","Lopez","Sevilla","955884512", "7412-y",1500);
		
		//objeto de la clase Contable, lo llamamos contable1
		Contable contable1= new Contable ("Maria","Rodriguez","Avila","Huelva","954184522", "5121-p",1752.95);
		
		//objeto de la clase Informatico, lo llamamos informatico 1
		Informatico informatico1= new Informatico ("Andrea","Martinez","Delgado","Cadiz","9152284512", "5239-y",1960.85);
		
		//En los objetos anteriores he dado valores a los parametros para que sea mas ilustrativo cuando lo veamos por pantalla
		
		
		//imprimimos por pantalla los datos de nustros 3 objetos usando el metodo imprimirDatos creado en la clase padre: Empleado
		System.out.println(administrativo1.imprimirDatos());
		System.out.println(contable1.imprimirDatos());	
		System.out.println(informatico1.imprimirDatos());
		
	}

}
