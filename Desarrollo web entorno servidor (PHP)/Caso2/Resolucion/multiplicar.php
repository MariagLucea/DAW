<?php

//creamos el array tablas que tiene como clave un nombre y como valor un numero.
$tablas = [
    "Primera" => 5,
    "Segunda" => 13,
    "Tercera" => 11
];


echo "</tr>";
/*con el bucle for vamos recorriendo la filas de la tabla,
 empiezo desde el 0 para incluir el titulo */
for ($i = 0; $i <= 10; $i++) {
    echo "<tr>";
/*utilizamos foreach para incluir los datos del array/titulo de la  tabla
cuando i=0 añadimos el titulo,
en otro caso la multiplicación cogiendo el numero del array y la i del for.*/
    foreach ($tablas as $nombre => $numero) {
        if ($i == 0) {
            echo "<td>$nombre tabla</td>";
        } else {
            echo "<td>" ."$numero x $i = " . ($numero * $i). "</td>";
        }
    }
    echo "</tr>";
}
echo "</table>";
?>
