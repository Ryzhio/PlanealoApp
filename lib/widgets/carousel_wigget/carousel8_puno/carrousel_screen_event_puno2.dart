import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event8_puno/event_models8.dart';

class CarrouselScreenEventPuno2 extends StatefulWidget {
  final EventModelss8 eventModelss8;
  const CarrouselScreenEventPuno2({super.key, required this.eventModelss8});

  @override
  State<CarrouselScreenEventPuno2> createState() =>
      _CarrouselScreenEventPuno2State();
}

class _CarrouselScreenEventPuno2State extends State<CarrouselScreenEventPuno2> {
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
                        widget.eventModelss8.fileNme1puno[index],
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
                    itemCount: widget.eventModelss8.fileNme1puno.length),
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
