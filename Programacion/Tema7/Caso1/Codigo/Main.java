package ud7Caso1;

public class Main {

	public static void main(String[] args) {
		
		// creamos un vehiculo de cada tipo con sus atributos, tanto heredados como propios de la clase
		
		Km0 v1= new Km0 ("4569kl","azul","15sl", 10.450);
		SegundaMano v2=new SegundaMano ("8521PO","rojo","85tr", 120.325, "Luisa Perez");
		Nuevos v3=new Nuevos("8521TR","gris","14fd");
	
		//mostramos los datos de cada vehiculo
		
		System.out.println(v1.toString());
		System.out.println(v2.toString());
		System.out.println(v3.toString());
		
		
	}

}
