import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event9_amazonas/event_models9.dart';

class CarrouselScreenEventAmazo2 extends StatefulWidget {
  final EventModelss9 eventModelss9;
  const CarrouselScreenEventAmazo2({super.key, required this.eventModelss9});

  @override
  State<CarrouselScreenEventAmazo2> createState() =>
      _CarrouselScreenEventAmazo2State();
}

class _CarrouselScreenEventAmazo2State
    extends State<CarrouselScreenEventAmazo2> {
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
                        widget.eventModelss9.fileNme1amazo[index],
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
                    itemCount: widget.eventModelss9.fileNme1amazo.length),
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
