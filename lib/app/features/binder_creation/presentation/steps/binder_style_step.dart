import 'package:flutter/material.dart';

enum BinderStyle {
  standard,
  masterSet,
  complete,
}

class BinderStyleStep extends StatelessWidget {
  final BinderStyle? selectedStyle;
  final ValueChanged<BinderStyle> onSelected;

  const BinderStyleStep({
    super.key,
    required this.selectedStyle,
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
            'Choose Binder Style',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 8),
          Text(
            'How would you like to build this binder?',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 24),

          Expanded(
            child: ListView(
              children: [
                _StyleTile(
                  icon: Icons.menu_book_rounded,
                  title: 'Standard Set',
                  description:
                      'One copy of every numbered card in the set.',
                  selected:
                      selectedStyle == BinderStyle.standard,
                  onTap: () =>
                      onSelected(BinderStyle.standard),
                ),

                const SizedBox(height: 16),

                _StyleTile(
                  icon: Icons.auto_awesome,
                  title: 'Master Set',
                  description:
                      'Every numbered card plus reverse holos and required variants.',
                  selected:
                      selectedStyle == BinderStyle.masterSet,
                  onTap: () =>
                      onSelected(BinderStyle.masterSet),
                ),

                const SizedBox(height: 16),

                _StyleTile(
                  icon: Icons.workspace_premium,
                  title: 'Complete Collection',
                  description:
                      'Every available printing and variation.',
                  selected:
                      selectedStyle == BinderStyle.complete,
                  onTap: () =>
                      onSelected(BinderStyle.complete),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _StyleTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final bool selected;
  final VoidCallback onTap;

  const _StyleTile({
    required this.icon,
    required this.title,
    required this.description,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 34,
              color: selected
                  ? Theme.of(context).colorScheme.primary
                  : Colors.white70,
            ),

            const SizedBox(width: 20),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style:
                        Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 6),
                  Text(description),
                ],
              ),
            ),

            if (selected)
              Icon(
                Icons.check_circle,
                color:
                    Theme.of(context).colorScheme.primary,
              ),
          ],
        ),
      ),
    );
  }
}