import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event12_tumbes/event_models12.dart';

class CarrouselScreenEventTumb2 extends StatefulWidget {
  final EventModelss12 eventModelss12;
  const CarrouselScreenEventTumb2({super.key, required this.eventModelss12});

  @override
  State<CarrouselScreenEventTumb2> createState() =>
      _CarrouselScreenEventTumb2State();
}

class _CarrouselScreenEventTumb2State extends State<CarrouselScreenEventTumb2> {
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
                        widget.eventModelss12.fileNme1tumb[index],
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
                    itemCount: widget.eventModelss12.fileNme1tumb.length),
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
