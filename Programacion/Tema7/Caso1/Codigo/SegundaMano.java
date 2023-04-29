package ud7Caso1;

public class SegundaMano extends Vehiculo {
	
	//usamos la palabra extends para indicar que SegundaMano es subclase/clase hija de Vehiculo
	
	//atributos propios de la clase SegundaMano

	private double kilometros;// podemos usar el atributo kilometro aunque tambíen este en Km0, ya que estas clases no heredan la una de la otra
	private String nombre;
	
	

	//constructor con parametros propios y heredados
	
	public SegundaMano (String matricula, String color, String modelo, double kilometros, String nombre) {
		super (matricula,color,modelo);
		this.kilometros=kilometros;
		this.nombre=nombre;
	}


	//getters y setters para kilómetros y nombre que son los atributos propios de Km0, los del resto de atributos se heredan de la clase padre
	public double getKilometros() {
		return kilometros;
	}



	public void setKilometros(double kilometros) {
		this.kilometros = kilometros;
	}



	public String getNombre() {
		return nombre;
	}



	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	
	// Metodo to String, utilizamos super.to String para mostrar los datos tambien de la clase padre y los concatenamos con los propios
	
	@Override
	public String toString() {
		return super.toString()+"SegundaMano [kilometros=" + kilometros + ", nombre=" + nombre + "]";
	}

	
	
	
	
}
