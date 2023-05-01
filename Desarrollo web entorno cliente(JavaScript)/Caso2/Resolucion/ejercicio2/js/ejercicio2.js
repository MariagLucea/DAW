// obtenemos el dia de la semana en numero 0= domingo y 6= sabado
var diaSemana=new Date().getDay();
//lo pasamos a letras 
var nombresDias=["Domingo","Lunes","Martes","Miercoles","Jueves","Viernes","Sabado"];
var diaSemanaEnLetras=nombresDias[diaSemana];

var dia=new Date().getDate(); // obtenermos el dia del mes

var mes = new Date().getMonth(); // Obtiene el número del mes (0-11)
// lo pasamos a letras
var nombresMeses = ["enero", "febrero", "marzo", "abril", "mayo", "junio", "julio", "agosto", "septiembre", "octubre", "noviembre", "diciembre"];
var mesEnLetras = nombresMeses[mes]; // Accede al nombre del mes en el arreglo


var year=new Date().getFullYear(); // obtenermos el año
var horas=new Date().getHours(); //obtenemos la hora
var minutos=new Date().getMinutes(); //obtenemos los minutos





//imprimimos por pantalla
alert("Hoy es " +diaSemanaEnLetras+ ","+dia+ ' de '+mesEnLetras+ ' de '+year+ ' y son las '+horas+':'+minutos);
