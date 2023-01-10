import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event16_junin/event_models16.dart';

class CarrouselScreenEventJunin7 extends StatefulWidget {
  final EventModelsssssss16 eventModelsssssss16;
  const CarrouselScreenEventJunin7(
      {super.key, required this.eventModelsssssss16});

  @override
  State<CarrouselScreenEventJunin7> createState() =>
      _CarrouselScreenEventJunin7State();
}

class _CarrouselScreenEventJunin7State
    extends State<CarrouselScreenEventJunin7> {
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
                        widget.eventModelsssssss16.fileNme6junin[index],
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
                    itemCount: widget.eventModelsssssss16.fileNme6junin.length),
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
