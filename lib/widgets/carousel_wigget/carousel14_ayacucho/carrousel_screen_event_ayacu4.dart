import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event14_ayacucho/event_models14.dart';

class CarrouselScreenEventAyacu4 extends StatefulWidget {
  final EventModelssss14 eventModelssss14;
  const CarrouselScreenEventAyacu4({super.key, required this.eventModelssss14});

  @override
  State<CarrouselScreenEventAyacu4> createState() =>
      _CarrouselScreenEventAyacu4State();
}

class _CarrouselScreenEventAyacu4State
    extends State<CarrouselScreenEventAyacu4> {
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
                        widget.eventModelssss14.fileNme3ayacu[index],
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
                    itemCount: widget.eventModelssss14.fileNme3ayacu.length),
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
