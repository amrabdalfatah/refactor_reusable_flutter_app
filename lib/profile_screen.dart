import 'package:flutter/material.dart';

import 'profile_actions.dart';
import 'profile_details.dart';
import 'profile_image.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/beach.jpg'),
          Transform.translate(
            offset: const Offset(0, 100),
            child: Column(
              children: const [
                ProfileImage(),
                ProfileDetails(),
                ProfileActions(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
