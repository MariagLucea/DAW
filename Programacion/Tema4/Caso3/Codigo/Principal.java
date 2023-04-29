package caso3;


public class Principal {

	public static void main(String[] args) {
		//creamos dos objetos de la clase cuenta joven
		
				Cuentajoven cuentajoven1= new Cuentajoven();
				Cuentajoven cuentajoven2=new Cuentajoven();
				
				//damos los valores a cada cuenta
				
				cuentajoven1.setTitular("Jose Ruiz Lopez");
				cuentajoven1.setCantidad(700);
				cuentajoven1.setEdad(21);
				
				
				cuentajoven2.setTitular("Luisa Perez Dominguez");
				cuentajoven2.setCantidad(500);
				cuentajoven2.setEdad(17);
				
				//vamos a hacer operaciones de ingreso y retirada de dinero
				
				cuentajoven1.ingresar(200);
				cuentajoven1.retirar(100);
				
				cuentajoven2.ingresar(100);
				cuentajoven2.retirar(300);
				
				//vamos a mostrar nuestros valores
				
				cuentajoven1.mostrar();
				cuentajoven2.mostrar();
	}

}

