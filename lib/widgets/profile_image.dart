import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: ClipOval(
        child: Image.asset(
          'assets/dog.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
