<?php


class Equipo

{
//declaranos atributos-array

private $jugadores= array();


//declaro constructor con parametros

public function __construct($jugadores) {
    $this->jugadores = $jugadores;
}
//metodo para añadir jugador
public function addJug(Jugador $jugador): void {
    
        $this->jugadores[]=$jugador;
   
}
//Metodo get jugador
public function getJug($numJugador){
    
   return $this->jugadores[]=$numJugador;

}

//metodo para obtener los totales de puntos
public function getTotal() {
    $total = 0;
    foreach ($this->jugadores as $jugador) {
        $total += $jugador->getPtos();
    }
    return $total;
}
  

}

?>