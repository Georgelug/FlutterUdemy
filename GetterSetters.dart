main() {
  final cuadrado = new Cuadrado();
  cuadrado.lado = 10;
  print(cuadrado);
  print('El area del cuadrado es: ${cuadrado.area}');
}

class Cuadrado {
  // para declarar atributos de forma private se le pone un guin bajo del lado izquierdo
  double _lado;
  double _area;

  set lado(double valor) {
    if (valor <= 0) {
      throw ('El lado no puede ser menor o igual a 0');
    }
    _lado = valor;
  }

  double get area {
    return _lado * _lado;
  }

  toString() => 'Lado: $_lado';
}

// El get y el set son palabras reservadas dentro de una clase en dart
// Para el caso del set no se le pone lo que va retornar la funcion, sin embargo si se le pone parentesis y el parametro que va recibir para modificar el atributo en cuestion
// para el caso del get NO se le pone parentesis por ende no recibe parametro, sin embargo si se le pone el tipo de dato que va a retornar la funcion que en este caso retornara el atributo en cuetion
// Analisis: al parecer no existe como tal el encapsulamiento por lo que se recurre a algo similar a la sintaxis estandar de python
