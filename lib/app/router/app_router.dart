import 'package:flutter/material.dart';

import '../features/library/presentation/pages/library_page.dart';
import '../features/shell/presentation/shell_page.dart';
import '../features/splash/presentation/splash_page.dart';
import 'routes.dart';

/// Centralized application routing.
class AppRouter {
  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(
          builder: (_) => const SplashPage(),
          settings: settings,
        );

      case AppRoutes.shell:
        return MaterialPageRoute(
          builder: (_) => const ShellPage(),
          settings: settings,
        );

      // Temporary until we rename AppRoutes.dashboard
      case AppRoutes.dashboard:
        return MaterialPageRoute(
          builder: (_) => const LibraryPage(),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const SplashPage(),
          settings: settings,
        );
    }
  }
}