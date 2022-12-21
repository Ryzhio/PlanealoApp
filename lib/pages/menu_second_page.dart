import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sqflite_flutter/pages/reservationspage/create_page.dart';
import 'package:sqflite_flutter/pages/themesmode/productos_page.dart';

class MenuSecondPage extends StatefulWidget {
  const MenuSecondPage({super.key});

  @override
  State<MenuSecondPage> createState() => _MenuSecondPageState();
}

class _MenuSecondPageState extends State<MenuSecondPage> {
  int _currentIndex = 0;

  final screens = [
    const CreatePage(),
    const ProductosPage(),
  ];
  final colors = [
    Colors.red,
    Colors.amber,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        margin: const EdgeInsets.only(bottom: 10),
        child: GNav(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          color: colors[_currentIndex],
          tabBackgroundColor: colors[_currentIndex],
          selectedIndex: _currentIndex,
          tabBorderRadius: 10,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          onTabChange: (index) => {setState(() => _currentIndex = index)},
          tabs: const [
            GButton(
              icon: Ionicons.reader_outline,
              text: 'Reservas',
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),
            GButton(
              icon: Ionicons.home,
              text: 'Mis Reservaciones',
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
