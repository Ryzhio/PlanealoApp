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
        '¿Por qué visitar Máncora? El Pacífico besa al Perú en toda su costa. Pero en Máncora, en el norte del país, la delicadeza de las olas y la agradable temperatura durante todo el año, han convertido la zona en el balneario más privilegiado del país. Una larga línea, de aproximadamente 70 kilómetros, concentra varias playas de gran belleza, entre Punta Sal y la pequeña ciudad de Talara, capital petrolera del país. Las instalaciones hoteleras, pequeñas e íntimas, ofrecen todos los servicios. Y aquí, el plato peruano más internacional, el ceviche, alcanza niveles de gloria por la frescura del pescado y el sol brillante que se disfruta junto a una cerveza helada. La suma de todas estos factores logra la razón principal por la que hay que visitar Máncora, al menos una vez en la vida.  Aunque Máncora propiamente es una playa de 1,47 kilómetros, es el mejor sitio para recorrer, hacia el norte y el sur, lo que son, sin duda alguna, las playas más hermosas y cálidas del país.  Además, en el pueblo hay atractivos restaurantes de todo tipo de gastronomía y nivel, así como sitios nocturnos, y todo tipo de servicios bancarios, de salud, y comerciales. Reconocida por su belleza a nivel mundial, Máncora atrae miles de turistas al año, y es el sitio de moda de veraneo de la sociedad limeña, cuando escapa de los cambios de estaciones en la capital y el sur del país.',
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
