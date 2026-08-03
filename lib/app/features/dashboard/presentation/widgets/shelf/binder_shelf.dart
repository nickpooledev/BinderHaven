import 'package:flutter/material.dart';

/// A floating shelf used to display BinderHaven binders.
///
/// Binder widgets will be placed on top of this shelf.
class BinderShelf extends StatelessWidget {
  const BinderShelf({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 12,
          decoration: BoxDecoration(
            color: const Color(0xFF5A4632),
            borderRadius: BorderRadius.circular(6),
            boxShadow: const [
              BoxShadow(
                color: Colors.black45,
                blurRadius: 14,
                offset: Offset(0, 8),
              ),
            ],
          ),
        ),

        const SizedBox(height: 6),

        Container(
          height: 2,
          color: const Color(0xFF3C3023),
        ),
      ],
    );
  }
}