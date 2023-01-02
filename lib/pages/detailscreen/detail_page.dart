import 'package:flutter/material.dart';
import 'package:planealo_app/pages/detailscreen/slider_tile.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final PageController _pageController = PageController(viewportFraction: 0.8);
  int _currentPage = 0;

  List _listSlide = [
    {'id': 0, 'image': 'assets/city1.jpg'},
    {'id': 1, 'image': 'assets/city2.jpg'},
    {'id': 2, 'image': 'assets/city3.jpg'},
    {'id': 3, 'image': 'assets/city4.jpg'},
    {'id': 4, 'image': 'assets/city5.jpg'},
    {'id': 5, 'image': 'assets/city6.jpg'},
  ];

  @override
  void initState() {
    _pageController.addListener(() {
      int next = _pageController.page!.round();
      if (_currentPage != next) {
        setState(() {
          _currentPage = next;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: _listSlide.length,
                    itemBuilder: (_, currentIndex) {
                      bool activePage = currentIndex == _currentPage;
                      return SliderTile(
                        image: _listSlide[currentIndex]['image'],
                        activePage: activePage,
                      );
                    },
                  ),
                ),
                _buildBullets()
              ],
            ),
          ],
        ),
      ),
    );
  }

  _buildBullets() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _listSlide.map(
          (i) {
            return
                //  InkWell(
                // onTap: () {
                //   setState(() {
                //     _pageController.jumpToPage(i('id'));
                //     _currentPage = i('id');
                //   });
                // },
                // child:
                Container(
              margin: const EdgeInsets.all(10),
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: _currentPage == i['id'] ? Colors.red : Colors.grey,
              ),
            );
            // );
          },
        ).toList(),
      ),
    );
  }
}
