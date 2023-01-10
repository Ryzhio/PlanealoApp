import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event14_ayacucho/event_models14.dart';

class CarrouselScreenEventAyacu5 extends StatefulWidget {
  final EventModelsssss14 eventModelsssss14;
  const CarrouselScreenEventAyacu5(
      {super.key, required this.eventModelsssss14});

  @override
  State<CarrouselScreenEventAyacu5> createState() =>
      _CarrouselScreenEventAyacu5State();
}

class _CarrouselScreenEventAyacu5State
    extends State<CarrouselScreenEventAyacu5> {
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
                        widget.eventModelsssss14.fileNme4ayacu[index],
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
                    itemCount: widget.eventModelsssss14.fileNme4ayacu.length),
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
