function mostrarReloj() {
    var fecha = new Date(); // Obtiene la fecha y hora actual
    var horas = agregarCeros(fecha.getHours(), 2); // Obtiene las horas y agrega ceros a la izquierda si es necesario
    var minutos = agregarCeros(fecha.getMinutes(), 2); // Obtiene los minutos y agrega ceros a la izquierda si es necesario
    var segundos = agregarCeros(fecha.getSeconds(), 2); // Obtiene los segundos y agrega ceros a la izquierda si es necesario
    var dia = fecha.getDate(); // Obtiene el día del mes
    var mes = fecha.getMonth() + 1; // Obtiene el mes (se le suma 1 ya que los meses comienzan desde 0)
    var anio = fecha.getFullYear(); // Obtiene el año
  
    var reloj = horas + ":" + minutos + ":" + segundos; // Formatea la hora en formato HH:MM:SS
    var fechaActual = dia + "/" + mes + "/" + anio; // Formatea la fecha en formato DD/MM/YYYY
  
    alert("Fecha: " + fechaActual + "\nHora: " + reloj); // Muestra la fecha y hora en una ventana de alerta
  
    setTimeout(mostrarReloj, 1000); // Llama a la función mostrarReloj() cada segundo (1000 ms)
  }
  
  function agregarCeros(numero, longitud) {
    var numeroString = numero.toString();
    while (numeroString.length < longitud) {
      numeroString = "0" + numeroString;
    }
    return numeroString;
  }
  
  mostrarReloj(); // Inicia la función mostrarReloj()
  