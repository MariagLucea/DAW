<?php

class Jugador
{
//declaramos atributos
   private $numeroJug=0;
   private $ptos=0;

 // declaro constructor con parametros

 public function __construct($numeroJug,$ptos) {
    $this->numeroJug=$numeroJug;
    
    $this->ptos=$ptos;
    
  }
//declaro metodos getter
   public function getNumeroJug()
   {
      return $this->numeroJug;
   }

   public function getPtos()
   {
      return $this->ptos;
   }
//declaro metodo appPtos que irá sumando los puntos siempre que sean mayor que 0
   public function addPtos($ptos): void {
        if ($ptos >0){
            $this->ptos += $ptos;
        }else
            $this->ptos;
        
    }



}

?>
