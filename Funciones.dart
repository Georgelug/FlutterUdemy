main() {
  print(Saludar('Jorge'));

  print(funciondinamica('hola jorge'));

  print(ShowData2(texto: 'Hola mundo', nombre: 'Jorge'));
}
// NOTA: cuando no se le pone de que va a retornar la funcion, automaticamente el retorno de la funcion sera de tipo dynamic, sin embargo por razones de
// debugeo y para hacer que el compilidar sea mas eficiente, se recomienda espcificar SIEMPRE que se pueda lo que va a retornar la funcion

String Saludar(String nombre) {
  return 'Hola $nombre';
}

funciondinamica(frase) {
  return [frase, 1];
}

// Funciones cuyos parametros tienen 'nombre', esto sirve para cuando se desconoce el orden de los parametros pero si de sus llaves

String ShowData({String texto, String nombre}) {
  return '$texto $nombre';
}

// Funciones felchas o lambdas, son similares a las de javascript

String ShowData2({String texto, String nombre}) => '$texto $nombre';
