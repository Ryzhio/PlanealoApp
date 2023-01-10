import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event18_ancash/event_models18.dart';

class CarrouselScreenEventAncash2 extends StatefulWidget {
  final EventModelss18 eventModelss18;
  const CarrouselScreenEventAncash2({super.key, required this.eventModelss18});

  @override
  State<CarrouselScreenEventAncash2> createState() =>
      _CarrouselScreenEventAncash2State();
}

class _CarrouselScreenEventAncash2State
    extends State<CarrouselScreenEventAncash2> {
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
                        widget.eventModelss18.fileNme1ancash[index],
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
                    itemCount: widget.eventModelss18.fileNme1ancash.length),
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
