<?php
// Comprobar si se ha enviado el formulario
if (isset($_POST['nombre'])) {

	// Damos en valor a la cookie con el introducido por el usuario
	$nombre = $_POST['nombre'];
	setcookie('nombre', $nombre, time() + 3600, '/');

	// redirige a la pagina pedirNombre, donde saludamos

  header('Location:http://localhost/tarea1/pedirNombre.php');
	exit;
}
?>
