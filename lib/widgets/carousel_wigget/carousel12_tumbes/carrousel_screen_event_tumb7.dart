import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event12_tumbes/event_models12.dart';

class CarrouselScreenEventTumb7 extends StatefulWidget {
  final EventModelsssssss12 eventModelsssssss12;
  const CarrouselScreenEventTumb7(
      {super.key, required this.eventModelsssssss12});

  @override
  State<CarrouselScreenEventTumb7> createState() =>
      _CarrouselScreenEventTumb7State();
}

class _CarrouselScreenEventTumb7State extends State<CarrouselScreenEventTumb7> {
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
                        widget.eventModelsssssss12.fileNme6tumb[index],
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
                    itemCount: widget.eventModelsssssss12.fileNme6tumb.length),
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
