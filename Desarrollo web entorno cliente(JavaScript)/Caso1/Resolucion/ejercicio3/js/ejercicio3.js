var matrizSumar = []; // creamos una matriz donde recogemos los numeros introducidos por el usuario
var suma = 0;// variable para calcular la suma de los numeros introducidos

while (true) {
  var entrada = prompt("Introduce un número (o haz clic en Cancelar para finalizar):");
  if (entrada === null) {
    break; // Si el usuario hace clic en Cancelar, salimos del bucle
  }
  var numero = parseInt(entrada);
  if (isNaN(numero)) {// si el usuario introduce valor distinto al entero tenemos un error de tipo NaN
    alert("Error: la entrada no es un número.");
    continue; // Si la entrada no es un número, volvemos a solicitar otro número
  }
  matrizSumar.push(numero);// metemos el numero en nuestro array
}
//con el for vamos sumando los nummeros de nuestro array
for (let i = 0; i < matrizSumar.length; i++) {
  suma += matrizSumar[i];
}

alert("La suma total de los números es: " + suma);
