class PlaceInfo {
  final String location, image, name, desc;
  final int distance, days;

  PlaceInfo({
    required this.location,
    required this.image,
    required this.name,
    required this.desc,
    required this.distance,
    required this.days,
  });
}

List placesp = [
  PlaceInfo(
    image: 'assets/city1.jpg',
    location: 'Piura',
    name: 'Mancora',
    distance: 50000,
    days: 12,
    desc:
        'Máncora es un balneario y localidad peruana capital del distrito homónimo ubicado en la provincia de Talara, en el departamento de Piura.',
  ),
  PlaceInfo(
    image: 'assets/city2.jpg',
    location: 'Lambayeque',
    name: 'Museo Tumbas Reales de Sipán',
    distance: 406999,
    days: 15,
    desc:
        'El Museo Tumbas Reales de Sipán es un museo arqueológico peruano inaugurado en el año 2002. Está ubicado en la ciudad de Lambayeque, localizada en el Departamento de Lambayeque. Su diseño arquitectónico se ha inspirado en las antiguas pirámides truncas de la preincaica cultura mochica, (siglo i al VII d. C.). El museo concentra más de dos mil piezas de oro.',
  ),
  PlaceInfo(
    image: 'assets/city3.jpg',
    location: 'Loreto',
    name: 'Río Amazonas',
    distance: 514000,
    days: 20,
    desc:
        'Este es el más largo y caudaloso del planeta y puedes sumergirte en sus aguas por medio de una inigualable travesía en crucero. La misma deja sumamente asombrados a turistas ya que se pasa día y noche en este punto de la Amazonía, en comunión con el ecosistema que se respira por todos lados.',
  ),
  PlaceInfo(
    image: 'assets/city4.jpg',
    location: 'Lima',
    name: 'Malecón de Miraflores',
    distance: 16000,
    days: 17,
    desc:
        'Aquí la ciudad se encuentra con el mar, y donde puedes caminar por el lado de gigantescos acantilados que miran hacia el Pacífico. No olvides visitar Barranco, ubicado más al sur, pues es uno de los barrios más pintorescos e interesantes de Lima.',
  ),
];
