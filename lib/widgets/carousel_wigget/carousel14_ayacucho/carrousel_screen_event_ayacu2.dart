import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event14_ayacucho/event_models14.dart';

class CarrouselScreenEventAyacu2 extends StatefulWidget {
  final EventModelss14 eventModelss14;
  const CarrouselScreenEventAyacu2({super.key, required this.eventModelss14});

  @override
  State<CarrouselScreenEventAyacu2> createState() =>
      _CarrouselScreenEventAyacu2State();
}

class _CarrouselScreenEventAyacu2State
    extends State<CarrouselScreenEventAyacu2> {
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
                        widget.eventModelss14.fileNme1ayacu[index],
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
                    itemCount: widget.eventModelss14.fileNme1ayacu.length),
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
