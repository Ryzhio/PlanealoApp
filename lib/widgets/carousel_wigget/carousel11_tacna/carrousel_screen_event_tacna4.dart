import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event11_tacna/event_models11.dart';

class CarrouselScreenEventTacna4 extends StatefulWidget {
  final EventModelssss11 eventModelssss11;
  const CarrouselScreenEventTacna4({super.key, required this.eventModelssss11});

  @override
  State<CarrouselScreenEventTacna4> createState() =>
      _CarrouselScreenEventTacna4State();
}

class _CarrouselScreenEventTacna4State
    extends State<CarrouselScreenEventTacna4> {
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
                        widget.eventModelssss11.fileNme3tacna[index],
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
                    itemCount: widget.eventModelssss11.fileNme3tacna.length),
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
