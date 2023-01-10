import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event11_tacna/event_models11.dart';

class CarrouselScreenEventTacna3 extends StatefulWidget {
  final EventModelsss11 eventModelsss11;
  const CarrouselScreenEventTacna3({super.key, required this.eventModelsss11});

  @override
  State<CarrouselScreenEventTacna3> createState() =>
      _CarrouselScreenEventTacna3State();
}

class _CarrouselScreenEventTacna3State
    extends State<CarrouselScreenEventTacna3> {
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
                        widget.eventModelsss11.fileNme2tacna[index],
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
                    itemCount: widget.eventModelsss11.fileNme2tacna.length),
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
