import 'package:flutter/material.dart';

/// Global design constants for BinderHaven binders.
///
/// Every binder in the application should derive its
/// appearance from this file rather than hardcoded values.
class BinderTheme {
  const BinderTheme._();

  // Overall binder dimensions
  static const double width = 108;
  static const double height = 310;

  // Spine
  static const double spineWidth = 74;
  static const double spineHeight = 240;

  static const double accentWidth = 6;

  // Shape
  static const double cornerRadius = 12;

  // Layout
  static const EdgeInsets spinePadding =
      EdgeInsets.fromLTRB(24, 18, 10, 18);

  // Shadows
  static const List<BoxShadow> shadow = [
    BoxShadow(
      color: Colors.black54,
      blurRadius: 16,
      offset: Offset(4, 10),
    ),
  ];
}