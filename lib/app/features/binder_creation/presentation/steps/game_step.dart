import 'package:flutter/material.dart';

import 'package:binder_haven/app/domain/enums/game.dart';

class GameStep extends StatelessWidget {
  final Game? selectedGame;
  final ValueChanged<Game> onSelected;

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
            'Choose a Game',
            style: Theme.of(context).textTheme.headlineMedium,
          ),

          const SizedBox(height: 8),

          Text(
            'Select the game you want this binder to represent.',
            style: Theme.of(context).textTheme.bodyLarge,
          ),

          const SizedBox(height: 32),

          _GameCard(
            game: Game.pokemon,
            selected: selectedGame == Game.pokemon,
            onTap: () => onSelected(Game.pokemon),
          ),

          const SizedBox(height: 16),

          _GameCard(
            game: Game.onePiece,
            selected: selectedGame == Game.onePiece,
          ),

          const SizedBox(height: 16),

          _GameCard(
            game: Game.magic,
            selected: selectedGame == Game.magic,
          ),
        ],
      ),
    );
  }
}

class _GameCard extends StatelessWidget {
  final Game game;
  final bool selected;
  final VoidCallback? onTap;

  const _GameCard({
    required this.game,
    required this.selected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: game.enabled ? 1.0 : 0.45,
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
          onTap: game.enabled ? onTap : null,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        game.displayName,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),

                      const SizedBox(height: 6),

                      Text(
                        game.enabled ? 'Available' : 'Coming Soon',
                      ),
                    ],
                  ),
                ),
                if (selected)
                  const Icon(Icons.check_circle),
              ],
            ),
          ),
        ),
      ),
    );
  }
}