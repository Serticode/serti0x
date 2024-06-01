import 'dart:math';
import 'package:flutter/material.dart';

class WelcomePageBrokenCirclePainter extends CustomPainter {
  const WelcomePageBrokenCirclePainter({
    required this.paintColour,
  });
  final Color paintColour;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = paintColour
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    const gapAngle = 0.1;
    const segmentAngle = (pi / 2) - gapAngle;

    for (int i = 0; i < 4; i++) {
      final startAngle = (i * pi / 2) + (gapAngle / 2);
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        segmentAngle,
        false,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
