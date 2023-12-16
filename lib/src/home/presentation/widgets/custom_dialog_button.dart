// Widget para el botón personalizado dentro del diálogo
import 'package:flutter/material.dart';

class CustomDialogButton extends StatelessWidget {
  final double borderRadius; // Radio del borde para el botón
  final ColorScheme colors; // Esquema de color del tema
  final String buttonLabel; // Etiqueta del botón
  final TextTheme textStyle; // Estilo del texto del botón

  // Constructor con parámetros requeridos
  const CustomDialogButton({
    super.key,
    required this.borderRadius,
    required this.colors,
    required this.buttonLabel,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    // ClipRRect para redondear los bordes del botón
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      // Material para aplicar el color y el efecto de onda al tocar
      child: Material(
        color: colors.primary, // Color de fondo del botón
        // InkWell para manejar el toque en el botón
        child: InkWell(
          onTap: () {}, // Acción al tocar el botón (a definir)
          // Padding para el contenido del botón
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 5,
            ),
            // Texto del botón
            child: Text(
              buttonLabel,
              style: textStyle.bodyMedium!.copyWith(
                color: colors.onPrimary, // Color del texto
              ),
            ),
          ),
        ),
      ),
    );
  }
}
