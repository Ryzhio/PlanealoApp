import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event17_moquegua/event_models17.dart';

class CarrouselScreenEventMoque7 extends StatefulWidget {
  final EventModelsssssss17 eventModelsssssss17;
  const CarrouselScreenEventMoque7(
      {super.key, required this.eventModelsssssss17});

  @override
  State<CarrouselScreenEventMoque7> createState() =>
      _CarrouselScreenEventMoque7State();
}

class _CarrouselScreenEventMoque7State
    extends State<CarrouselScreenEventMoque7> {
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
                        widget.eventModelsssssss17.fileNme6moque[index],
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
                    itemCount: widget.eventModelsssssss17.fileNme6moque.length),
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
