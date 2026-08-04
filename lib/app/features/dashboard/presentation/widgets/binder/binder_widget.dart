import 'package:flutter/material.dart';

import 'package:binder_haven/app/domain/binder/binder.dart';
import 'package:binder_haven/app/domain/enums/game_colors.dart';
import 'package:binder_haven/app/theme/binder_theme.dart';

import 'parts/binder_cover.dart';
import 'parts/binder_shadow.dart';
import 'parts/binder_spine.dart';

/// Visual representation of a Binder domain object.
///
/// This widget adapts the Binder domain model into the
/// presentation widgets that render a physical binder.
class BinderWidget extends StatelessWidget {
  final Binder binder;

  const BinderWidget({
    super.key,
    required this.binder,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: BinderTheme.width,
      height: BinderTheme.height,
      child: Stack(
        children: [
          const BinderShadow(),

          Positioned(
            left: 10,
            top: 0,
            child: SizedBox(
              width: BinderTheme.spineWidth,
              height: BinderTheme.spineHeight,
              child: BinderSpine(
                accentColor: binder.game.accentColor,
                game: binder.game.displayName,
                setName: binder.name,
              ),
            ),
          ),

          const BinderCover(),
        ],
      ),
    );
  }
}