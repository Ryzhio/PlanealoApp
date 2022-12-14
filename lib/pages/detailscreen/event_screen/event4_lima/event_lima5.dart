import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:planealo_app/models/event_model/event4_lima/event_models4.dart';
import 'package:planealo_app/widgets/carousel_wigget/carousel4_lima/carrousel_screen_event_lima5.dart';

class EventLima5 extends StatefulWidget {
  final EventModelsssss4 eventModelsssss4;
  const EventLima5({super.key, required this.eventModelsssss4});

  @override
  State<EventLima5> createState() => _EventLima5State();
}

class _EventLima5State extends State<EventLima5> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: press,
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 350,
          width: 282,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 230, 230, 230),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //CARRUSEL DE IMAGENES
                SizedBox(
                  child: CarrouselScreenEventLima5(
                    eventModelsssss4: eventlistt4lima.first,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  widget.eventModelsssss4.textListt4lima,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Ionicons.calendar,
                      color: Colors.orange[400],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      widget.eventModelsssss4.mesListt4lima,
                      style: const TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Ionicons.location,
                      color: Colors.orange[400],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      widget.eventModelsssss4.msgListt4lima,
                      style: const TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
