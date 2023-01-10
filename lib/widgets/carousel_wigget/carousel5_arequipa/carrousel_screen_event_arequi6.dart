import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event5_arequipa/event_models5.dart';

class CarrouselScreenEventArequi6 extends StatefulWidget {
  final EventModelssssss5 eventModelssssss5;
  const CarrouselScreenEventArequi6(
      {super.key, required this.eventModelssssss5});

  @override
  State<CarrouselScreenEventArequi6> createState() =>
      _CarrouselScreenEventArequi6State();
}

class _CarrouselScreenEventArequi6State
    extends State<CarrouselScreenEventArequi6> {
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
                        widget.eventModelssssss5.fileNme5arequi[index],
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
                    itemCount: widget.eventModelssssss5.fileNme5arequi.length),
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
