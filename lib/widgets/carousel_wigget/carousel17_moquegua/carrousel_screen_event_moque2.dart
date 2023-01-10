import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event17_moquegua/event_models17.dart';

class CarrouselScreenEventMoque2 extends StatefulWidget {
  final EventModelss17 eventModelss17;
  const CarrouselScreenEventMoque2({super.key, required this.eventModelss17});

  @override
  State<CarrouselScreenEventMoque2> createState() =>
      _CarrouselScreenEventMoque2State();
}

class _CarrouselScreenEventMoque2State
    extends State<CarrouselScreenEventMoque2> {
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
                        widget.eventModelss17.fileNme1moque[index],
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
                    itemCount: widget.eventModelss17.fileNme1moque.length),
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
