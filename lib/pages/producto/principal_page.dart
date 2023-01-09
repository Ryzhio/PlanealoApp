import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:planealo_app/models/placepri_model.dart';
import 'package:planealo_app/models/users.dart';
import 'package:planealo_app/pages/Video/video_page.dart';
import 'package:planealo_app/pages/detailscreen/detail_screen.dart';
import 'package:planealo_app/pages/producto/list_departament.dart';
import 'package:planealo_app/search/search_page.dart';
import 'package:planealo_app/widgets/recommended_card.dart';

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
                // APP BAR
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
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Te Damos la Bienvenida',
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
                //VIDEO OF PRESENTACION
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: const VideoPage(),
                ),
                //SEARCH SECTION
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Encuentra tú nuevo destino',
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
                          //SEARCH
                          Expanded(
                            child: ListTile(
                                iconColor: Colors.amber,
                                trailing: const Icon(Icons.search),
                                title: const Text(
                                  'Busca tu destino',
                                  style: TextStyle(color: Colors.black45),
                                ),
                                onTap: () {
                                  showSearch(
                                    context: context,
                                    delegate: Search(),
                                  );
                                }),
                          ),
                          CircleAvatar(
                            radius: 23,
                            backgroundColor: Colors.orange[400],
                            child: const Icon(
                              Ionicons.map,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
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
                SizedBox(
                  height: 70,
                  child: ListView(
                    // itemCount: depart.length,
                    children: [
                      //LISTA DE DEPARTAMENTOS
                      const ListDepartament(),
                    ],
                    scrollDirection: Axis.horizontal,
                    // itemBuilder: (context, index) {
                    // return
                    // },
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
                //RECOMENDADOS
                SizedBox(
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
