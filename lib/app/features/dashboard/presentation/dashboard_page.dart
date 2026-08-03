import 'package:flutter/material.dart';

/// BinderHaven dashboard.
///
/// This widget only renders dashboard content.
/// It does NOT own a Scaffold.
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Dashboard',
        style: TextStyle(
          color: Colors.white,
          fontSize: 42,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
