import 'package:flutter/material.dart';

class NavigationRailPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;

    final shell = RRect.fromRectAndRadius(
      rect,
      const Radius.circular(35), // Half of 70px width
    );

    // Soft shadow
    canvas.drawShadow(
      Path()..addRRect(shell),
      Colors.black,
      18,
      false,
    );

    // Gunmetal body
    final paint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xFF2B2D30),
          Color(0xFF36393D),
          Color(0xFF414449),
          Color(0xFF36393D),
          Color(0xFF2B2D30),
        ],
        stops: [
          0.0,
          0.28,
          0.50,
          0.72,
          1.0,
        ],
      ).createShader(rect);

    canvas.drawRRect(shell, paint);

    // Left edge shadow
    canvas.drawLine(
      const Offset(1, 35),
      Offset(1, size.height - 35),
      Paint()
        ..color = Colors.black.withValues(alpha: .18)
        ..strokeWidth = 1,
    );

    // Right edge highlight
    canvas.drawLine(
      Offset(size.width - 1, 35),
      Offset(size.width - 1, size.height - 35),
      Paint()
        ..color = Colors.white.withValues(alpha: .08)
        ..strokeWidth = 1,
    );

    // Very subtle center reflection
    canvas.drawRect(
      Rect.fromLTWH(
        size.width * 0.42,
        30,
        size.width * 0.16,
        size.height - 60,
      ),
      Paint()
        ..color = Colors.white.withValues(alpha: .025),
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}