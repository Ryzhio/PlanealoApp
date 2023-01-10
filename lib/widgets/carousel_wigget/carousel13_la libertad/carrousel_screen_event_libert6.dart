import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event13_la%20libertad/event_models13.dart';

class CarrouselScreenEventLibert6 extends StatefulWidget {
  final EventModelssssss13 eventModelssssss13;
  const CarrouselScreenEventLibert6(
      {super.key, required this.eventModelssssss13});

  @override
  State<CarrouselScreenEventLibert6> createState() =>
      _CarrouselScreenEventLibert6State();
}

class _CarrouselScreenEventLibert6State
    extends State<CarrouselScreenEventLibert6> {
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
                        widget.eventModelssssss13.fileNme5libert[index],
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
                    itemCount: widget.eventModelssssss13.fileNme5libert.length),
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
