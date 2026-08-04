import 'package:flutter/material.dart';

import 'package:binder_haven/app/domain/enums/binder_style.dart';

class ReviewStep extends StatelessWidget {
  final String game;
  final String set;
  final int layout;
  final BinderStyle style;

  const ReviewStep({
    super.key,
    required this.game,
    required this.set,
    required this.layout,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const SizedBox(height: 12),

          Container(
            width: 140,
            height: 190,
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: Colors.white24,
              ),
            ),
            child: const Center(
              child: Icon(
                Icons.auto_stories,
                size: 70,
                color: Colors.white70,
              ),
            ),
          ),

          const SizedBox(height: 28),

          Text(
            set,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),

          const SizedBox(height: 6),

          Text(
            game,
            style: Theme.of(context).textTheme.titleMedium,
          ),

          const SizedBox(height: 32),

          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  _ReviewRow(
                    label: 'Pocket Layout',
                    value: '$layout-Pocket',
                  ),

                  const Divider(),

                  _ReviewRow(
                    label: 'Binder Style',
                    value: style.displayName,
                  ),

                  const Divider(),

                  const _ReviewRow(
                    label: 'Status',
                    value: 'Ready to Create',
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 24),

          Text(
            'Your new binder will be added to your library and is ready for you to begin collecting.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}

class _ReviewRow extends StatelessWidget {
  final String label;
  final String value;

  const _ReviewRow({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Expanded(
            child: Text(label),
          ),
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}