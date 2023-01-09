import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
// import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'assets/city1.jpg',
  'assets/city2.jpg',
  'assets/city3.jpg',
  'assets/city4.jpg',
  'assets/city5.jpg',
  'assets/city6.jpg',
  'assets/city7.jpg',
];

class DetailScreenImage extends StatefulWidget {
  const DetailScreenImage({super.key});

  @override
  State<DetailScreenImage> createState() => _DetailScreenImageState();
}

class _DetailScreenImageState extends State<DetailScreenImage> {
  // final CarouselController _controller = CarouselController();

  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Material(
      color: Colors.black,
      child: SizedBox(
        height: 380,
        child: CarouselSlider.builder(
            slideBuilder: (index) {
              return Image.asset(
                imgList[index],
                fit: BoxFit.cover,
              );
            },
            unlimitedMode: true,
            slideTransform: const CubeTransform(),
            slideIndicator: CircularSlideIndicator(
              indicatorBackgroundColor: Colors.white,
              currentIndicatorColor: Colors.amber[800]!,
              indicatorBorderColor: Colors.amber[400]!,
              padding: const EdgeInsets.only(bottom: 60),
            ),
            itemCount: 7),
      ),
    );
  }
}

//         CarouselSlider(
//       carouselController: _controller,
//       options: CarouselOptions(
//         height: 360,
//         viewportFraction: 1.0,
//         enlargeCenterPage: false,
//       ),
//       items: imgList
//           .map(
//             (item) => Container(
//               child: Center(
//                 child: Image.asset(
//                   item,
//                   fit: BoxFit.cover,
//                   height: 360,
//                 ),
//               ),
//             ),
//           )
//           .toList(),
//     );
//   }
// }

//IMAGENES DEL CARRUSEL
// final List<Widget> imageSliders = imgList
//     .map(
//       (item) => Container(
//         margin: const EdgeInsets.all(5.0),
//         child: ClipRRect(
//             borderRadius: const BorderRadius.all(Radius.circular(5.0)),
//             child: Stack(
//               children: [
//                 Image.asset(item, fit: BoxFit.cover, width: 1000.0),
//                 Positioned(
//                   bottom: 0.0,
//                   left: 0.0,
//                   right: 0.0,
//                   child: Container(
//                     decoration: const BoxDecoration(
//                       gradient: LinearGradient(
//                         colors: [
//                           Color.fromARGB(200, 0, 0, 0),
//                           Color.fromARGB(0, 0, 0, 0)
//                         ],
//                         begin: Alignment.bottomCenter,
//                         end: Alignment.topCenter,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             )),
//       ),
//     )
//     .toList();
