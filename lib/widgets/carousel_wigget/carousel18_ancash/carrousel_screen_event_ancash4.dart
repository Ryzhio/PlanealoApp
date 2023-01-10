import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event18_ancash/event_models18.dart';

class CarrouselScreenEventAncash4 extends StatefulWidget {
  final EventModelssss18 eventModelssss18;
  const CarrouselScreenEventAncash4(
      {super.key, required this.eventModelssss18});

  @override
  State<CarrouselScreenEventAncash4> createState() =>
      _CarrouselScreenEventAncash4State();
}

class _CarrouselScreenEventAncash4State
    extends State<CarrouselScreenEventAncash4> {
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
                        widget.eventModelssss18.fileNme3ancash[index],
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
                    itemCount: widget.eventModelssss18.fileNme3ancash.length),
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
