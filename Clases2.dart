import 'dart:convert'; // asi es como se importan librerias o modulos en dart

main() {
  // final wolverine = new Heroe('Logan', 'Regeneracion');
  String rawJson =
      '{"nombre":"Logan", "poder":"Regeneracion"}'; //Supongamos que esto es un JSON en forma de string, una respuesta de una API, y lo queremos usar en dart como objeto
  Map parsedJson = json.decode(
      rawJson); //json.decode() sirve para decodificar una string que viene en formatop json a un mapa de dart

  // print(parsedJson);

  final wolverine = new Heroe.fromJson(parsedJson);
  print(wolverine.nombre);
  print(wolverine.poder);
}

//Constructores con nombre
class Heroe {
  String nombre;
  String poder;

  Heroe(this.nombre, this.poder);

  // Esto es un constructor con nombre que recibe un mapa como parametro
  Heroe.fromJson(Map parsedJson) {
    nombre = parsedJson['nombre'];
    poder = parsedJson['poder'];
  }
}
