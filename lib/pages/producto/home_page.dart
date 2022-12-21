import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sqflite_flutter/_mock_data/mock.dart';
import 'package:sqflite_flutter/pages/producto/datail_page.dart';
import 'package:sqflite_flutter/theme.dart';
import 'package:sqflite_flutter/widgets/event_card.dart';
import 'package:sqflite_flutter/widgets/place_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? 'DarkTheme'
        : 'LightTheme';
    List<String> titles = [
      'Piura',
      'Tumbes',
      'Cusco',
      'Loreto',
      'Lima',
      'Ica',
      'Lambayeque',
      'Chimbote',
      'Ancash',
      'Amazonas',
      'Apurimac',
      'Arequipa',
      'Ayacucho',
      'Cajamarca',
      'Huancavelica',
      'Huanuco',
      'Junín',
      'La Libertad',
      'Madre de Dios',
      'Moquegua',
      'Pasco',
      'Puno',
      'Ucayali',
      'Pasco',
      'San Martín',
      'Callao',
    ];
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20, left: 15, right: 10),
            child: Row(
              children: [
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/feliz.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rick Flutter,',
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1),
                        ),
                        Text(
                          'Buenos Dias',
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 100,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Ionicons.compass_outline,
                    size: 40,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 15, right: 20),
            child: Text(
              'Disfruta de tus\nVacaciones',
              style: GoogleFonts.playfairDisplay(
                  fontSize: 27, fontWeight: FontWeight.w700, letterSpacing: 1),
            ),
          ),
          Container(
            height: 35,
            margin: const EdgeInsets.only(left: 15, top: 25),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: titles.length,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Column(
                    children: [
                      Text(
                        titles[index],
                        style: GoogleFonts.playfairDisplay(
                          fontSize: 15,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w600,
                        ).copyWith(
                            color: (index == 0) ? mainCOlor : Colors.black),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      (index == 0)
                          ? Container(
                              height: 2,
                              width: 12,
                              color: mainCOlor,
                            )
                          : const SizedBox()
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5, left: 25, right: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recomendados',
                  style: GoogleFonts.playfairDisplay(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1),
                ),
                Text(
                  'Ver Todo',
                  style: GoogleFonts.playfairDisplay(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 220,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: places.length,
                itemBuilder: (_, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailPage(),
                        ),
                      );
                    },
                    child: PlaceCard(
                      index: index,
                      place: places[index],
                    ),
                  );
                }),
          ),
          Container(
            margin: const EdgeInsets.only(left: 25, right: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Eventos en Curso',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
                Text(
                  'Ver Todo',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            margin: const EdgeInsets.only(top: 30, right: 40, left: 40),
            child: ListView.builder(
                itemCount: events.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: EventCard(
                      event: events[index],
                    ),
                  );
                }),
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
