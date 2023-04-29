package ud7Caso1;

public class Km0 extends Vehiculo {

	//usamos la palabra extends para indicar que km0 es subclase/clase hija de Vehiculo
	
	//atributo propio de la clase km0
	
	private double kilometros;
	
	
	//constructor con parametros propios y heredados
	
	public Km0 (String matricula, String color, String modelo, double kilometros) {
		super (matricula,color,modelo);
		this.kilometros=kilometros;
	}

	
	//getters y setters para kilómetros que es el atributo propio de Km0, los del resto de atributos se heredan de la clase padre
	

	public double getKilometros() {
		return kilometros;
	}


	public void setKilometros(double kilometros) {
		this.kilometros = kilometros;
	}


	
	// Metodo to String, utilizamos super.to String para mostrar los datos tambien de la clase padre y los concatenamos con los propios
	
	@Override
	
	public String toString() {
		return super.toString()+"Km0 [kilometros=" + kilometros + "]";
	}
	
	
	
	
	
	
	
	
	
	
}
