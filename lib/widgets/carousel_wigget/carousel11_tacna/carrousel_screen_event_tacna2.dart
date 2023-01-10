import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event11_tacna/event_models11.dart';

class CarrouselScreenEventTacna2 extends StatefulWidget {
  final EventModelss11 eventModelss11;
  const CarrouselScreenEventTacna2({super.key, required this.eventModelss11});

  @override
  State<CarrouselScreenEventTacna2> createState() =>
      _CarrouselScreenEventTacna2State();
}

class _CarrouselScreenEventTacna2State
    extends State<CarrouselScreenEventTacna2> {
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
                        widget.eventModelss11.fileNme1tacna[index],
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
                    itemCount: widget.eventModelss11.fileNme1tacna.length),
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
