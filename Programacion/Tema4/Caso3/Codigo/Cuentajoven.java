package caso3;

public class Cuentajoven extends Cuenta {
	
	//Atributos, además de estos heredará los de la clase Cuenta
	
	private double bonificacion= 10; 
	private int edad;
	
	
	//constructor
	
	public Cuentajoven () {
		
	}
	
	//metodos getter y setter
	
	public double getBonificacion() {
		return bonificacion;
	}
	
	public void setBonificacion() {
		this.bonificacion=bonificacion;
	}
	
	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}
	
	
	//metodo esTitularValido  para saber si el titular cumple o no la condicion para tener cuenta joven
	
	boolean r =esTitularValido (edad);
	
	
	public boolean esTitularValido(int edad) {
		boolean resultado;
		if ( edad>=18 && edad<25) {
			resultado=true;
		}
		else {
			resultado = false;
			
		}
		return resultado;
			
	}
	
	
	/*metodo retirar, lo he cambiado de la clase padre a la hija, ya que la condicion de titula valido
	 * solo es para la cuenta joven y no para todas las cuentas en general*/
	
			public void retirar (double cantidad) {
				
			if (r== true) {
				this.cantidad=this.cantidad-cantidad;
			}
			
			else {
				this.cantidad=this.cantidad;
			}
			
			}
			
	
	//metodo mostrar datos
	
			public void mostrar () {
				System.out.println("titular "+ titular + " tiene en su cuenta: "+ cantidad + " euros"+ 
			" Se trata de una Cuenta Joven con una bonificacion del: "+ bonificacion + "%" );
			}
			
	
	
}
