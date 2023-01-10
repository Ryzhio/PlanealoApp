import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:planealo_app/models/event_model/event15_cajamarca/event_models15.dart';
import 'package:planealo_app/models/event_model/event1_piura_models/event_models.dart';
import 'package:planealo_app/models/placepri_model.dart';
import 'package:planealo_app/pages/detailscreen/detail_screen.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event15_cajamarca/event_cajama1.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event15_cajamarca/event_cajama2.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event15_cajamarca/event_cajama3.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event15_cajamarca/event_cajama4.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event15_cajamarca/event_cajama5.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event15_cajamarca/event_cajama6.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event15_cajamarca/event_cajama7.dart';
import 'package:planealo_app/pages/detailscreen/slider_screen/slider15_cajamarca/slider15_screen.dart';

class DetailDepart15 extends StatefulWidget {
  const DetailDepart15({super.key});

  @override
  State<DetailDepart15> createState() => _DetailDepart15State();
}

class _DetailDepart15State extends State<DetailDepart15> {
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
                            SliderScreen15(
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
                              EventCajama1(
                                  eventModels15: eventlisttcajama.first),
                            ],
                          ),
                        ),
                        //EVENT 02
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: [
                              EventCajama2(
                                  eventModelss15: eventlistt1cajama.first),
                            ],
                          ),
                        ),
                        //EVENT 03
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: [
                              EventCajama3(
                                  eventModelsss15: eventlistt2cajama.first),
                            ],
                          ),
                        ),
                        //EVENT 04
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: [
                              EventCajama4(
                                  eventModelssss15: eventlistt3cajama.first),
                            ],
                          ),
                        ),
                        //EVENT 05
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: [
                              EventCajama5(
                                  eventModelsssss15: eventlistt4cajama.first),
                            ],
                          ),
                        ),
                        //EVENT 06
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: [
                              EventCajama6(
                                  eventModelssssss15: eventlistt5cajama.first),
                            ],
                          ),
                        ),
                        //EVENT 07
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: [
                              EventCajama7(
                                  eventModelsssssss15: eventlistt6cajama.first),
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
