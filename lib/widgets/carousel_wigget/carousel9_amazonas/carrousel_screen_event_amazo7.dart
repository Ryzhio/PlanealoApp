import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event9_amazonas/event_models9.dart';

class CarrouselScreenEventAmazo7 extends StatefulWidget {
  final EventModelsssssss9 eventModelsssssss9;
  const CarrouselScreenEventAmazo7(
      {super.key, required this.eventModelsssssss9});

  @override
  State<CarrouselScreenEventAmazo7> createState() =>
      _CarrouselScreenEventAmazo7State();
}

class _CarrouselScreenEventAmazo7State
    extends State<CarrouselScreenEventAmazo7> {
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
                        widget.eventModelsssssss9.fileNme6amazo[index],
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
                    itemCount: widget.eventModelsssssss9.fileNme6amazo.length),
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
