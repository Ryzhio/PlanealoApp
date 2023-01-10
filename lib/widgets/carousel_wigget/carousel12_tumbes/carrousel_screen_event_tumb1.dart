import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event12_tumbes/event_models12.dart';

class CarrouselScreenEventTumb1 extends StatefulWidget {
  final EventModels12 eventModels12;
  const CarrouselScreenEventTumb1({super.key, required this.eventModels12});

  @override
  State<CarrouselScreenEventTumb1> createState() =>
      _CarrouselScreenEventTumb1State();
}

class _CarrouselScreenEventTumb1State extends State<CarrouselScreenEventTumb1> {
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
                        widget.eventModels12.fileNmetumb[index],
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
                    itemCount: widget.eventModels12.fileNmetumb.length),
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
