import 'package:flutter/material.dart';

class SliderTile extends StatelessWidget {
  final String image;
  final bool activePage;
  const SliderTile({super.key, required this.activePage, required this.image});

  @override
  Widget build(BuildContext context) {
    final double top = activePage ? 50 : 150;
    final double blur = activePage ? 30 : 0;
    final double offset = activePage ? 20 : 0;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 1000),
      curve: Curves.easeOutQuint,
      margin: EdgeInsets.only(top: top, bottom: 100, right: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            BoxShadow(
              color: Colors.black87,
              blurRadius: blur,
              offset: Offset(offset, offset),
            ),
          ]),
    );
  }
}
