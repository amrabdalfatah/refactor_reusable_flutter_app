import 'package:flutter/material.dart';

import 'star.dart';

class StarRating extends StatelessWidget {
  final int value;

  const StarRating({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        value,
        (index) {
          return const Padding(
            padding: EdgeInsets.all(3.0),
            child: Star(),
          );
        },
      ),
    );
  }
}
