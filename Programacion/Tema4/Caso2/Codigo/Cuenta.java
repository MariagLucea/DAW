package caso2;

public class Cuenta {

	//Atributos
	private String titular;
	private double cantidad;
	
	//Constructor
	
	public Cuenta() {
		
	}
	
	//Metodos getters y setters
	
	public String getTitular() {
		return titular;
	}
	
	public void setTitular(String titular) {
		this.titular=titular;
	}
	public double getCantitdad() {
		return cantidad;
	}
	
	public void setCantidad(double cantidad) {
		this.cantidad=cantidad;
	}
	
	//metodo mostrar datos
	
	public void mostrar () {
		System.out.println("titular"+ titular + " tiene en su cuenta: "+ cantidad + " euros");
	}
	
	//metodo :ingresar, la cantidad tiene que ser>o para que se tome en cuenta
	
	public void ingresar(double cantidad) {
		if (cantidad>0) {
			this.cantidad=this.cantidad+cantidad;
		}
		
	}
	//metodo : retirar, el resultado puede ser negativo.
	
	public void retirar (double cantidad) {
		this.cantidad=this.cantidad-cantidad;
	}
	
	
	
	
}
