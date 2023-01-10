import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event13_la%20libertad/event_models13.dart';

class CarrouselScreenEventLibert3 extends StatefulWidget {
  final EventModelsss13 eventModelsss13;
  const CarrouselScreenEventLibert3({super.key, required this.eventModelsss13});

  @override
  State<CarrouselScreenEventLibert3> createState() =>
      _CarrouselScreenEventLibert3State();
}

class _CarrouselScreenEventLibert3State
    extends State<CarrouselScreenEventLibert3> {
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
                        widget.eventModelsss13.fileNme2libert[index],
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
                    itemCount: widget.eventModelsss13.fileNme2libert.length),
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
