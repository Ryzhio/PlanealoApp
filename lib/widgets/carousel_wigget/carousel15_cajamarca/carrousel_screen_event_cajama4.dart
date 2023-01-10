import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event15_cajamarca/event_models15.dart';

class CarrouselScreenEventCajama4 extends StatefulWidget {
  final EventModelssss15 eventModelssss15;
  const CarrouselScreenEventCajama4(
      {super.key, required this.eventModelssss15});

  @override
  State<CarrouselScreenEventCajama4> createState() =>
      _CarrouselScreenEventCajama4State();
}

class _CarrouselScreenEventCajama4State
    extends State<CarrouselScreenEventCajama4> {
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
                        widget.eventModelssss15.fileNme3cajama[index],
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
                    itemCount: widget.eventModelssss15.fileNme3cajama.length),
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
