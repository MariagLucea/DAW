package ud7Caso1;

public class Vehiculo {

	//tenemos la clase vehiculo que será nuestra clase padre/super clase
	
	
	//Atributos comunes a todos los tipos de coches
	
	private String matricula;
	private String color;
	private String modelo;
	
	
	
	//constructor con parametros
	
	public Vehiculo (String matricula, String color, String modelo) {
		this.matricula=matricula;
		this.color=color;
		this.modelo=modelo;
		
	}

	//getters y setters
	

	public String getMatricula() {
		return matricula;
	}



	public void setMatricula(String matricula) {
		this.matricula = matricula;
	}



	public String getColor() {
		return color;
	}



	public void setColor(String color) {
		this.color = color;
	}



	public String getModelo() {
		return modelo;
	}



	public void setModelo(String modelo) {
		this.modelo = modelo;
	}
	
	// metodo to String
	
	@Override
	public String toString() {
		return "Vehiculo [matricula=" + matricula + ", color=" + color + ", modelo=" + modelo + "]";
	}
	

	
	
}//no borrar
