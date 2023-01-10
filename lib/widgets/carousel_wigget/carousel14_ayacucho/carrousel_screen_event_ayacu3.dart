import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event14_ayacucho/event_models14.dart';

class CarrouselScreenEventAyacu3 extends StatefulWidget {
  final EventModelsss14 eventModelsss14;
  const CarrouselScreenEventAyacu3({super.key, required this.eventModelsss14});

  @override
  State<CarrouselScreenEventAyacu3> createState() =>
      _CarrouselScreenEventAyacu3State();
}

class _CarrouselScreenEventAyacu3State
    extends State<CarrouselScreenEventAyacu3> {
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
                        widget.eventModelsss14.fileNme2ayacu[index],
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
                    itemCount: widget.eventModelsss14.fileNme2ayacu.length),
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
