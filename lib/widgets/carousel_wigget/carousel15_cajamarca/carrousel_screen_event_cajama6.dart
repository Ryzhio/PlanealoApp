import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event15_cajamarca/event_models15.dart';

class CarrouselScreenEventCajama6 extends StatefulWidget {
  final EventModelssssss15 eventModelssssss15;
  const CarrouselScreenEventCajama6(
      {super.key, required this.eventModelssssss15});

  @override
  State<CarrouselScreenEventCajama6> createState() =>
      _CarrouselScreenEventCajama6State();
}

class _CarrouselScreenEventCajama6State
    extends State<CarrouselScreenEventCajama6> {
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
                        widget.eventModelssssss15.fileNme5cajama[index],
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
                    itemCount: widget.eventModelssssss15.fileNme5cajama.length),
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
