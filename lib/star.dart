import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  const Star({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      width: 25,
      child: CustomPaint(
        painter: _StarPainter(),
      ),
    );
  }
}

class _StarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();
    path.moveTo(size.width * 0.5, 0);
    path.lineTo(size.width * 0.382, size.height * 0.382);
    path.lineTo(0, size.height * 0.382);
    path.lineTo(size.width * 0.309, size.height * 0.618);
    path.lineTo(size.width * 0.191, size.height);
    path.lineTo(size.width * 0.5, size.height * 0.7639);
    path.lineTo(size.width * 0.809, size.height);
    path.lineTo(size.width * 0.691, size.height * 0.618);
    path.lineTo(size.width, size.height * 0.382);
    path.lineTo(size.width * 0.618, size.height * 0.382);
    path.close();

    final paint = Paint()..color = Colors.deepOrange;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
