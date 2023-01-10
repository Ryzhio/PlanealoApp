import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event2_lambayeque/event_models2.dart';

class CarrouselScreenEventLamb3 extends StatefulWidget {
  final EventModelsss2 eventModelsss2;
  const CarrouselScreenEventLamb3({super.key, required this.eventModelsss2});

  @override
  State<CarrouselScreenEventLamb3> createState() =>
      _CarrouselScreenEventLamb3State();
}

class _CarrouselScreenEventLamb3State extends State<CarrouselScreenEventLamb3> {
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
                        widget.eventModelsss2.fileNme2lam[index],
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
                    itemCount: widget.eventModelsss2.fileNme2lam.length),
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
