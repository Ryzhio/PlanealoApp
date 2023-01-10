import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event12_tumbes/event_models12.dart';

class CarrouselScreenEventTumb5 extends StatefulWidget {
  final EventModelsssss12 eventModelsssss12;
  const CarrouselScreenEventTumb5({super.key, required this.eventModelsssss12});

  @override
  State<CarrouselScreenEventTumb5> createState() =>
      _CarrouselScreenEventTumb5State();
}

class _CarrouselScreenEventTumb5State extends State<CarrouselScreenEventTumb5> {
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
                        widget.eventModelsssss12.fileNme4tumb[index],
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
                    itemCount: widget.eventModelsssss12.fileNme4tumb.length),
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
