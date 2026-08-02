import 'package:flutter/material.dart';

import 'router/app_router.dart';
import 'router/routes.dart';
import 'theme/theme.dart';

/// Root BinderHaven application.
class BinderHavenApp extends StatelessWidget {
  const BinderHavenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BinderHaven',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark,
      initialRoute: AppRoutes.home,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
