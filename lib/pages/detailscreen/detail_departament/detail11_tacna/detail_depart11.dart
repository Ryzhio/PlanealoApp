import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:planealo_app/models/event_model/event11_tacna/event_models11.dart';
import 'package:planealo_app/models/placepri_model.dart';
import 'package:planealo_app/pages/detailscreen/detail_screen.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event11_tacna/event_tacna1.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event11_tacna/event_tacna2.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event11_tacna/event_tacna3.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event11_tacna/event_tacna4.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event11_tacna/event_tacna5.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event11_tacna/event_tacna6.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event11_tacna/event_tacna7.dart';
import 'package:planealo_app/pages/detailscreen/slider_screen/slider11_tacna/slider11_screen.dart';

class DetailDepart11 extends StatefulWidget {
  const DetailDepart11({super.key});

  @override
  State<DetailDepart11> createState() => _DetailDepart11State();
}

class _DetailDepart11State extends State<DetailDepart11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Material(
                        color: Colors.black12,
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
                    const Text(
                      '            Atractivos',
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 630,
                  child: ListView.builder(
                    itemCount: placesp.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 5, right: 10),
                        child: Row(
                          children: [
                            //ATRACTIVOS POR DEPARTAMENTO
                            SliderScreen11(
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
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Eventos',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                //EVENTOS
                SizedBox(
                  height: 335,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      //EVENT 01
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            EventTacna1(eventModels11: eventlistttacna.first),
                          ],
                        ),
                      ),
                      //EVENT 02
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            EventTacna2(eventModelss11: eventlistt1tacna.first),
                          ],
                        ),
                      ),
                      //EVENT 03
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            EventTacna3(
                                eventModelsss11: eventlistt2tacna.first),
                          ],
                        ),
                      ),
                      //EVENT 04
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            EventTacna4(
                                eventModelssss11: eventlistt3tacna.first),
                          ],
                        ),
                      ),
                      //EVENT 05
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            EventTacna5(
                                eventModelsssss11: eventlistt4tacna.first),
                          ],
                        ),
                      ),
                      //EVENT 06
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            EventTacna6(
                                eventModelssssss11: eventlistt5tacna.first),
                          ],
                        ),
                      ),
                      //EVENT 07
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            EventTacna7(
                                eventModelsssssss11: eventlistt6tacna.first),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
