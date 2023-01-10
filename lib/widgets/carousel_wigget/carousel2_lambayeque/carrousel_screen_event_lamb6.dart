import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event2_lambayeque/event_models2.dart';

class CarrouselScreenEventLamb6 extends StatefulWidget {
  final EventModelssssss2 eventModelssssss2;
  const CarrouselScreenEventLamb6({super.key, required this.eventModelssssss2});

  @override
  State<CarrouselScreenEventLamb6> createState() =>
      _CarrouselScreenEventLamb6State();
}

class _CarrouselScreenEventLamb6State extends State<CarrouselScreenEventLamb6> {
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
                        widget.eventModelssssss2.fileNme5lam[index],
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
                    itemCount: widget.eventModelssssss2.fileNme5lam.length),
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
