import 'package:flutter/material.dart';

import 'game.dart';

extension GameColors on Game {
  Color get accentColor {
    switch (this) {
      case Game.pokemon:
        return const Color(0xFFFFC107); // Pokémon Yellow

      case Game.onePiece:
        return const Color(0xFFD32F2F); // One Piece Red

      case Game.magic:
        return const Color(0xFF1976D2); // Magic Blue
    }
  }
}