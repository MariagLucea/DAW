
<?php
//usamos include para incluir la dos clases creadas

include 'jugador.php';
include 'Equipo.php';

//creamos 9 jugadores con un bucle for, con dorsales consecutivos y puntuacion aleatoria

$num_jugadores=9;
  
  for ($i = 0; $i<$num_jugadores; $i++) {
    $numeroJug= ($i + 1); // genera un numero consecutivo  para cada jugador
    $ptos= rand(20, 100); // genera un número aleatorio de puntos entre 20 y 100
    $jugador = new Jugador($numeroJug,$ptos); // crea un objeto Jugador con el numero y puntos generados
    $jugadores[] = $jugador; // agrega el objeto Jugador al array de jugadores
  }
  
//creamos un objeto de tipo Equipo y llamamos al metodo total de la clase equipo
  $equipo = new Equipo($jugadores);
  $totalPuntos = $equipo->getTotal();
  
 
?>
