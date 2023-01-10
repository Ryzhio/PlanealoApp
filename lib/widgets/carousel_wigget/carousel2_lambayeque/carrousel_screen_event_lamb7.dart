import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event2_lambayeque/event_models2.dart';

class CarrouselScreenEventLamb7 extends StatefulWidget {
  final EventModelsssssss2 eventModelsssssss2;
  const CarrouselScreenEventLamb7(
      {super.key, required this.eventModelsssssss2});

  @override
  State<CarrouselScreenEventLamb7> createState() =>
      _CarrouselScreenEventLamb7State();
}

class _CarrouselScreenEventLamb7State extends State<CarrouselScreenEventLamb7> {
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
                        widget.eventModelsssssss2.fileNme6lam[index],
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
                    itemCount: widget.eventModelsssssss2.fileNme6lam.length),
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
