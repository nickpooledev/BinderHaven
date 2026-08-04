import '../enums/binder_color.dart';
import '../enums/binder_style.dart';
import '../enums/game.dart';
import '../enums/pocket_layout.dart';

import 'binder_page.dart';

class Binder {
  const Binder({
    required this.id,
    required this.name,
    required this.game,
    required this.setId,
    required this.layout,
    required this.style,
    required this.color,
    required this.created,
    required this.favorite,
    required this.pages,
  });

  /// Unique identifier
  final String id;

  /// Display name shown on the shelf
  final String name;

  /// Trading card game
  final Game game;

  /// Database identifier for the set
  final String setId;

  /// Pocket configuration
  final PocketLayout layout;

  /// Standard / Master / Variant
  final BinderStyle style;

  /// Binder appearance
  final BinderColor color;

  /// Creation date
  final DateTime created;

  /// Pin this binder to the shelf
  final bool favorite;

  /// Generated pages
  final List<BinderPage> pages;
}