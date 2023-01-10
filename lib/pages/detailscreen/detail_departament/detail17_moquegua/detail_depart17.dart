import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:planealo_app/models/event_model/event17_moquegua/event_models17.dart';
import 'package:planealo_app/models/placepri_model.dart';
import 'package:planealo_app/pages/detailscreen/detail_screen.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event17_moquegua/event_moque1.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event17_moquegua/event_moque2.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event17_moquegua/event_moque3.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event17_moquegua/event_moque4.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event17_moquegua/event_moque5.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event17_moquegua/event_moque6.dart';
import 'package:planealo_app/pages/detailscreen/event_screen/event17_moquegua/event_moque7.dart';
import 'package:planealo_app/pages/detailscreen/slider_screen/slider17_moquegua/slider17_screen.dart';

class DetailDepart17 extends StatefulWidget {
  const DetailDepart17({super.key});

  @override
  State<DetailDepart17> createState() => _DetailDepart17State();
}

class _DetailDepart17State extends State<DetailDepart17> {
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
                            SliderScreen17(
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
                            EventMoque1(eventModels17: eventlisttmoque.first),
                          ],
                        ),
                      ),
                      //EVENT 02
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            EventMoque2(eventModelss17: eventlistt1moque.first),
                          ],
                        ),
                      ),
                      //EVENT 03
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            EventMoque3(
                                eventModelsss17: eventlistt2moque.first),
                          ],
                        ),
                      ),
                      //EVENT 04
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            EventMoque4(
                                eventModelssss17: eventlistt3moque.first),
                          ],
                        ),
                      ),
                      //EVENT 05
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            EventMoque5(
                                eventModelsssss17: eventlistt4moque.first),
                          ],
                        ),
                      ),
                      //EVENT 06
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            EventMoque6(
                                eventModelssssss17: eventlistt5moque.first),
                          ],
                        ),
                      ),
                      //EVENT 07
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            EventMoque7(
                                eventModelsssssss17: eventlistt6moque.first),
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
