<!--Utilizo html para poder dar el mismo formato con la hoja de estilo css usada en la página principal-->
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Practica 1ª de Marzo</title>
    <head>
  <link rel="stylesheet" type="text/css" href="./css/estilo.css" />
  </head>
  <body>
		<?php
		// Comprobar si existe la cookie 'nombre'
		if (isset($_COOKIE['nombre'])) {

			// Leer el nombre almacenado en la cookie
			$nombre = $_COOKIE['nombre'];

			// Mostrar un mensaje de saludo con el nombre
			echo '<h1>Hola ' . $nombre . '!</h1>';

			// Botón para borrar todas las cookies
			echo '<form action="borrarCookie.php" method="post">';
			echo '<input type="submit" value="Borrar Cookies">';
			echo '</form>';

		} else {

			// Si no existe la cookie, redirigir al formulario
			header('Location:http://localhost/tarea1/index.php');
			exit;
		}
		?>


  </body>
</html>
