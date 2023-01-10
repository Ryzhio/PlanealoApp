import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event11_tacna/event_models11.dart';

class CarrouselScreenEventTacna5 extends StatefulWidget {
  final EventModelsssss11 eventModelsssss11;
  const CarrouselScreenEventTacna5(
      {super.key, required this.eventModelsssss11});

  @override
  State<CarrouselScreenEventTacna5> createState() =>
      _CarrouselScreenEventTacna5State();
}

class _CarrouselScreenEventTacna5State
    extends State<CarrouselScreenEventTacna5> {
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
                        widget.eventModelsssss11.fileNme4tacna[index],
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
                    itemCount: widget.eventModelsssss11.fileNme4tacna.length),
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
