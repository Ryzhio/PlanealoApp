import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event9_amazonas/event_models9.dart';

class CarrouselScreenEventAmazo5 extends StatefulWidget {
  final EventModelsssss9 eventModelsssss9;
  const CarrouselScreenEventAmazo5({super.key, required this.eventModelsssss9});

  @override
  State<CarrouselScreenEventAmazo5> createState() =>
      _CarrouselScreenEventAmazo5State();
}

class _CarrouselScreenEventAmazo5State
    extends State<CarrouselScreenEventAmazo5> {
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
                        widget.eventModelsssss9.fileNme4amazo[index],
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
                    itemCount: widget.eventModelsssss9.fileNme4amazo.length),
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
