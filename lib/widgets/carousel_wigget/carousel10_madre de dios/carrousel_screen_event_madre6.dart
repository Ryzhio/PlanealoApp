import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event10_madre%20de%20dios/event_models10.dart';

class CarrouselScreenEventMadre6 extends StatefulWidget {
  final EventModelssssss10 eventModelssssss10;
  const CarrouselScreenEventMadre6(
      {super.key, required this.eventModelssssss10});

  @override
  State<CarrouselScreenEventMadre6> createState() =>
      _CarrouselScreenEventMadre6State();
}

class _CarrouselScreenEventMadre6State
    extends State<CarrouselScreenEventMadre6> {
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
                        widget.eventModelssssss10.fileNme5madre[index],
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
                    itemCount: widget.eventModelssssss10.fileNme5madre.length),
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
