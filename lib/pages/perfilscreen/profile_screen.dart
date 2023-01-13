import 'package:flutter/material.dart';
import 'package:planealo_app/models/users.dart';

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
      backgroundColor: Colors.white,
      // extendBody: true,
      // extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            ProfileCard(user: userd.first),
          ],
        ),
      ),
    );
  }
}
