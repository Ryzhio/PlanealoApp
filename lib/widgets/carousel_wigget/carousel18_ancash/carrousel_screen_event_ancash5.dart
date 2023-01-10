import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event18_ancash/event_models18.dart';

class CarrouselScreenEventAncash5 extends StatefulWidget {
  final EventModelsssss18 eventModelsssss18;
  const CarrouselScreenEventAncash5(
      {super.key, required this.eventModelsssss18});

  @override
  State<CarrouselScreenEventAncash5> createState() =>
      _CarrouselScreenEventAncash5State();
}

class _CarrouselScreenEventAncash5State
    extends State<CarrouselScreenEventAncash5> {
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
                        widget.eventModelsssss18.fileNme4ancash[index],
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
                    itemCount: widget.eventModelsssss18.fileNme4ancash.length),
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
