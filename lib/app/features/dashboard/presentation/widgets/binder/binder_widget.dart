import 'package:flutter/material.dart';

import 'parts/binder_cover.dart';
import 'parts/binder_shadow.dart';
import 'parts/binder_spine.dart';

/// A complete BinderHaven binder.
///
/// This widget assembles all of the physical parts of a binder.
class BinderWidget extends StatelessWidget {
  const BinderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 82,
      height: 240,
      child: Stack(
        children: [
          // Shadow (placeholder for now)
          BinderShadow(),

       

          // Main binder spine
          Positioned(
            left: 8,
            top: 0,
            child: BinderSpine(
              accentColor: Colors.red,
              game: 'Pokémon',
              setName: 'Scarlet & Violet',
            ),
          ),

          // Cover (placeholder for now)
          BinderCover(),
        ],
      ),
    );
  }
}