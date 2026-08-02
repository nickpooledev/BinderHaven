import 'package:flutter/material.dart';

import 'colors.dart';
import 'typography.dart';

/// Centralized application theme definitions.
class AppTheme {
  const AppTheme._();

  static ThemeData get dark {
    return ThemeData(
      useMaterial3: true,
      fontFamily: AppTypography.fontFamily,
      brightness: Brightness.dark,

      scaffoldBackgroundColor: AppColors.background,

      colorScheme: const ColorScheme.dark(
        primary: AppColors.gold,
        secondary: AppColors.goldMuted,
        surface: AppColors.surface,
        error: AppColors.error,
      ),

      dividerColor: AppColors.divider,

      appBarTheme: const AppBarTheme(
        elevation: 0,
        centerTitle: false,
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.textPrimary,
      ),

      cardColor: AppColors.surface,

      splashFactory: InkRipple.splashFactory,
    );
  }
}
