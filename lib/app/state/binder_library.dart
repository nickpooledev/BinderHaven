import 'package:flutter/foundation.dart';

import '../domain/binder/binder.dart';

class BinderLibrary extends ChangeNotifier {
  BinderLibrary._();

  static final BinderLibrary instance = BinderLibrary._();

  final List<Binder> _binders = [];

  List<Binder> get binders => List.unmodifiable(_binders);

  bool get isEmpty => _binders.isEmpty;

  void add(Binder binder) {
    _binders.add(binder);
    notifyListeners();
  }

  void remove(Binder binder) {
    _binders.remove(binder);
    notifyListeners();
  }

  void clear() {
    _binders.clear();
    notifyListeners();
  }
}