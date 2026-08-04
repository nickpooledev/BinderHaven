import 'package:flutter/material.dart';

class GameStep extends StatelessWidget {
  final String? selectedGame;
  final ValueChanged<String> onSelected;

  const GameStep({
    super.key,
    required this.selectedGame,
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
            "Choose a Game",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 8),
          Text(
            "Select the game you want this binder to represent.",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 32),

          _GameCard(
            title: "Pokémon",
            subtitle: "Available",
            selected: selectedGame == "pokemon",
            enabled: true,
            onTap: () => onSelected("pokemon"),
          ),

          const SizedBox(height: 16),

          const _GameCard(
            title: "One Piece",
            subtitle: "Coming Soon",
            enabled: false,
          ),

          const SizedBox(height: 16),

          const _GameCard(
            title: "Magic: The Gathering",
            subtitle: "Coming Soon",
            enabled: false,
          ),
        ],
      ),
    );
  }
}

class _GameCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool enabled;
  final bool selected;
  final VoidCallback? onTap;

  const _GameCard({
    required this.title,
    required this.subtitle,
    this.enabled = true,
    this.selected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: enabled ? 1.0 : .45,
      child: Card(
        elevation: selected ? 4 : 1,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: selected
                ? Theme.of(context).colorScheme.primary
                : Colors.transparent,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: enabled ? onTap : null,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              children: [
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
                      Text(subtitle),
                    ],
                  ),
                ),
                if (selected)
                  const Icon(Icons.check_circle)
              ],
            ),
          ),
        ),
      ),
    );
  }
}