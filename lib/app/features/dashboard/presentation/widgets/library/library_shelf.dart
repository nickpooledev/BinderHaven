import 'package:flutter/material.dart';

import 'package:binder_haven/app/state/binder_library.dart';

import 'empty_library.dart';
import '../binder/binder_widget.dart';
import '../shelf/binder_shelf.dart';

/// A single shelf within the BinderHaven library.
class LibraryShelf extends StatelessWidget {
  final String title;

  const LibraryShelf({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: BinderLibrary.instance,
      builder: (context, _) {
        final binders = BinderLibrary.instance.binders;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 18),

            const BinderShelf(),

            const SizedBox(height: 2),

            if (binders.isEmpty)
              const EmptyLibrary()
            else
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    binders.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: BinderWidget(
                        binder: binders[index],
                      ),
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}