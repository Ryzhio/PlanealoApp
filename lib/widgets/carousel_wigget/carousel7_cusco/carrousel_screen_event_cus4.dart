import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event7_cusco/event_models7.dart';

class CarrouselScreenEventCus4 extends StatefulWidget {
  final EventModelssss7 eventModelssss7;
  const CarrouselScreenEventCus4({super.key, required this.eventModelssss7});

  @override
  State<CarrouselScreenEventCus4> createState() =>
      _CarrouselScreenEventCus4State();
}

class _CarrouselScreenEventCus4State extends State<CarrouselScreenEventCus4> {
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
                        widget.eventModelssss7.fileNme3cus[index],
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
                    itemCount: widget.eventModelssss7.fileNme3cus.length),
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
