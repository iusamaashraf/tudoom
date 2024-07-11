import 'package:flutter/material.dart';

class MyProgressPainter extends CustomPainter {
  final double percent;
  final Color backgroundColor;
  final Color progressColor;
  final double borderRadius;

  const MyProgressPainter({
    required this.percent,
    required this.backgroundColor,
    required this.progressColor,
    required this.borderRadius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;

    final progressPaint = Paint()
      ..color = progressColor
      ..style = PaintingStyle.fill;

    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final progressWidth = size.width * percent;

    // Draw background
    canvas.drawRRect(
      RRect.fromRectXY(rect, borderRadius, borderRadius),
      paint,
    );

    // Draw progress bar
    canvas.drawRRect(
      RRect.fromRectXY(
        Rect.fromLTWH(0, 0, progressWidth, size.height),
        borderRadius,
        borderRadius,
      ),
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
