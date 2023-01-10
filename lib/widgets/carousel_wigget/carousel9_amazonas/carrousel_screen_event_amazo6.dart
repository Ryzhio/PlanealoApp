import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event9_amazonas/event_models9.dart';

class CarrouselScreenEventAmazo6 extends StatefulWidget {
  final EventModelssssss9 eventModelssssss9;
  const CarrouselScreenEventAmazo6(
      {super.key, required this.eventModelssssss9});

  @override
  State<CarrouselScreenEventAmazo6> createState() =>
      _CarrouselScreenEventAmazo6State();
}

class _CarrouselScreenEventAmazo6State
    extends State<CarrouselScreenEventAmazo6> {
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
                        widget.eventModelssssss9.fileNme5amazo[index],
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
                    itemCount: widget.eventModelssssss9.fileNme5amazo.length),
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
