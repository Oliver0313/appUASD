import 'package:flutter/material.dart';
import 'colores.dart';

ThemeData temaUASD() {
  return ThemeData(
    primaryColor: Colores.azulUASD,
    scaffoldBackgroundColor: Colores.blanco,
    textTheme: const TextTheme(
      displayLarge: TextStyle(color: Colores.azulUASD, fontSize: 24, fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(color: Colores.gris, fontSize: 16),
    ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colores.blanco),
  );
}
