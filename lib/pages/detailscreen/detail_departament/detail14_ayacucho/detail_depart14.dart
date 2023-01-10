import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:planealo_app/models/event_model/event14_ayacucho/event_models14.dart';
import 'package:planealo_app/models/placepri_model.dart';
import 'package:planealo_app/pages/detailscreen/detail_screen.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event14_ayacucho/event_ayacu1.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event14_ayacucho/event_ayacu2.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event14_ayacucho/event_ayacu3.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event14_ayacucho/event_ayacu4.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event14_ayacucho/event_ayacu5.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event14_ayacucho/event_ayacu6.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event14_ayacucho/event_ayacu7.dart';
import 'package:planealo_app/pages/detailscreen/slider_screen/slider14_ayacucho/slider14_screen.dart';

class DetailDepart14 extends StatefulWidget {
  const DetailDepart14({super.key});

  @override
  State<DetailDepart14> createState() => _DetailDepart14State();
}

class _DetailDepart14State extends State<DetailDepart14> {
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
                            SliderScreen14(
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
                            EventAyacu1(eventModels14: eventlisttayacu.first),
                          ],
                        ),
                      ),
                      //EVENT 02
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            EventAyacu2(eventModelss14: eventlistt1ayacu.first),
                          ],
                        ),
                      ),
                      //EVENT 03
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            EventAyacu3(
                                eventModelsss14: eventlistt2ayacu.first),
                          ],
                        ),
                      ),
                      //EVENT 04
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            EventAyacu4(
                                eventModelssss14: eventlistt3ayacu.first),
                          ],
                        ),
                      ),
                      //EVENT 05
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            EventAyacu5(
                                eventModelsssss14: eventlistt4ayacu.first),
                          ],
                        ),
                      ),
                      //EVENT 06
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            EventAyacu6(
                                eventModelssssss14: eventlistt5ayacu.first),
                          ],
                        ),
                      ),
                      //EVENT 07
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            EventAyacu7(
                                eventModelsssssss14: eventlistt6ayacu.first),
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
