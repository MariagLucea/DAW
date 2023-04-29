
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Principal {


	private static final String URL_CONEXION = "jdbc:mysql://localhost:3306/unidad8";


	public static void main(String args[]) throws SQLException {
		final String usuario = "root";
		final String password = "";
		Connection dbConnection = null;
		Statement statement = null;
		
		//Buscamos los empleados que son de Almería
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(URL_CONEXION, usuario, password);
			String selectTableSQL = "SELECT nombre, apellido1,apellido2, direccion FROM `empleados` WHERE direccion='Almeria'";
		
			statement = conn.createStatement();
			ResultSet rs = statement.executeQuery(selectTableSQL);
			while (rs.next()) {
				
				String nombre = rs.getString("nombre");
				String apellido1 = rs.getString("apellido1");
				String apellido2 = rs.getString("apellido2");
				String direccion = rs.getString("direccion");
				
				
				System.out.println("Empleados que son de Almeria");
				System.out.println("Nombre : " + nombre);
				System.out.println("Primer apellido : " + apellido1);
				System.out.println("Segundo apellido : " + apellido2);
				System.out.println("Direccion : " + direccion);
				
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}  catch (ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}
		finally {
			if (statement != null) {
				statement.close();
			}
			if (dbConnection != null) {
				dbConnection.close();



			}
		}
		
		//obtenemos el modelo del coche con una matricula dada
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(URL_CONEXION, usuario, password);
			String selectTableSQL = "SELECT modelo FROM `coches` WHERE matricula='8569HYJ'";
		
			statement = conn.createStatement();
			ResultSet rs = statement.executeQuery(selectTableSQL);
			while (rs.next()) {
				
				String mdl = rs.getString("modelo");
				
				System.out.println("El coche con matricula 8569HYJ  es de modelo: " + mdl);
				
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}  catch (ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}
		finally {
			if (statement != null) {
				statement.close();
			}
			if (dbConnection != null) {
				dbConnection.close();



			}
		}
	
	}
	

	}
	
	

