// Importación selectiva de las clases Color y ThemeData desde la biblioteca flutter/material.
import 'package:dere_vip_app/core/theme/color_schemes.dart';
import 'package:flutter/material.dart' show ThemeData;

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
      );
}
