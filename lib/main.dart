import 'package:flutter/material.dart';

import 'app/theme/theme.dart';

void main() {
  runApp(const BinderHavenApp());
}

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