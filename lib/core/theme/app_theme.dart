// Importación selectiva de las clases Color y ThemeData desde la biblioteca flutter/material.
import 'package:dere_vip_app/core/theme/color_schemes.dart';
import 'package:flutter/material.dart' show FontWeight, ThemeData, TextTheme;
import 'package:google_fonts/google_fonts.dart';

// Definición de la clase AppTheme.
class AppTheme {
  // Método que devuelve un objeto ThemeData con ciertas configuraciones.
  //To do
  //Convertir la configuración de estilos en json en esta clase ThemeData

  ThemeData getTheme() => ThemeData(
        // Habilita el uso de Material3, una versión más reciente de Material Design.
        useMaterial3: true,
        // Establece el esquema de colores de la aplicación.
        colorScheme: lightColorScheme,

        ///* Texts
        textTheme: TextTheme(
          bodyLarge: GoogleFonts.montserratAlternates().copyWith(
            fontSize: 14,
          ),
          bodyMedium: GoogleFonts.montserratAlternates().copyWith(
            fontSize: 12,
          ),
          bodySmall: GoogleFonts.montserratAlternates().copyWith(
            fontSize: 10,
          ),
          titleLarge: GoogleFonts.montserratAlternates().copyWith(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          titleMedium: GoogleFonts.montserratAlternates().copyWith(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          titleSmall: GoogleFonts.montserratAlternates().copyWith(
            fontSize: 12,
          ),
        ),
      );
}
