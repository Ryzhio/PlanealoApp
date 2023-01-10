import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event15_cajamarca/event_models15.dart';

class CarrouselScreenEventCajama3 extends StatefulWidget {
  final EventModelsss15 eventModelsss15;
  const CarrouselScreenEventCajama3({super.key, required this.eventModelsss15});

  @override
  State<CarrouselScreenEventCajama3> createState() =>
      _CarrouselScreenEventCajama3State();
}

class _CarrouselScreenEventCajama3State
    extends State<CarrouselScreenEventCajama3> {
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
                        widget.eventModelsss15.fileNme2cajama[index],
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
                    itemCount: widget.eventModelsss15.fileNme2cajama.length),
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
