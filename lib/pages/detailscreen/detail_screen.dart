import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:planealo_app/models/placepri_model.dart';
import 'package:planealo_app/pages/menu_second_page.dart';
import 'package:planealo_app/pages/comentspage/review_page.dart';

class DetailScreen extends StatefulWidget {
  final PlaceInfo placeInfo;
  const DetailScreen({super.key, required this.placeInfo});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  // final launchcherProvider = Provider.of<LauncherProvider>(context);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            widget.placeInfo.image,
            width: double.infinity,
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height * 0.428,
          ),
          SafeArea(
            child: Column(
              children: [
                //APPBAR BUTTONS
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(100),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                color: Colors.orange[400],
                                shape: BoxShape.circle,
                              ),
                              child: const Center(
                                child: Icon(
                                  Ionicons.arrow_back_outline,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(100),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Icon(
                                  Ionicons.star,
                                  color: Colors.orange[400],
                                  size: 25,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                ///
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.placeInfo.name,
                              style: const TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // const SizedBox(
                            //   height: 12,
                            // ),
                            // // Row(
                            // //   children: [
                            // //     Icon(
                            // //       Ionicons.location,
                            // //       color: Colors.orange[400],
                            // //     ),
                            // //     const SizedBox(
                            // //       width: 12,
                            // //     ),
                            // //     Text(
                            // //       widget.placeInfo.location,
                            // //       style: const TextStyle(
                            // //         color: Colors.blueGrey,
                            // //         fontSize: 20,
                            // //       ),
                            // //     ),
                            // //     Visibility(
                            // //       visible: launchcherProvider.isVisible,
                            // //       child: Padding(
                            // //         padding: const EdgeInsets.all(8.0),
                            // //         child: FloatingActionButton(
                            // //           onPressed: () {
                            // //             launchcherProvider.goMapLauncher();
                            // //           },
                            // //           backgroundColor: Colors.green,
                            // //           child: const Icon(
                            // //             Icons.email,
                            // //           ),
                            // //         ),
                            // //       ),
                            // //     ),
                            // //   ],
                            // // ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text(
                              'Detalles del Viaje',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              widget.placeInfo.desc,
                              style: const TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Divider(
                              height: 5,
                              color: Colors.black,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Duración',
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Expanded(
                                  child: Text(
                                    '${widget.placeInfo.days} días',
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Duración',
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Expanded(
                                  child: Text(
                                    '${widget.placeInfo.distance}  km',
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            MaterialButton(
                              color: Colors.orange[400],
                              minWidth: double.infinity,
                              height: 55,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const MenuSecondPage(),
                                  ),
                                );
                              },
                              child: const Text(
                                'Planealo Viajero',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            MaterialButton(
                              minWidth: 180,
                              height: 65,
                              color: Colors.red[500],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ReviewPage(),
                                  ),
                                );
                              },
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    'assets/cms.png',
                                    scale: 7,
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'Comentarios',
                                    style: GoogleFonts.playfairDisplay(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Icon(
                                    Ionicons.arrow_forward_circle_outline,
                                    color: Colors.black,
                                    size: 30,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
