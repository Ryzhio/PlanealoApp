import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event15_cajamarca/event_models15.dart';

class CarrouselScreenEventCajama2 extends StatefulWidget {
  final EventModelss15 eventModelss15;
  const CarrouselScreenEventCajama2({super.key, required this.eventModelss15});

  @override
  State<CarrouselScreenEventCajama2> createState() =>
      _CarrouselScreenEventCajama2State();
}

class _CarrouselScreenEventCajama2State
    extends State<CarrouselScreenEventCajama2> {
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
                        widget.eventModelss15.fileNme1cajama[index],
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
                    itemCount: widget.eventModelss15.fileNme1cajama.length),
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
