import 'package:flutter/material.dart';
import 'package:planealo_app/models/users.dart';
import 'package:planealo_app/widgets/custom_card.dart';
import 'package:planealo_app/widgets/profile_card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileCard(user: userd.first),
            const SizedBox(height: 10),
            CustomCard(user: userd.first),
            CustomCard(user: userd.first),
            CustomCard(user: userd.first),
            const SizedBox(height: 50),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
