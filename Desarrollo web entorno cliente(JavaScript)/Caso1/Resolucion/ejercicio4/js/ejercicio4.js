var matrizConcatenar= []; //  creamos un array para ir metiendo los string que introduzca el usuario

while (true) {
  var entrada = prompt("Introduce una frase (o haz clic en Cancelar para finalizar):");
  if (entrada === null) {
    break; // Si el usuario hace clic en Cancelar, salimos del bucle
  }
  matrizConcatenar.push(entrada);//recogemos el  valor introducido en nuestra matriz
}

var concatenado = matrizConcatenar.join("-"); // con join concatenamos el contenido del array
alert("La frase concatenada es: "+concatenado);
