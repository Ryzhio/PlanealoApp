import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event17_moquegua/event_models17.dart';

class CarrouselScreenEventMoque3 extends StatefulWidget {
  final EventModelsss17 eventModelsss17;
  const CarrouselScreenEventMoque3({super.key, required this.eventModelsss17});

  @override
  State<CarrouselScreenEventMoque3> createState() =>
      _CarrouselScreenEventMoque3State();
}

class _CarrouselScreenEventMoque3State
    extends State<CarrouselScreenEventMoque3> {
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
                        widget.eventModelsss17.fileNme2moque[index],
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
                    itemCount: widget.eventModelsss17.fileNme2moque.length),
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
