import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event8_puno/event_models8.dart';

class CarrouselScreenEventPuno6 extends StatefulWidget {
  final EventModelssssss8 eventModelssssss8;
  const CarrouselScreenEventPuno6({super.key, required this.eventModelssssss8});

  @override
  State<CarrouselScreenEventPuno6> createState() =>
      _CarrouselScreenEventPuno6State();
}

class _CarrouselScreenEventPuno6State extends State<CarrouselScreenEventPuno6> {
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
                        widget.eventModelssssss8.fileNme5puno[index],
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
                    itemCount: widget.eventModelssssss8.fileNme5puno.length),
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
