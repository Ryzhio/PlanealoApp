import 'package:flutter/material.dart';
import 'package:planealo_app/models/search_model.dart';
import 'package:planealo_app/widgets/category_card.dart';

class DepartmentsPage12 extends StatelessWidget {
  final SearchModel searchModel;
  final VoidCallback press;
  const DepartmentsPage12({
    Key? key,
    required this.press,
    required this.searchModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: CategoryCard(
        prees: press,
        image: 'assets/city12.jpg',
        title: 'Tumbes',
      ),
    );
  }
}
