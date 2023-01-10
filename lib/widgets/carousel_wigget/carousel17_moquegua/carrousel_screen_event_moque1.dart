import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event17_moquegua/event_models17.dart';

class CarrouselScreenEventMoque1 extends StatefulWidget {
  final EventModels17 eventModels17;
  const CarrouselScreenEventMoque1({super.key, required this.eventModels17});

  @override
  State<CarrouselScreenEventMoque1> createState() =>
      _CarrouselScreenEventMoque1State();
}

class _CarrouselScreenEventMoque1State
    extends State<CarrouselScreenEventMoque1> {
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
                        widget.eventModels17.fileNmemoque[index],
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
                    itemCount: widget.eventModels17.fileNmemoque.length),
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
