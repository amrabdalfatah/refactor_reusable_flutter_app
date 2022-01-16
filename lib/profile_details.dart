import 'package:flutter/material.dart';

import 'star_rating.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Wolfram Barkovich',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          const StarRating(
            value: 5,
          ),
          _buildRowText('Age', '4'),
          _buildRowText('Status', 'Good Boy'),
        ],
      ),
    );
  }

  Widget _buildRowText(String heading, String value) {
    return Row(
      children: [
        Text(
          '$heading: ',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        Text(value),
      ],
    );
  }
}
