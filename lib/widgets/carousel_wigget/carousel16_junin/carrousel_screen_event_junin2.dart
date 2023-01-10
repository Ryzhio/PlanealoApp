import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event16_junin/event_models16.dart';

class CarrouselScreenEventJunin2 extends StatefulWidget {
  final EventModelss16 eventModelss16;
  const CarrouselScreenEventJunin2({super.key, required this.eventModelss16});

  @override
  State<CarrouselScreenEventJunin2> createState() =>
      _CarrouselScreenEventJunin2State();
}

class _CarrouselScreenEventJunin2State
    extends State<CarrouselScreenEventJunin2> {
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
                        widget.eventModelss16.fileNme1junin[index],
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
                    itemCount: widget.eventModelss16.fileNme1junin.length),
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
