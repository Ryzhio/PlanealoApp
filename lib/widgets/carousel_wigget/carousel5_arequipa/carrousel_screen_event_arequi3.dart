import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event5_arequipa/event_models5.dart';

class CarrouselScreenEventArequi3 extends StatefulWidget {
  final EventModelsss5 eventModelsss5;
  const CarrouselScreenEventArequi3({super.key, required this.eventModelsss5});

  @override
  State<CarrouselScreenEventArequi3> createState() =>
      _CarrouselScreenEventArequi3State();
}

class _CarrouselScreenEventArequi3State
    extends State<CarrouselScreenEventArequi3> {
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
                        widget.eventModelsss5.fileNme2arequi[index],
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
                    itemCount: widget.eventModelsss5.fileNme2arequi.length),
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
