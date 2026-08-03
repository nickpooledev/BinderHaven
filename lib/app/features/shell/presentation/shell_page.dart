import 'package:flutter/material.dart';

import '../../dashboard/presentation/dashboard_page.dart';
import 'app_bar/shell_app_bar.dart';
import 'navigation/shell_navigation.dart';

/// Permanent BinderHaven application shell.
class ShellPage extends StatelessWidget {
  const ShellPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF111315),
      body: Column(
        children: [
          ShellAppBar(),

          Divider(height: 1, thickness: 1, color: Color(0xFF26282D)),

          Expanded(
            child: Row(
              children: [
                ShellNavigation(),

                VerticalDivider(
                  width: 1,
                  thickness: 1,
                  color: Color(0xFF26282D),
                ),

                Expanded(child: DashboardPage()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
