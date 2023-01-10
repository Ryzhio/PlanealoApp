import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event9_amazonas/event_models9.dart';

class CarrouselScreenEventAmazo1 extends StatefulWidget {
  final EventModels9 eventModels9;
  const CarrouselScreenEventAmazo1({super.key, required this.eventModels9});

  @override
  State<CarrouselScreenEventAmazo1> createState() =>
      _CarrouselScreenEventAmazo1State();
}

class _CarrouselScreenEventAmazo1State
    extends State<CarrouselScreenEventAmazo1> {
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
                        widget.eventModels9.fileNmeamazo[index],
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
                    itemCount: widget.eventModels9.fileNmeamazo.length),
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
