//creamos nuestra variable nota y con prompt pedimos la nota al usuario
var nota=prompt("Ingresa tu nota");
//con if else,evaluamos las diferentes condiciones
if (nota>=0 && nota<=3) {
  alert("Muy deficiente");
} else if (nota>3 && nota<5){
  alert("insuficiente");
}else if (nota>=5 && nota<6){
  alert("Suficiente");
}else if (nota>=6 && nota<7){
  alert("Bien");
}else if (nota>=7 && nota<9){
  alert("Notable");
}else if (nota>=9 && nota<=10){
  alert("Sobresaliente");
}else {
  alert("Nota introducida erronea, debe estar comprendida entre 0 y 10");
}
//añado esta ultima condición ya que si dejo la opción sobresaliente en else, me valoraría numeros negativos o mayores que 10 como sobresaliente
