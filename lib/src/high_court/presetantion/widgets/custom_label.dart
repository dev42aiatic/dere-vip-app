import 'package:flutter/material.dart';

// Definición de la clase CustomLabel, un widget stateless personalizado.
class CustomLabel extends StatelessWidget {
  // Texto que se mostrará dentro del label.
  final String text;

  // Constructor del widget CustomLabel.
  // Requiere un parámetro 'text' y acepta una clave 'key'.
  const CustomLabel({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    // Obtiene el esquema de color actual del tema del contexto.
    final colors = Theme.of(context).colorScheme;
    // Obtiene la configuración de textos del tema actual.
    final textStyle = Theme.of(context).textTheme;

    // Contenedor principal del widget.
    return Container(
      height: 27, // Altura fija del contenedor.
      width: 300, // Anchura fija del contenedor.
      margin: const EdgeInsets.only(bottom: 10), // Margen inferior.
      child: Align(
        alignment: Alignment.centerRight, // Alinea el contenido a la derecha.
        child: Container(
          // Se expande para llenar el espacio vertical disponible.
          height: double.infinity,
          // Color de fondo basado en el theme y bordes redondeados
          decoration: BoxDecoration(
            color: colors.onPrimary,
            borderRadius: BorderRadius.circular(20),
          ),
          // IntrinsicWidth ajusta el ancho del contenedor al contenido.
          child: IntrinsicWidth(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  text,
                  style: textStyle.labelMedium,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
