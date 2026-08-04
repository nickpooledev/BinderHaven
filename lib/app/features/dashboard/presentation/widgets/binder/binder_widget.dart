import 'package:flutter/material.dart';

import 'package:binder_haven/app/domain/binder/binder.dart';
import 'package:binder_haven/app/domain/enums/binder_color.dart';

import 'parts/binder_cover.dart';
import 'parts/binder_shadow.dart';
import 'parts/binder_spine.dart';

/// Visual representation of a Binder domain object.
class BinderWidget extends StatelessWidget {
  final Binder binder;

  const BinderWidget({
    super.key,
    required this.binder,
  });

  Color get _accentColor {
    switch (binder.color) {
      case BinderColor.classicBlack:
        return Colors.red;

      // Future binder colors
      default:
        return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 82,
      height: 240,
      child: Stack(
        children: [
          const BinderShadow(),

          Positioned(
            left: 8,
            top: 0,
            child: BinderSpine(
              accentColor: _accentColor,
              game: binder.game.displayName,
              setName: binder.name,
            ),
          ),

          const BinderCover(),
        ],
      ),
    );
  }
}