import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event4_lima/event_models4.dart';

class CarrouselScreenEventLima7 extends StatefulWidget {
  final EventModelsssssss4 eventModelsssssss4;
  const CarrouselScreenEventLima7(
      {super.key, required this.eventModelsssssss4});

  @override
  State<CarrouselScreenEventLima7> createState() =>
      _CarrouselScreenEventLima7State();
}

class _CarrouselScreenEventLima7State extends State<CarrouselScreenEventLima7> {
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
                        widget.eventModelsssssss4.fileNme6lima[index],
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
                    itemCount: widget.eventModelsssssss4.fileNme6lima.length),
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
