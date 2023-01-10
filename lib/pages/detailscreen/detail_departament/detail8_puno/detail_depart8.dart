import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:planealo_app/models/event_model/event1_piura_models/event_models.dart';
import 'package:planealo_app/models/event_model/event8_puno/event_models8.dart';
import 'package:planealo_app/models/placepri_model.dart';
import 'package:planealo_app/pages/detailscreen/detail_screen.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event8_puno/event_puno1.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event8_puno/event_puno2.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event8_puno/event_puno3.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event8_puno/event_puno4.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event8_puno/event_puno5.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event8_puno/event_puno6.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event8_puno/event_puno7.dart';
import 'package:planealo_app/pages/detailscreen/slider_screen/slider8_puno/slider8_screen.dart';

class DetailDepart8 extends StatefulWidget {
  const DetailDepart8({super.key});

  @override
  State<DetailDepart8> createState() => _DetailDepart8State();
}

class _DetailDepart8State extends State<DetailDepart8> {
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
                            SliderScreen8(
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
                              EventPuno1(eventModels8: eventlisttpuno.first),
                            ],
                          ),
                        ),
                        //EVENT 02
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: [
                              EventPuno2(eventModelss8: eventlistt1puno.first),
                            ],
                          ),
                        ),
                        //EVENT 03
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: [
                              EventPuno3(eventModelsss8: eventlistt2puno.first),
                            ],
                          ),
                        ),
                        //EVENT 04
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: [
                              EventPuno4(
                                  eventModelssss8: eventlistt3puno.first),
                            ],
                          ),
                        ),
                        //EVENT 05
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: [
                              EventPuno5(
                                  eventModelsssss8: eventlistt4puno.first),
                            ],
                          ),
                        ),
                        //EVENT 06
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: [
                              EventPuno6(
                                  eventModelssssss8: eventlistt5puno.first),
                            ],
                          ),
                        ),
                        //EVENT 07
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: [
                              EventPuno7(
                                  eventModelsssssss8: eventlistt6puno.first),
                            ],
                          ),
                        ),
                      ],
                    )
                    // ListView.builder(
                    //   itemCount: placesp.length,
                    //   scrollDirection: Axis.horizontal,
                    //   itemBuilder: (context, index) {
                    //     return Padding(
                    //       padding: const EdgeInsets.only(left: 15, right: 15),
                    //       child: Row(
                    //         // ignore: prefer_const_literals_to_create_immutables
                    //         children: [
                    //           //EVENTOS Y CARRUSEL
                    //           EventDepart(
                    //             eventModels: eventlistt[index],
                    //             // press: () {
                    //             //   Navigator.push(
                    //             //     context,
                    //             //     MaterialPageRoute(
                    //             //       builder: (context) => DetailScreen(
                    //             //         placeInfo: placesp[index],
                    //             //       ),
                    //             //     ),
                    //             //   );
                    //             // },
                    //           ),
                    //         ],
                    //       ),
                    //     );
                    //   },
                    // ),
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
