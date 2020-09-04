main() {
  Heroe Wolverine = new Heroe(
      nombre: 'Logan',
      poder:
          'Regeneracion'); //Para instanciar no es necesario poner new sin embargo por estandar se le pone new, tambien se puede usar final
  print(Wolverine);

  final Deadpool = new Heroe(nombre: 'Deadpool', poder: 'Inmortalidad');

  print(Deadpool);
}

// Forma larga para declarar una clase

// class Heroe {
//   // Atributos
//   String nombre;
//   String poder;

//   // Constructor, no existe como tal la sobrecarga de metdoso pero se usa el 'name arguments' y se inicaliza con valores predeterminados
//   Heroe({String nombre = '---', String poder = '---'}) {
//     this.nombre = nombre;
//     this.poder = poder;
//   }

//   String toString() {
//     return 'Nombre: ${this.nombre}\npoder: ${this.poder}';
//   }
// }

// Forma corta de definir propiedades de una clase
class Heroe {
  // Atributos
  String nombre;
  String poder;

  // Forma corta para declarar el constructor
  Heroe({String this.nombre = '---', String this.poder = '---'});

  //Como los metodos son funciones se puede usar la funcion de flecha
  String toString() => 'Nombre: $nombre\npoder: $poder';
}
