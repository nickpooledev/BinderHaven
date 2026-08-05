import 'package:flutter/material.dart';

import 'navigation_rail_painter.dart';

class NavigationRailShell extends StatelessWidget {
  const NavigationRailShell({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.66;

    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: SizedBox(
        width: 70,
        height: height,
        child: CustomPaint(
          painter: NavigationRailPainter(),
        ),
      ),
    );
  }
}