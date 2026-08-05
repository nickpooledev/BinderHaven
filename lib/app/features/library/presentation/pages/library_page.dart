import 'package:flutter/material.dart';

import '../widgets/library_background.dart';
import '../widgets/navigation_rail.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          LibraryBackground(),

          LibraryNavigationRail(),
        ],
      ),
    );
  }
}