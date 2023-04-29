package caso2;

public class Principal {

	public static void main(String[] args) {
		
		//creamos dos objetos de la clase cuenta
		Cuenta cuenta1= new Cuenta();
		Cuenta cuenta2=new Cuenta();
		
		//damos los valores a cada cuenta
		
		cuenta1.setTitular("Jose Ruiz Lopez");
		cuenta1.setCantidad(700);
		
		cuenta2.setTitular("Luisa Perez Dominguez");
		cuenta2.setCantidad(500);
		
		//vamos a hacer operaciones de ingreso y retirada de dinero
		
		cuenta1.ingresar(200);
		cuenta1.retirar(1000);
		
		cuenta2.ingresar(-400);
		cuenta2.retirar(100);
		
		//vamos a mostrar nuestros valores
		
		cuenta1.mostrar();
		cuenta2.mostrar();
		
		

	}

}
