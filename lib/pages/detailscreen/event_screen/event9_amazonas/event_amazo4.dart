import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:planealo_app/models/event_model/event9_amazonas/event_models9.dart';
import 'package:planealo_app/widgets/carousel_wigget/carousel9_amazonas/carrousel_screen_event_amazo4.dart';

class EventAmazo4 extends StatefulWidget {
  final EventModelssss9 eventModelssss9;
  const EventAmazo4({super.key, required this.eventModelssss9});

  @override
  State<EventAmazo4> createState() => _EventAmazo4State();
}

class _EventAmazo4State extends State<EventAmazo4> {
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
                  child: CarrouselScreenEventAmazo4(
                    eventModelssss9: eventlistt3amazo.first,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  widget.eventModelssss9.textListt3amazo,
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
                      widget.eventModelssss9.mesListt3amazo,
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
                      widget.eventModelssss9.msgListt3amazo,
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
