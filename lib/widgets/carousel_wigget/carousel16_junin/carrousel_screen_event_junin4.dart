import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event16_junin/event_models16.dart';

class CarrouselScreenEventJunin4 extends StatefulWidget {
  final EventModelssss16 eventModelssss16;
  const CarrouselScreenEventJunin4({super.key, required this.eventModelssss16});

  @override
  State<CarrouselScreenEventJunin4> createState() =>
      _CarrouselScreenEventJunin4State();
}

class _CarrouselScreenEventJunin4State
    extends State<CarrouselScreenEventJunin4> {
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
                        widget.eventModelssss16.fileNme3junin[index],
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
                    itemCount: widget.eventModelssss16.fileNme3junin.length),
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
