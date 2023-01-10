import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event3_loreto/event_models3.dart';

class CarrouselScreenEventLoret4 extends StatefulWidget {
  final EventModelssss3 eventModelssss3;
  const CarrouselScreenEventLoret4({super.key, required this.eventModelssss3});

  @override
  State<CarrouselScreenEventLoret4> createState() =>
      _CarrouselScreenEventLoret4State();
}

class _CarrouselScreenEventLoret4State
    extends State<CarrouselScreenEventLoret4> {
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
                        widget.eventModelssss3.fileNme3loret[index],
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
                    itemCount: widget.eventModelssss3.fileNme3loret.length),
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
