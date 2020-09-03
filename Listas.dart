main() {
  // Esta es una forma para declarar listas ademas de la tradicional, dart puede inferir que es dinamica la lista
  List numeros = [1, 2, 3, 4, 5];

  print(numeros);

  numeros.add(6);

  print(numeros);

  List<int> numbers = [1, 2, 3, 4, 5, 6, 7];

  print(numbers);

  List masCosas = List(10);

  print(masCosas);

  List<List> listaLitas = List();

  print(listaLitas);

  listaLitas = [
    [1, 0, 0],
    [0, 1, 0],
    [0, 0, 1]
  ];

  print(listaLitas);
}
