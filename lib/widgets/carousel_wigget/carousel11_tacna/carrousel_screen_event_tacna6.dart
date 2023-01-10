import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event11_tacna/event_models11.dart';

class CarrouselScreenEventTacna6 extends StatefulWidget {
  final EventModelssssss11 eventModelssssss11;
  const CarrouselScreenEventTacna6(
      {super.key, required this.eventModelssssss11});

  @override
  State<CarrouselScreenEventTacna6> createState() =>
      _CarrouselScreenEventTacna6State();
}

class _CarrouselScreenEventTacna6State
    extends State<CarrouselScreenEventTacna6> {
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
                        widget.eventModelssssss11.fileNme5tacna[index],
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
                    itemCount: widget.eventModelssssss11.fileNme5tacna.length),
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
