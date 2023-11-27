import 'package:flutter/material.dart' show Color, ThemeData;

class AppTheme {


  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: const Color(0xFF2862F5)
  );


}