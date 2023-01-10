import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event10_madre%20de%20dios/event_models10.dart';

class CarrouselScreenEventMadre1 extends StatefulWidget {
  final EventModels10 eventModels10;
  const CarrouselScreenEventMadre1({super.key, required this.eventModels10});

  @override
  State<CarrouselScreenEventMadre1> createState() =>
      _CarrouselScreenEventMadre1State();
}

class _CarrouselScreenEventMadre1State
    extends State<CarrouselScreenEventMadre1> {
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
                        widget.eventModels10.fileNmemadre[index],
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
                    itemCount: widget.eventModels10.fileNmemadre.length),
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
