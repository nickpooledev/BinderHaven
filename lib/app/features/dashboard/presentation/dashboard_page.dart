import 'package:flutter/material.dart';

import 'widgets/library/library_shelf.dart';

/// BinderHaven Library.
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(32),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Library',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 40),

            LibraryShelf(
              title: 'Collections',
            ),
          ],
        ),
      ),
    );
  }
}