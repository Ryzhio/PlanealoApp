import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event16_junin/event_models16.dart';

class CarrouselScreenEventJunin6 extends StatefulWidget {
  final EventModelssssss16 eventModelssssss16;
  const CarrouselScreenEventJunin6(
      {super.key, required this.eventModelssssss16});

  @override
  State<CarrouselScreenEventJunin6> createState() =>
      _CarrouselScreenEventJunin6State();
}

class _CarrouselScreenEventJunin6State
    extends State<CarrouselScreenEventJunin6> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Column(
            children: [
              SizedBox(
                height: 200,
                width: 266,
                child: CarouselSlider.builder(
                    slideBuilder: (index) {
                      return Image.asset(
                        widget.eventModelssssss16.fileNme5junin[index],
                        fit: BoxFit.cover,
                      );
                    },
                    unlimitedMode: true,
                    slideTransform: const CubeTransform(),
                    slideIndicator: CircularSlideIndicator(
                      indicatorBackgroundColor: Colors.white,
                      currentIndicatorColor: Colors.amber[800]!,
                      indicatorBorderColor: Colors.amber[400]!,
                      padding: const EdgeInsets.only(bottom: 10),
                    ),
                    itemCount: widget.eventModelssssss16.fileNme5junin.length),
              ),
            ],
          ),
        ),
        // const SizedBox(
        //   height: 30,
        // ),
      ],
    );
  }
}
