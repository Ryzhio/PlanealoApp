import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:planealo_app/models/event_model/event16_junin/event_models16.dart';
import 'package:planealo_app/widgets/carousel_wigget/carousel16_junin/carrousel_screen_event_junin2.dart';

class EventJunin2 extends StatefulWidget {
  final EventModelss16 eventModelss16;
  const EventJunin2({super.key, required this.eventModelss16});

  @override
  State<EventJunin2> createState() => _EventJunin2State();
}

class _EventJunin2State extends State<EventJunin2> {
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
                  child: CarrouselScreenEventJunin2(
                    eventModelss16: eventlistt1junin.first,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  widget.eventModelss16.textListt1junin,
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
                      widget.eventModelss16.mesListt1junin,
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
                      widget.eventModelss16.msgListt1junin,
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
