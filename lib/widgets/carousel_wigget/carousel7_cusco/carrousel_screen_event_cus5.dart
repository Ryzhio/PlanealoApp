import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:planealo_app/models/event_model/event7_cusco/event_models7.dart';

class CarrouselScreenEventCus5 extends StatefulWidget {
  final EventModelsssss7 eventModelsssss7;
  const CarrouselScreenEventCus5({super.key, required this.eventModelsssss7});

  @override
  State<CarrouselScreenEventCus5> createState() =>
      _CarrouselScreenEventCus5State();
}

class _CarrouselScreenEventCus5State extends State<CarrouselScreenEventCus5> {
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
                        widget.eventModelsssss7.fileNme4cus[index],
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
                    itemCount: widget.eventModelsssss7.fileNme4cus.length),
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
