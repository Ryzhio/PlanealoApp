import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:planealo_app/models/event_model/event8_puno/event_models8.dart';
import 'package:planealo_app/widgets/carousel_wigget/carousel8_puno/carrousel_screen_event_puno7.dart';

class EventPuno7 extends StatefulWidget {
  final EventModelsssssss8 eventModelsssssss8;
  const EventPuno7({super.key, required this.eventModelsssssss8});

  @override
  State<EventPuno7> createState() => _EventPuno7State();
}

class _EventPuno7State extends State<EventPuno7> {
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
                  child: CarrouselScreenEventPuno7(
                    eventModelsssssss8: eventlistt6puno.first,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  widget.eventModelsssssss8.textListt6puno,
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
                      widget.eventModelsssssss8.mesListt6puno,
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
                      widget.eventModelsssssss8.msgListt6puno,
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
