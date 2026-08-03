import 'package:flutter/material.dart';

/// Displayed when no binders exist.
class EmptyLibrary extends StatelessWidget {
  const EmptyLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 18),

        const Icon(
          Icons.library_books_outlined,
          color: Colors.white24,
          size: 72,
        ),

        const SizedBox(height: 18),

        const Text(
          'Your library is empty.',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),

        const SizedBox(height: 10),

        const Text(
          'Import your first collection to begin building BinderHaven.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white54,
            fontSize: 16,
          ),
        ),

        const SizedBox(height: 28),

        FilledButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.upload_file),
          label: const Text('Import Collection'),
        ),
      ],
    );
  }
}