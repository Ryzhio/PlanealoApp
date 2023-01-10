import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event10_madre%20de%20dios/event_models10.dart';

class CarrouselScreenEventMadre3 extends StatefulWidget {
  final EventModelsss10 eventModelsss10;
  const CarrouselScreenEventMadre3({super.key, required this.eventModelsss10});

  @override
  State<CarrouselScreenEventMadre3> createState() =>
      _CarrouselScreenEventMadre3State();
}

class _CarrouselScreenEventMadre3State
    extends State<CarrouselScreenEventMadre3> {
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
                        widget.eventModelsss10.fileNme2madre[index],
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
                    itemCount: widget.eventModelsss10.fileNme2madre.length),
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
