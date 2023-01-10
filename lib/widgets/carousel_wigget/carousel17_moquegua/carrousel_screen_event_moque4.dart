import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event17_moquegua/event_models17.dart';

class CarrouselScreenEventMoque4 extends StatefulWidget {
  final EventModelssss17 eventModelssss17;
  const CarrouselScreenEventMoque4({super.key, required this.eventModelssss17});

  @override
  State<CarrouselScreenEventMoque4> createState() =>
      _CarrouselScreenEventMoque4State();
}

class _CarrouselScreenEventMoque4State
    extends State<CarrouselScreenEventMoque4> {
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
                        widget.eventModelssss17.fileNme3moque[index],
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
                    itemCount: widget.eventModelssss17.fileNme3moque.length),
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
