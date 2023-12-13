// Importación selectiva de las clases Color y ThemeData desde la biblioteca flutter/material.
import 'package:flutter/material.dart' show Color, ThemeData;

// Definición de la clase AppTheme.
class AppTheme {

  // Método que devuelve un objeto ThemeData con ciertas configuraciones. 
  //To do
  //Convertir la configuración de estilos en json en esta clase ThemeData
  
  ThemeData getTheme() => ThemeData(
    useMaterial3: true, // Habilita el uso de Material3, una versión más reciente de Material Design.
    colorSchemeSeed: const Color(0xFF2862F5), // Establece el color de semilla para el esquema de colores.
  );
}
