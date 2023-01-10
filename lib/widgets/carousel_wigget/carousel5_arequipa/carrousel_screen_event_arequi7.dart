import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event5_arequipa/event_models5.dart';

class CarrouselScreenEventArequi7 extends StatefulWidget {
  final EventModelsssssss5 eventModelsssssss5;
  const CarrouselScreenEventArequi7(
      {super.key, required this.eventModelsssssss5});

  @override
  State<CarrouselScreenEventArequi7> createState() =>
      _CarrouselScreenEventArequi7State();
}

class _CarrouselScreenEventArequi7State
    extends State<CarrouselScreenEventArequi7> {
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
                        widget.eventModelsssssss5.fileNme6arequi[index],
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
                    itemCount: widget.eventModelsssssss5.fileNme6arequi.length),
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
