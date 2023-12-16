import 'package:flutter/material.dart';

/// Widget personalizado [HighCourtButton] para crear un botón estilizado.
///
/// Este widget utiliza el esquema de colores del tema actual y muestra un texto
/// con un icono de flecha a la derecha. Se utiliza principalmente para interfaces
/// con un diseño personalizado.
class HighCourtButton extends StatelessWidget {
  /// Texto que se mostrará en el botón.
  final String text;

  /// Constructor de [HighCourtButton].
  ///
  /// Requiere un [String] [text] que será el texto del botón.
  /// [key] es opcional y se utiliza para identificar de manera única el widget.
  const HighCourtButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    // Accediendo al esquema de color actual del contexto de este widget.
    final colors = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: () {
        //TODO: Implementar variable para la ruta deseada. Se debe pasar desde el constructor.
      },
      child: Container(
        // Margen inferior para separación
        margin: const EdgeInsets.only(bottom: 18),
        height: 50, // Altura fija del botón
        width: 300, // Anchura fija del botón
        // Color primario y border redondeados del botón
        decoration: BoxDecoration(
          color: colors.primary,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Center(
              // Centrando el texto en el botón
              child: Text(
                text,
                style: TextStyle(
                  color: colors.onSecondary,
                ), // Color del texto basado en el esquema de colores
              ),
            ),
            Positioned(
              right: 5, // Posiciona el ícono a la derecha con un margen de 5
              top: 0, // Alineado con la parte superior del botón
              bottom: 0, // Alineado con la parte inferior del botón
              child: Icon(
                Icons.arrow_right, // Ícono de flecha a la derecha
                color:
                    colors.tertiary, // Color terciario del tema para el ícono
              ),
            ),
          ],
        ),
      ),
    );
  }
}
