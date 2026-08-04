import '../../domain/binder/binder.dart';
import '../../domain/binder/binder_factory.dart';
import '../../domain/enums/binder_style.dart';
import '../../domain/enums/game.dart';
import '../../domain/enums/pocket_layout.dart';
import '../../state/binder_library.dart';

class CreateBinderUseCase {
  const CreateBinderUseCase._();

  static Binder execute({
    required Game game,
    required String setId,
    required PocketLayout layout,
    required BinderStyle style,
  }) {
    final binder = BinderFactory.create(
      id: DateTime.now().microsecondsSinceEpoch.toString(),
      name: setId,
      game: game,
      setId: setId,
      layout: layout,
      style: style,
    );

    BinderLibrary.instance.add(binder);

    return binder;
  }
}