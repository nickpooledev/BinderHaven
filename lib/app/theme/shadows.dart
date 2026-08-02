import 'package:flutter/material.dart';

/// Shared application shadow definitions.
class AppShadows {
  const AppShadows._();

  static const List<BoxShadow> subtle = [
    BoxShadow(
      blurRadius: 8,
      offset: Offset(0, 2),
      color: Color(0x22000000),
    ),
  ];

  static const List<BoxShadow> medium = [
    BoxShadow(
      blurRadius: 18,
      offset: Offset(0, 6),
      color: Color(0x33000000),
    ),
  ];
}