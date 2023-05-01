<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Baloncesto</title>
</head>
<body>
    <h1>Jugadores y puntos anotados</h1>
    <?php
    //incluimos el archivo temporada.php donde hemos hecho las pruebas
    include 'temporada.php';
    // con foreach recorremos el array para imprimirlo por pantalla
    foreach ($jugadores as $jugador) {
        echo "Jugador " . $jugador->getNumeroJug() . " tiene " . $jugador->getPtos() . " puntos <br>";
      }
    //imprimimos por pantalla el total de los puntos
        echo '<br> El total de puntos es: ' . $totalPuntos;
    ?>
</body>
</html>