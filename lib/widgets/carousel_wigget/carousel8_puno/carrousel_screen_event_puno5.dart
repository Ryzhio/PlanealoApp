import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event8_puno/event_models8.dart';

class CarrouselScreenEventPuno5 extends StatefulWidget {
  final EventModelsssss8 eventModelsssss8;
  const CarrouselScreenEventPuno5({super.key, required this.eventModelsssss8});

  @override
  State<CarrouselScreenEventPuno5> createState() =>
      _CarrouselScreenEventPuno5State();
}

class _CarrouselScreenEventPuno5State extends State<CarrouselScreenEventPuno5> {
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
                        widget.eventModelsssss8.fileNme4puno[index],
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
                    itemCount: widget.eventModelsssss8.fileNme4puno.length),
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
