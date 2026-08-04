import '../enums/binder_color.dart';
import '../enums/binder_style.dart';
import '../enums/game.dart';
import '../enums/pocket_layout.dart';

import 'binder.dart';

class BinderFactory {
  const BinderFactory._();

  static Binder create({
    required String id,
    required String name,
    required Game game,
    required String setId,
    required PocketLayout layout,
    required BinderStyle style,
  }) {
    return Binder(
      id: id,
      name: name,
      game: game,
      setId: setId,
      layout: layout,
      style: style,
      color: BinderColor.classicBlack,
      created: DateTime.now(),
      favorite: false,
      pages: const [],
    );
  }
}