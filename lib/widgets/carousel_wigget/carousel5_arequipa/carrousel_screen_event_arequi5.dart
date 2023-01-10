import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event5_arequipa/event_models5.dart';

class CarrouselScreenEventArequi5 extends StatefulWidget {
  final EventModelsssss5 eventModelsssss5;
  const CarrouselScreenEventArequi5(
      {super.key, required this.eventModelsssss5});

  @override
  State<CarrouselScreenEventArequi5> createState() =>
      _CarrouselScreenEventArequi5State();
}

class _CarrouselScreenEventArequi5State
    extends State<CarrouselScreenEventArequi5> {
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
                        widget.eventModelsssss5.fileNme4arequi[index],
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
                    itemCount: widget.eventModelsssss5.fileNme4arequi.length),
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
