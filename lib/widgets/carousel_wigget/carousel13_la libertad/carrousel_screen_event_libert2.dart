import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event13_la%20libertad/event_models13.dart';

class CarrouselScreenEventLibert2 extends StatefulWidget {
  final EventModelss13 eventModelss13;
  const CarrouselScreenEventLibert2({super.key, required this.eventModelss13});

  @override
  State<CarrouselScreenEventLibert2> createState() =>
      _CarrouselScreenEventLibert2State();
}

class _CarrouselScreenEventLibert2State
    extends State<CarrouselScreenEventLibert2> {
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
                        widget.eventModelss13.fileNme1libert[index],
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
                    itemCount: widget.eventModelss13.fileNme1libert.length),
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
