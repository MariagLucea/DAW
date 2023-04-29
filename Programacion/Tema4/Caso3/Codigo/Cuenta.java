package caso3;

public class Cuenta {
	
	    //Atributos ( los cambiamos a protected para que puedan ser usados por la clase hija Cuentajoven
	
		protected String titular;
		protected double cantidad;
		
		
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
		
		
		//metodo :ingresar, la cantidad tiene que ser>o para que se tome en cuenta
		
		public void ingresar(double cantidad) {
			if (cantidad>0) {
				this.cantidad=this.cantidad+cantidad;
			}
			
		}
		
		
		
}
