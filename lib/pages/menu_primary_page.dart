import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sqflite_flutter/pages/producto/config_pages.dart';
import 'package:sqflite_flutter/pages/producto/home_page.dart';
import 'package:sqflite_flutter/pages/producto/principal_page.dart';
import 'package:sqflite_flutter/pages/producto/productos_page.dart';

class MenuPrimaryPage extends StatefulWidget {
  const MenuPrimaryPage({super.key});

  @override
  State<MenuPrimaryPage> createState() => _MenuPrimaryPageState();
}

class _MenuPrimaryPageState extends State<MenuPrimaryPage> {
  int _currentIndex = 0;

  final screens = [
    const PrincipalPage(),
    const ProductosPage(),
    const Center(child: Text('Search Screen', style: TextStyle(fontSize: 45))),
    const InicioPage(),
  ];
  final colors = [
    Colors.red,
    Colors.purple,
    Colors.amber,
    Colors.green,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        margin: const EdgeInsets.only(bottom: 10),
        child: GNav(
          color: colors[_currentIndex],
          tabBackgroundColor: colors[_currentIndex],
          selectedIndex: _currentIndex,
          tabBorderRadius: 10,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          onTabChange: (index) => {setState(() => _currentIndex = index)},
          tabs: const [
            GButton(
              icon: Ionicons.home,
              text: 'Principal',
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),
            GButton(
              icon: Ionicons.book_sharp,
              text: 'Notas',
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),
            GButton(
              icon: Ionicons.search_sharp,
              text: 'Search',
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),
            GButton(
              icon: Ionicons.person_sharp,
              text: 'Perfil',
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
