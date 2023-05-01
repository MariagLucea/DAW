// definimos un objeto de tipo date para obtener la horaActual

var horaActual = new Date().getHours();

  
//una vez que tenemos la hora con if la evaluamos 

if ((horaActual>=6) && (horaActual< 12)){
    alert("Buenos dias");

  } else if ((horaActual>=12)&& (horaActual<20)){
    alert ("Buenas tardes");
  
  }else {
    alert ("Buenas noches");
  }
