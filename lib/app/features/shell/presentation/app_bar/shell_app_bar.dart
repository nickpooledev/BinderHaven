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
      child: Row(
        children: [
          Image.asset(
            'assets/branding/logos/binder_icon.png',
            width: 40,
            height: 40,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                width: 34,
                height: 34,
                color: Colors.red,
                child: const Center(
                  child: Text(
                    '!',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              );
            },
          ),

          const SizedBox(width: 14),

          const Text(
            'BinderHaven',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.3,
            ),
          ),
        ],
      ),
    );
  }
}