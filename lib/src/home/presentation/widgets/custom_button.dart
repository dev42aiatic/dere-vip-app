// Widget para el botón personalizado dentro del diálogo
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double borderRadius; // Radio del borde para el botón
  final String buttonLabel; // Etiqueta del botón
  final double horizontal;
  final double vertical;

  // Constructor con parámetros requeridos
  const CustomButton({
    super.key,
    this.borderRadius = 10,
    required this.buttonLabel,
    this.horizontal = 25,
    this.vertical = 5,
  });

  @override
  Widget build(BuildContext context) {
    // Obtiene el esquema de color del tema
    final colors = Theme.of(context).colorScheme;
    // Obtiene la configuración de textos del tema
    final textStyle = Theme.of(context).textTheme;

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
            padding: EdgeInsets.symmetric(
              horizontal: horizontal,
              vertical: vertical,
            ),
            // Texto del botón
            child: Text(
              buttonLabel,
              style: textStyle.bodyMedium!.copyWith(
                color: colors.onPrimary,
                fontWeight: FontWeight.bold, // Color del texto
              ),
            ),
          ),
        ),
      ),
    );
  }
}
