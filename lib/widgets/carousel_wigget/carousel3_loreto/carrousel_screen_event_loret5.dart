import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event3_loreto/event_models3.dart';

class CarrouselScreenEventLoret5 extends StatefulWidget {
  final EventModelsssss3 eventModelsssss3;
  const CarrouselScreenEventLoret5({super.key, required this.eventModelsssss3});

  @override
  State<CarrouselScreenEventLoret5> createState() =>
      _CarrouselScreenEventLoret5State();
}

class _CarrouselScreenEventLoret5State
    extends State<CarrouselScreenEventLoret5> {
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
                        widget.eventModelsssss3.fileNme4loret[index],
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
                    itemCount: widget.eventModelsssss3.fileNme4loret.length),
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
