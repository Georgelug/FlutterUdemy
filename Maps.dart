main() {
  // Mas de maps
  // Otra forma de declarar un map de forma dinamica
  Map personas = {
    1: 'Tony',
    2: 'Peter',
    9: 'Strange',
  };
  personas.addAll({4: 'Banner'});

  print(personas);

  Map<String, List<int>> Coordenadas = Map();
  print(Coordenadas);

  Coordenadas.addAll({
    'i': [1, 0, 0],
    'j': [0, 1, 0],
    'k': [0, 0, 1]
  });

  print(Coordenadas);
}
