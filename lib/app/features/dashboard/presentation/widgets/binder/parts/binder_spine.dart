import 'package:flutter/material.dart';

/// The physical spine of a BinderHaven binder.
///
/// This intentionally contains NO text or logos yet.
/// We're building the object before decorating it.
class BinderSpine extends StatelessWidget {
  final Color accentColor;
  final String game;
  final String setName;

  const BinderSpine({
    super.key,
    required this.accentColor,
    required this.game,
    required this.setName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 74,
      height: 240,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF35383D),
            Color(0xFF24262A),
            Color(0xFF1A1C1F),
          ],
        ),
        border: Border.all(
          color: const Color(0xFF474B50),
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 18,
            offset: Offset(4, 10),
          ),
        ],
      ),

      child: Stack(
        children: [
          // Colored accent strip
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child: Container(
              width: 7,
              decoration: BoxDecoration(
                color: accentColor,
                borderRadius: const BorderRadius.horizontal(
                  left: Radius.circular(12),
                ),
              ),
            ),
          ),

          // Faux stitching
          Positioned(
            left: 14,
            top: 18,
            bottom: 18,
            child: Container(
              width: 1,
              color: Colors.white10,
            ),
          ),

          // Top highlight
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 2,
              color: Colors.white12,
            ),
          ),
        ],
      ),
    );
  }
}