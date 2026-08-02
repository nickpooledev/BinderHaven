import 'dart:async';

import 'package:flutter/material.dart';

import '../../../router/routes.dart';
import 'widgets/animated_logo.dart';

/// Initial splash screen displayed while BinderHaven starts.
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(milliseconds: 2400), () {
      if (!mounted) return;

      Navigator.of(context).pushReplacementNamed(AppRoutes.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF111315),
      body: Center(child: AnimatedLogo()),
    );
  }
}
