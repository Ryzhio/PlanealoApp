import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sqflite_flutter/models/event.dart';

class EventCard extends StatelessWidget {
  final Event event;
  const EventCard({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 250,
      padding: const EdgeInsets.only(left: 20, top: 2),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(event.imageUrl),
            fit: BoxFit.cover,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$event',
            style: GoogleFonts.playfairDisplay(
                fontSize: 15, fontWeight: FontWeight.w900, letterSpacing: 1),
          ),
          Text(
            event.city,
            style: GoogleFonts.playfairDisplay(
                fontSize: 15, fontWeight: FontWeight.w900, letterSpacing: 1),
          ),
          const SizedBox(
            height: 1,
          ),
          Row(
            children: [
              const Icon(
                Ionicons.location,
                size: 30,
                color: Colors.amber,
              ),
              Text(
                event.country,
                style: GoogleFonts.playfairDisplay(
                  fontSize: 13,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
