import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:planealo_app/models/event_model/event10_madre%20de%20dios/event_models10.dart';
import 'package:planealo_app/models/placepri_model.dart';
import 'package:planealo_app/pages/detailscreen/detail_screen.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event10_madre%20de%20dios/event_madre1.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event10_madre%20de%20dios/event_madre2.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event10_madre%20de%20dios/event_madre3.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event10_madre%20de%20dios/event_madre4.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event10_madre%20de%20dios/event_madre5.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event10_madre%20de%20dios/event_madre6.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event10_madre%20de%20dios/event_madre7.dart';
import 'package:planealo_app/pages/detailscreen/slider_screen/slider10_madre%20de%20dios/slider10_screen.dart';

class DetailDepart10 extends StatefulWidget {
  const DetailDepart10({super.key});

  @override
  State<DetailDepart10> createState() => _DetailDepart10State();
}

class _DetailDepart10State extends State<DetailDepart10> {
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
                            SliderScreen10(
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
                            EventMadre1(eventModels10: eventlisttmadre.first),
                          ],
                        ),
                      ),
                      //EVENT 02
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            EventMadre2(eventModelss10: eventlistt1madre.first),
                          ],
                        ),
                      ),
                      //EVENT 03
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            EventMadre3(
                                eventModelsss10: eventlistt2madre.first),
                          ],
                        ),
                      ),
                      //EVENT 04
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            EventMadre4(
                                eventModelssss10: eventlistt3madre.first),
                          ],
                        ),
                      ),
                      //EVENT 05
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            EventMadre5(
                                eventModelsssss10: eventlistt4madre.first),
                          ],
                        ),
                      ),
                      //EVENT 06
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            EventMadre6(
                                eventModelssssss10: eventlistt5madre.first),
                          ],
                        ),
                      ),
                      //EVENT 07
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            EventMadre7(
                                eventModelsssssss10: eventlistt6madre.first),
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
