import 'package:flutter/material.dart';

import 'empty_library.dart';
import '../binder/binder_widget.dart';
import '../shelf/binder_shelf.dart';

/// A single shelf within the BinderHaven library.
class LibraryShelf extends StatelessWidget {
  final String title;
  final bool isEmpty;

  const LibraryShelf({
    super.key,
    required this.title,
    this.isEmpty = false,
  });

  @override
  Widget build(BuildContext context) {
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

        const SizedBox(height: 12),

        if (isEmpty)
          const EmptyLibrary()
        else
          const Row(
            children: [
              BinderWidget(),
              SizedBox(width: 8),
              BinderWidget(),
              SizedBox(width: 8),
              BinderWidget(),
              SizedBox(width: 8),
              BinderWidget(),
              SizedBox(width: 8),
              BinderWidget(),
            ],
          ),
      ],
    );
  }
}