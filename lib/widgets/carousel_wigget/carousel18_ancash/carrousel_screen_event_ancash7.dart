import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event18_ancash/event_models18.dart';

class CarrouselScreenEventAncash7 extends StatefulWidget {
  final EventModelsssssss18 eventModelsssssss18;
  const CarrouselScreenEventAncash7(
      {super.key, required this.eventModelsssssss18});

  @override
  State<CarrouselScreenEventAncash7> createState() =>
      _CarrouselScreenEventAncash7State();
}

class _CarrouselScreenEventAncash7State
    extends State<CarrouselScreenEventAncash7> {
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
                        widget.eventModelsssssss18.fileNme6ancash[index],
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
                    itemCount:
                        widget.eventModelsssssss18.fileNme6ancash.length),
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
