import 'package:flutter/material.dart';

class LibraryBackground extends StatelessWidget {
  const LibraryBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [

        // Wallpaper
        Image.asset(
          'assets/images/wallpapers/wallpaper1.png',
          fit: BoxFit.cover,
        ),

        // Main dark overlay
       Container(
  color: Colors.black.withValues(alpha: 0.50),
),

        // Top gradient
        const DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.center,
              colors: [
                Color(0x99000000),
                Colors.transparent,
              ],
            ),
          ),
        ),

        // Bottom gradient
        const DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              colors: [
                Color(0xCC000000),
                Colors.transparent,
              ],
            ),
          ),
        ),
      ],
    );
  }
}