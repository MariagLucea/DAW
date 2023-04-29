package caso1;

public class Empleado {
	
	//Atributos
	protected String nombre;
	protected String apellido1;
	protected String apellido2;
	protected String direccion;
	protected String telefono;
	protected String dni;
	protected Double salario;
	
	//constructor
	
	public Empleado () {
		
	}
	
	
	//metodos
	
	public String getNombre () {
		return nombre;
	}
	
	public void setNombre(String nombre) {
		this.nombre=nombre;
	}


	public String getApellido1() {
		return apellido1;
	}


	public void setApellido1(String apellido1) {
		this.apellido1 = apellido1;
	}


	public String getApellido2() {
		return apellido2;
	}


	public void setApellido2(String apellido2) {
		this.apellido2 = apellido2;
	}


	public String getDni() {
		return dni;
	}


	public void setDni(String dni) {
		this.dni = dni;
	}


	public String getDireccion() {
		return direccion;
	}


	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}


	public String getTelefono() {
		return telefono;
	}


	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}


	public Double getSalario() {
		return salario;
	}


	public void setSalario(Double salario) {
		salario = salario;
	}
	
public String imprimirDatos() {
		
		return this.nombre+","+this.apellido1+","+this.apellido2+","+this.direccion+","
		+this.telefono+","+this.dni+","+ this.salario;
	}
	
	
	
	

}