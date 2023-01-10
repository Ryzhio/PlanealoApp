import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event7_cusco/event_models7.dart';

class CarrouselScreenEventCus6 extends StatefulWidget {
  final EventModelssssss7 eventModelssssss7;
  const CarrouselScreenEventCus6({super.key, required this.eventModelssssss7});

  @override
  State<CarrouselScreenEventCus6> createState() =>
      _CarrouselScreenEventCus6State();
}

class _CarrouselScreenEventCus6State extends State<CarrouselScreenEventCus6> {
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
                        widget.eventModelssssss7.fileNme5cus[index],
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
                    itemCount: widget.eventModelssssss7.fileNme5cus.length),
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
