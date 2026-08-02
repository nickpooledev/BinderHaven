import 'package:flutter/material.dart';

import '../app.dart';
import 'routes.dart';

/// Centralized application routing.
class AppRouter {
  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(
          builder: (_) => const PlaceholderHome(),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const PlaceholderHome(),
          settings: settings,
        );
    }
  }
}
