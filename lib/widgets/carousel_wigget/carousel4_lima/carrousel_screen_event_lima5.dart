import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event4_lima/event_models4.dart';

class CarrouselScreenEventLima5 extends StatefulWidget {
  final EventModelsssss4 eventModelsssss4;
  const CarrouselScreenEventLima5({super.key, required this.eventModelsssss4});

  @override
  State<CarrouselScreenEventLima5> createState() =>
      _CarrouselScreenEventLima5State();
}

class _CarrouselScreenEventLima5State extends State<CarrouselScreenEventLima5> {
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
                        widget.eventModelsssss4.fileNme4lima[index],
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
                    itemCount: widget.eventModelsssss4.fileNme4lima.length),
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
