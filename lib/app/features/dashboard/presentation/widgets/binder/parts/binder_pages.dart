import 'package:flutter/material.dart';

/// Visible page edges of a premium binder.
class BinderPages extends StatelessWidget {
  const BinderPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 222,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFF8F8F6),
            Color(0xFFECEBE8),
            Color(0xFFDAD9D5),
          ],
        ),
      ),
    );
  }
}