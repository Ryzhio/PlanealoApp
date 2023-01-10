import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event13_la%20libertad/event_models13.dart';

class CarrouselScreenEventLibert5 extends StatefulWidget {
  final EventModelsssss13 eventModelsssss13;
  const CarrouselScreenEventLibert5(
      {super.key, required this.eventModelsssss13});

  @override
  State<CarrouselScreenEventLibert5> createState() =>
      _CarrouselScreenEventLibert5State();
}

class _CarrouselScreenEventLibert5State
    extends State<CarrouselScreenEventLibert5> {
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
                        widget.eventModelsssss13.fileNme4libert[index],
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
                    itemCount: widget.eventModelsssss13.fileNme4libert.length),
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
