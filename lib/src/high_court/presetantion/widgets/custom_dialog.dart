import 'package:flutter/material.dart';

// Widget StatelessWidget para crear un diálogo personalizado
class CustomDialog extends StatelessWidget {
  final String message; // Mensaje que se mostrará en el diálogo
  final String buttonLabel; // Etiqueta del botón en el diálogo

  // Constructor de CustomDialog con parámetros requeridos
  const CustomDialog({
    super.key,
    required this.message,
    required this.buttonLabel,
  });

  @override
  Widget build(BuildContext context) {
    // Obtiene el esquema de color del tema
    final colors = Theme.of(context).colorScheme;
    // Obtiene la configuración de textos del tema
    final textStyle = Theme.of(context).textTheme;
    // Radio del borde para el diálogo y botón
    const double borderRadius = 10;

    // Creando el widget Dialog
    return Dialog(
      backgroundColor: colors.primaryContainer,
      // Color de la superficie del diálogo
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      // Contenedor para los elementos internos del diálogo
      child: Container(
        padding: const EdgeInsets.only(top: 6, bottom: 10, right: 15, left: 15),
        width: 100,
        // Stack para superponer elementos
        child: Stack(
          children: [
            // Columna para organizar los elementos verticalmente
            Column(
              mainAxisSize: MainAxisSize.min, // Ajusta el tamaño al contenido
              children: [
                const SizedBox(height: 30), // Espacio para el botón de cierre
                // Texto del mensaje en el diálogo
                Text(
                  message,
                  textAlign: TextAlign.center,
                  style: textStyle.bodyMedium,
                ),
                const SizedBox(height: 15),
                // Widget para el botón personalizado en el diálogo
                _CustomDialogButton(
                  borderRadius: borderRadius,
                  colors: colors,
                  buttonLabel: buttonLabel,
                  textStyle: textStyle,
                ),
              ],
            ),
            // Botón de cierre (X) en la esquina superior derecha
            Positioned(
              right: 2, // Posición desde la derecha
              top: 6, // Posición desde la parte superior
              // InkResponse para manejar el toque en el icono
              child: InkResponse(
                onTap: () => Navigator.pop(context), // Cierra el diálogo
                // Icono de cierre
                child: Icon(Icons.close, color: colors.primary, size: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget para el botón personalizado dentro del diálogo
class _CustomDialogButton extends StatelessWidget {
  final double borderRadius; // Radio del borde para el botón
  final ColorScheme colors; // Esquema de color del tema
  final String buttonLabel; // Etiqueta del botón
  final TextTheme textStyle; // Estilo del texto del botón

  // Constructor con parámetros requeridos
  const _CustomDialogButton({
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
