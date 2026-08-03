import 'package:flutter/material.dart';

import '../features/dashboard/presentation/dashboard_page.dart';
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

      case AppRoutes.dashboard:
        return MaterialPageRoute(
          builder: (_) => const DashboardPage(),
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
