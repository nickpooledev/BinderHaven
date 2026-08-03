import 'package:flutter/material.dart';

/// BinderHaven custom application header.
class ShellAppBar extends StatelessWidget {
  const ShellAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      alignment: Alignment.centerLeft,
      child: const Text(
        'BinderHaven',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
