import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event16_junin/event_models16.dart';

class CarrouselScreenEventJunin3 extends StatefulWidget {
  final EventModelsss16 eventModelsss16;
  const CarrouselScreenEventJunin3({super.key, required this.eventModelsss16});

  @override
  State<CarrouselScreenEventJunin3> createState() =>
      _CarrouselScreenEventJunin3State();
}

class _CarrouselScreenEventJunin3State
    extends State<CarrouselScreenEventJunin3> {
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
                        widget.eventModelsss16.fileNme2junin[index],
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
                    itemCount: widget.eventModelsss16.fileNme2junin.length),
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
