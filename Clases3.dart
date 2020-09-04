main() {
  final perro = Perro();
  perro.emitirSonido();
  final gato = Gato();
  gato.emitirSonido();
}

abstract class Animal {
  int patas;
  void emitirSonido();
}

class Perro implements Animal {
  int patas;
  int colas;
  void emitirSonido() => print('Guauu');
}

class Gato implements Animal {
  int patas;
  void emitirSonido() => print('Miauu');
}

// Las clases abstractas sirven para obligar al desarrollador a que implemente los elementos propuestos por la clase abstracta tanto atributos como metodos
