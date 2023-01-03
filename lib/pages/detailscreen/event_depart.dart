import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/pages/detailscreen/detail_screen_image.dart';

class EventDepart extends StatefulWidget {
  const EventDepart({super.key});

  @override
  State<EventDepart> createState() => _EventDepartState();
}

class _EventDepartState extends State<EventDepart> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: CarouselSlider.builder(
          slideBuilder: (index) {
            return Image.asset(
              imgList.first,
              fit: BoxFit.cover,
            );
          },
          unlimitedMode: true,
          slideTransform: const CubeTransform(),
          slideIndicator: CircularSlideIndicator(
            indicatorBackgroundColor: Colors.white,
            currentIndicatorColor: Colors.grey[800]!,
            indicatorBorderColor: Colors.grey[400]!,
            padding: const EdgeInsets.only(bottom: 32),
          ),
          itemCount: 6),
    );
  }
}
