import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:planealo_app/models/event_model/event4_lima/event_models4.dart';
import 'package:planealo_app/widgets/carousel_wigget/carousel4_lima/carrousel_screen_event_lima7.dart';

class EventLima7 extends StatefulWidget {
  final EventModelsssssss4 eventModelsssssss4;
  const EventLima7({super.key, required this.eventModelsssssss4});

  @override
  State<EventLima7> createState() => _EventLima7State();
}

class _EventLima7State extends State<EventLima7> {
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
                  child: CarrouselScreenEventLima7(
                    eventModelsssssss4: eventlistt6lima.first,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  widget.eventModelsssssss4.textListt6lima,
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
                      widget.eventModelsssssss4.mesListt6lima,
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
                      widget.eventModelsssssss4.msgListt6lima,
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
