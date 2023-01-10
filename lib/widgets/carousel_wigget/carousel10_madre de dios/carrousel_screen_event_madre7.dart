import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event10_madre%20de%20dios/event_models10.dart';

class CarrouselScreenEventMadre7 extends StatefulWidget {
  final EventModelsssssss10 eventModelsssssss10;
  const CarrouselScreenEventMadre7(
      {super.key, required this.eventModelsssssss10});

  @override
  State<CarrouselScreenEventMadre7> createState() =>
      _CarrouselScreenEventMadre7State();
}

class _CarrouselScreenEventMadre7State
    extends State<CarrouselScreenEventMadre7> {
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
                        widget.eventModelsssssss10.fileNme6madre[index],
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
                    itemCount: widget.eventModelsssssss10.fileNme6madre.length),
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
