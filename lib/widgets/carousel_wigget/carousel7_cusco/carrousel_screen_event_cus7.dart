import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event7_cusco/event_models7.dart';

class CarrouselScreenEventCus7 extends StatefulWidget {
  final EventModelsssssss7 eventModelsssssss7;
  const CarrouselScreenEventCus7({super.key, required this.eventModelsssssss7});

  @override
  State<CarrouselScreenEventCus7> createState() =>
      _CarrouselScreenEventCus7State();
}

class _CarrouselScreenEventCus7State extends State<CarrouselScreenEventCus7> {
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
                        widget.eventModelsssssss7.fileNme6cus[index],
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
                    itemCount: widget.eventModelsssssss7.fileNme6cus.length),
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
