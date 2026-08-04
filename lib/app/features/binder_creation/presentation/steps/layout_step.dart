import 'package:flutter/material.dart';

import 'package:binder_haven/app/domain/enums/pocket_layout.dart';

class LayoutStep extends StatelessWidget {
  final PocketLayout? selectedLayout;
  final ValueChanged<PocketLayout> onSelected;

  const LayoutStep({
    super.key,
    required this.selectedLayout,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Choose Pocket Layout',
            style: Theme.of(context).textTheme.headlineMedium,
          ),

          const SizedBox(height: 8),

          Text(
            'Match the layout of your physical binder.',
            style: Theme.of(context).textTheme.bodyLarge,
          ),

          const SizedBox(height: 24),

          Expanded(
            child: ListView(
              children: PocketLayout.values.map((layout) {
                String subtitle;

                switch (layout) {
                  case PocketLayout.fourPocket:
                    subtitle = 'Great for premium collections';
                    break;

                  case PocketLayout.ninePocket:
                    subtitle = 'The classic collector layout';
                    break;

                  case PocketLayout.twelvePocket:
                    subtitle = 'Higher capacity pages';
                    break;

                  case PocketLayout.sixteenPocket:
                    subtitle = 'Maximum capacity';
                    break;
                }

                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: _LayoutTile(
                    layout: layout,
                    subtitle: subtitle,
                    selected: selectedLayout == layout,
                    onTap: () => onSelected(layout),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class _LayoutTile extends StatelessWidget {
  final PocketLayout layout;
  final String subtitle;
  final bool selected;
  final VoidCallback onTap;

  const _LayoutTile({
    required this.layout,
    required this.subtitle,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.04),
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: selected
                ? Theme.of(context).colorScheme.primary
                : Colors.transparent,
            width: 2,
          ),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 120,
              height: 120,
              child: Column(
                children: List.generate(layout.rows, (_) {
                  return Expanded(
                    child: Row(
                      children: List.generate(layout.columns, (_) {
                        return Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(3),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white54),
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  );
                }),
              ),
            ),

            const SizedBox(width: 24),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    layout.displayName,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),

                  const SizedBox(height: 6),

                  Text(subtitle),
                ],
              ),
            ),

            if (selected)
              Icon(
                Icons.check_circle,
                color: Theme.of(context).colorScheme.primary,
              ),
          ],
        ),
      ),
    );
  }
}