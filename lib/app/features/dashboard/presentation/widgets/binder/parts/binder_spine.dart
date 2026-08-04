import 'package:flutter/material.dart';

import 'package:binder_haven/app/theme/binder_theme.dart';

/// Visual spine of a BinderHaven binder.
///
/// Presentation-only widget. It renders the physical
/// appearance of a binder spine and has no knowledge of
/// the Binder domain model.
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
      width: BinderTheme.spineWidth,
      height: BinderTheme.spineHeight,
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(BinderTheme.cornerRadius),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF3D4046),
            Color(0xFF2B2E33),
            Color(0xFF1B1D20),
          ],
        ),
        border: Border.all(
          color: const Color(0xFF555A60),
        ),
        boxShadow: BinderTheme.shadow,
      ),
      child: Stack(
        children: [
          // Accent strip
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child: Container(
              width: BinderTheme.accentWidth,
              decoration: BoxDecoration(
                color: accentColor,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(
                    BinderTheme.cornerRadius,
                  ),
                ),
              ),
            ),
          ),

          // Stitching
          Positioned(
            left: 14,
            top: 16,
            bottom: 16,
            child: Container(
              width: 1,
              color: Colors.white10,
            ),
          ),

          Padding(
            padding: BinderTheme.spinePadding,
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Text(
                  game.toUpperCase(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.2,
                  ),
                ),

                const SizedBox(height: 10),

                Expanded(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      setName,
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        height: 1.2,
                      ),
                    ),
                  ),
                ),

                Container(
                  height: 1,
                  color: Colors.white12,
                ),

                const SizedBox(height: 8),

                const Text(
                  'COLLECTION',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 9,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.1,
                  ),
                ),
              ],
            ),
          ),

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