abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

// Mixins
abstract class Volador {
  void volar() => print('Volar');
}

abstract class Caminante {
  void caminar() => print('Caminar');
}

abstract class Nadador {
  void nadar() => print('Nadar');
}

// Forma para implementar un mixin
// Consiste e declarar una clase que a su vez herede de otra clase, pero con otras clases abstractas o mixin que hacen dar caracteristicas extras a las clases, se podria decir que es una forma de multiherencia
class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Caminante, Volador {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}

class Pato extends Ave with Caminante, Volador, Nadador {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}

main() {
  final PatoLucas = new Pato();
  PatoLucas.volar();
  PatoLucas.nadar();
  PatoLucas.caminar();

  final pezPlaneador = new PezVolador();
  pezPlaneador.nadar();
  pezPlaneador.volar();
}

// notas: los mixins ayudan a darle caracterisiticas que no se pueden heredar tan facilmente y que requieren de caracterisiticas espicificas que otra clases hermana que hereda de la misma clase padre no los requiere pero a su vez otras clases descendientes de una super clase si requieren de esas mismas caracterisitcas o no.abstract
