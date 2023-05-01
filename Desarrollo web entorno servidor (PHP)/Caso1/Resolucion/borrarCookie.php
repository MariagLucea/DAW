<?php
// Recorrer todas las cookies establecidas y borrarlas
foreach ($_COOKIE as $nombre_cookie => $valor_cookie) {

	setcookie($nombre_cookie, '', time() - 3600, '/');
}

// Redirigir al formulario inicial
header('Location:http://localhost/tarea1/index.php');
exit;
?>
