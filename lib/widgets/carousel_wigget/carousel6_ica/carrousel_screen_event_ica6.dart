import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event6_ica/event_models6.dart';

class CarrouselScreenEventIca6 extends StatefulWidget {
  final EventModelssssss6 eventModelssssss6;
  const CarrouselScreenEventIca6({super.key, required this.eventModelssssss6});

  @override
  State<CarrouselScreenEventIca6> createState() =>
      _CarrouselScreenEventIca6State();
}

class _CarrouselScreenEventIca6State extends State<CarrouselScreenEventIca6> {
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
                        widget.eventModelssssss6.fileNme5ica[index],
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
                    itemCount: widget.eventModelssssss6.fileNme5ica.length),
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
