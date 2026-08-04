import 'package:flutter/material.dart';

import 'package:binder_haven/app/domain/enums/binder_style.dart';

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
              children: BinderStyle.values.map((style) {
                IconData icon;

                switch (style) {
                  case BinderStyle.standard:
                    icon = Icons.menu_book_rounded;
                    break;

                  case BinderStyle.master:
                    icon = Icons.auto_awesome;
                    break;

                  case BinderStyle.variants:
                    icon = Icons.workspace_premium;
                    break;
                }

                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: _StyleTile(
                    icon: icon,
                    style: style,
                    selected: selectedStyle == style,
                    onTap: () => onSelected(style),
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

class _StyleTile extends StatelessWidget {
  final IconData icon;
  final BinderStyle style;
  final bool selected;
  final VoidCallback onTap;

  const _StyleTile({
    required this.icon,
    required this.style,
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
                    style.displayName,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),

                  const SizedBox(height: 6),

                  Text(style.description),
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