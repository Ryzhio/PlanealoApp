import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sqflite_flutter/models/placepri_model.dart';
import 'package:sqflite_flutter/models/users.dart';
import 'package:sqflite_flutter/pages/detailscreen/detail_screen.dart';
import 'package:sqflite_flutter/widgets/category_card.dart';
import 'package:sqflite_flutter/widgets/recommended_card.dart';

class PrincipalPage extends StatefulWidget {
  final User user;
  const PrincipalPage({super.key, required this.user});

  @override
  State<PrincipalPage> createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Column(
              children: [
                //APP BAR
                Row(
                  children: [
                    CircleAvatar(
                      radius: 27,
                      backgroundImage: AssetImage(widget.user.perfilA),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Hola, ',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                        children: [
                          TextSpan(
                            text: widget.user.perfilN,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //SEARCH SECTION
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Explora tú nuevo destino',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Material(
                  borderRadius: BorderRadius.circular(100),
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 230, 230, 230),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: "Busca tu destino",
                                prefixIcon: Icon(Ionicons.search),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          ),
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: Colors.orange[400],
                            child: const Icon(
                              Icons.sort_by_alpha_sharp,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                //DEPARTAMENTOS
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Text(
                      'Departamento',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 70,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          CategoryCard(
                            prees: () {},
                            image: 'assets/city5.jpg',
                            title: 'Arequipa',
                          ),
                          CategoryCard(
                            prees: () {},
                            image: 'assets/city6.jpg',
                            title: 'Ica',
                          ),
                          CategoryCard(
                            prees: () {},
                            image: 'assets/city1.jpg',
                            title: 'Piura',
                          ),
                          CategoryCard(
                            prees: () {},
                            image: 'assets/city3.jpg',
                            title: 'Loreto',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                //RECOMENDADOS
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Text(
                      'Recomendados',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 300,
                  child: ListView.builder(
                    itemCount: placesp.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 5, right: 10),
                        child: Row(
                          children: [
                            RecommendedCard(
                              placeInfo: placesp[index],
                              press: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailScreen(
                                      placeInfo: placesp[index],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
