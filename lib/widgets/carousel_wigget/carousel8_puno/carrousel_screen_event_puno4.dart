import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event8_puno/event_models8.dart';

class CarrouselScreenEventPuno4 extends StatefulWidget {
  final EventModelssss8 eventModelssss8;
  const CarrouselScreenEventPuno4({super.key, required this.eventModelssss8});

  @override
  State<CarrouselScreenEventPuno4> createState() =>
      _CarrouselScreenEventPuno4State();
}

class _CarrouselScreenEventPuno4State extends State<CarrouselScreenEventPuno4> {
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
                        widget.eventModelssss8.fileNme3puno[index],
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
                    itemCount: widget.eventModelssss8.fileNme3puno.length),
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
