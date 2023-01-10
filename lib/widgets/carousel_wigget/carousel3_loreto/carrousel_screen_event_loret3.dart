import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event3_loreto/event_models3.dart';

class CarrouselScreenEventLoret3 extends StatefulWidget {
  final EventModelsss3 eventModelsss3;
  const CarrouselScreenEventLoret3({super.key, required this.eventModelsss3});

  @override
  State<CarrouselScreenEventLoret3> createState() =>
      _CarrouselScreenEventLoret3State();
}

class _CarrouselScreenEventLoret3State
    extends State<CarrouselScreenEventLoret3> {
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
                        widget.eventModelsss3.fileNme2loret[index],
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
                    itemCount: widget.eventModelsss3.fileNme2loret.length),
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
