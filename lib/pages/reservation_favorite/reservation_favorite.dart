import 'package:flutter/material.dart';
import 'package:planealo_app/models/users.dart';
import 'package:planealo_app/widgets/custom_card.dart';

class ReservationFavorite extends StatefulWidget {
  const ReservationFavorite({Key? key}) : super(key: key);

  @override
  State<ReservationFavorite> createState() => _ReservationFavoriteState();
}

class _ReservationFavoriteState extends State<ReservationFavorite> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 770,
        child: ListView.builder(
            itemCount: userd.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return CustomCard(
                user: userd[index],
              );
            }),
      ),
    );
  }
}
