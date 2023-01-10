import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event14_ayacucho/event_models14.dart';

class CarrouselScreenEventAyacu6 extends StatefulWidget {
  final EventModelssssss14 eventModelssssss14;
  const CarrouselScreenEventAyacu6(
      {super.key, required this.eventModelssssss14});

  @override
  State<CarrouselScreenEventAyacu6> createState() =>
      _CarrouselScreenEventAyacu6State();
}

class _CarrouselScreenEventAyacu6State
    extends State<CarrouselScreenEventAyacu6> {
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
                        widget.eventModelssssss14.fileNme5ayacu[index],
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
                    itemCount: widget.eventModelssssss14.fileNme5ayacu.length),
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
