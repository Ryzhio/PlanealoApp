import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event12_tumbes/event_models12.dart';

class CarrouselScreenEventTumb6 extends StatefulWidget {
  final EventModelssssss12 eventModelssssss12;
  const CarrouselScreenEventTumb6(
      {super.key, required this.eventModelssssss12});

  @override
  State<CarrouselScreenEventTumb6> createState() =>
      _CarrouselScreenEventTumb6State();
}

class _CarrouselScreenEventTumb6State extends State<CarrouselScreenEventTumb6> {
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
                        widget.eventModelssssss12.fileNme5tumb[index],
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
                    itemCount: widget.eventModelssssss12.fileNme5tumb.length),
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
