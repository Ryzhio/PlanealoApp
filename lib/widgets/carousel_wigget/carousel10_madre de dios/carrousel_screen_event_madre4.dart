import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event10_madre%20de%20dios/event_models10.dart';

class CarrouselScreenEventMadre4 extends StatefulWidget {
  final EventModelssss10 eventModelssss10;
  const CarrouselScreenEventMadre4({super.key, required this.eventModelssss10});

  @override
  State<CarrouselScreenEventMadre4> createState() =>
      _CarrouselScreenEventMadre4State();
}

class _CarrouselScreenEventMadre4State
    extends State<CarrouselScreenEventMadre4> {
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
                        widget.eventModelssss10.fileNme3madre[index],
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
                    itemCount: widget.eventModelssss10.fileNme3madre.length),
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
