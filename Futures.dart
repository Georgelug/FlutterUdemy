/*
Los futures son tareas asíncronas, es decir, son procesos que se realizan de manera independiente , en otro hilo , para que después se una ese hilo con el principal, estos son hilos o threads.
Por lo tanto es programación paralela o asíncrona. 
*/
// Nota: para usar el await, forzosamente debe de estar dentro una funcion asincrona para eso se usa la palabra async
main() async {
  print('Estamos a punto de pedir datos');
  String data = await httpGet(
      'https://api.nasa.com/aliens'); //Como la funcion regresa un Future de tipo String para hacerla compatible con unString normal se usa await lo que hara que espere el proceso principal hasta que se resuelva el hilo secundario
  print(data);
  print('Ultima linea');
}

Future<String> httpGet(String url) {
  return Future.delayed(new Duration(seconds: 4), () {
    return 'Hola Mundo';
  });
}

// Nota: los constructores de las clases no pueden ser asincronos
