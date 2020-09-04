// Herencia en Dart
main() {
  final Superman = new Heroe();
  Superman.nombre = 'Clark Kent';
  final Joker = new Villano();
  Joker.nombre = 'Joker';
}

abstract class Personaje {
  String poder;
  String nombre;
}

class Heroe extends Personaje {
  int valentia;
}

class Villano extends Personaje {
  int maldad;
}
