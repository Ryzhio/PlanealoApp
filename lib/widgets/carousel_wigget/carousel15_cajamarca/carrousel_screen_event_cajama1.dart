import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event15_cajamarca/event_models15.dart';

class CarrouselScreenEventCajama1 extends StatefulWidget {
  final EventModels15 eventModels15;
  const CarrouselScreenEventCajama1({super.key, required this.eventModels15});

  @override
  State<CarrouselScreenEventCajama1> createState() =>
      _CarrouselScreenEventCajama1State();
}

class _CarrouselScreenEventCajama1State
    extends State<CarrouselScreenEventCajama1> {
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
                        widget.eventModels15.fileNmecajama[index],
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
                    itemCount: widget.eventModels15.fileNmecajama.length),
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
