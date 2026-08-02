import 'package:flutter/material.dart';

import 'theme/theme.dart';

/// Root BinderHaven application.
class BinderHavenApp extends StatelessWidget {
  const BinderHavenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BinderHaven',
      debugShowCheckedModeBanner: false,

      theme: AppTheme.dark,

      home: const PlaceholderHome(),
    );
  }
}

/// Temporary placeholder until Sprint 2.
class PlaceholderHome extends StatelessWidget {
  const PlaceholderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('BinderHaven'),
      ),
    );
  }
}