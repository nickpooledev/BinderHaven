import 'package:flutter/material.dart';

import 'navigation_rail_shell.dart';

class LibraryNavigationRail extends StatelessWidget {
  const LibraryNavigationRail({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: NavigationRailShell(),
    );
  }
}