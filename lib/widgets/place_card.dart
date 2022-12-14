import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sqflite_flutter/models/place.dart';
import 'package:sqflite_flutter/theme.dart';

class PlaceCard extends StatelessWidget {
  final Place place;
  final int index;
  const PlaceCard({super.key, required this.place, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      margin: const EdgeInsets.only(left: 30, top: 25),
      child: Container(
        height: 170,
        width: 120,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(place.imageUrl), fit: BoxFit.cover),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
                (index == 0)
                    ? Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          width: 64,
                          height: 30,
                          decoration: BoxDecoration(
                            color: mainCOlor,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          child: Center(
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Ionicons.heart_outline)),
                          ),
                        ),
                      )
                    : const SizedBox()
              ],
            ),
            Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                color: mainCOlor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Center(
                child: Text(
                  place.city,
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
