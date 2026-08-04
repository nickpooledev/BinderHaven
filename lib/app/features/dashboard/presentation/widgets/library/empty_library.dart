import 'package:flutter/material.dart';

import 'package:binder_haven/app/features/binder_creation/presentation/binder_creation_page.dart';

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
          'Create your first binder and begin building your collection.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white54,
            fontSize: 16,
          ),
        ),

        const SizedBox(height: 28),

        FilledButton.icon(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const BinderCreationPage(),
              ),
            );
          },
          icon: const Icon(Icons.auto_stories_outlined),
          label: const Text('Create Binder'),
        ),
      ],
    );
  }
}