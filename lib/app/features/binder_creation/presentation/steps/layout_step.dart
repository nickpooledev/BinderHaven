import 'package:flutter/material.dart';

class LayoutStep extends StatelessWidget {
  final int? selectedLayout;
  final ValueChanged<int> onSelected;

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
              children: [
                _LayoutTile(
                  pockets: 4,
                  rows: 2,
                  columns: 2,
                  subtitle: 'Great for premium collections',
                  selected: selectedLayout == 4,
                  onTap: () => onSelected(4),
                ),
                const SizedBox(height: 16),
                _LayoutTile(
                  pockets: 9,
                  rows: 3,
                  columns: 3,
                  subtitle: 'The classic collector layout',
                  selected: selectedLayout == 9,
                  onTap: () => onSelected(9),
                ),
                const SizedBox(height: 16),
                _LayoutTile(
                  pockets: 12,
                  rows: 3,
                  columns: 4,
                  subtitle: 'Higher capacity pages',
                  selected: selectedLayout == 12,
                  onTap: () => onSelected(12),
                ),
                const SizedBox(height: 16),
                _LayoutTile(
                  pockets: 16,
                  rows: 4,
                  columns: 4,
                  subtitle: 'Maximum capacity',
                  selected: selectedLayout == 16,
                  onTap: () => onSelected(16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _LayoutTile extends StatelessWidget {
  final int pockets;
  final int rows;
  final int columns;
  final String subtitle;
  final bool selected;
  final VoidCallback onTap;

  const _LayoutTile({
    required this.pockets,
    required this.rows,
    required this.columns,
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
          color: Colors.white.withValues(alpha: .04),
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
                children: List.generate(rows, (_) {
                  return Expanded(
                    child: Row(
                      children: List.generate(columns, (_) {
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
                    '$pockets Pocket',
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