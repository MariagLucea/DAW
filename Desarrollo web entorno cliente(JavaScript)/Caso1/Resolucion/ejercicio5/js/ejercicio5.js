
while (true) {
  var entrada = prompt("Introduce el número del DNI (o haz clic en Cancelar para finalizar):");//pedimos numero de DNI
  if (entrada === null) {
    break; // Si el usuario hace clic en Cancelar, salimos del bucle
  }
  var numero = parseInt(entrada);
  if(isNaN(numero) || numero < 0 || numero > 99999999) {
    alert("Error:La entrada no es válida o está fuera del rango permitido");
    continue;//comprobamos que el dato introducido sea un numero y que este en el rango 0 y 99999999
  }
   var resto=numero %23; //calculamos el resto entre 23
   //segun el resultado del resto (entre0-22)corresponde una letra, para lo cual usamos un array con dichos valores
   let arrayLetra=['T','R','W','A','G','M','Y','F','P','D','X','B','N','J','Z','S','Q','V','H','L','C','K','E'];
   var letra=arrayLetra[resto];

 alert("La letra es: " + letra);
}
