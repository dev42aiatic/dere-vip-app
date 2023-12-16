import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// Definición de un widget personalizado para la barra de aplicación de la página de inicio
class CustomHomeAppbar extends StatelessWidget {
  const CustomHomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    // Acceso a la configuración de colores y texto del tema actual
    final colors = Theme.of(context).colorScheme;
    final textStyle = Theme.of(context).textTheme;

    // Contenedor que actúa como la barra de aplicación personalizada
    return Container(
      color: colors.primary,
      child: SafeArea(
        bottom: false, // Evita el padding adicional en la parte inferior
        // Padding alrededor del contenido de la barra de aplicación
        child: Padding(
          padding: const EdgeInsets.all(10),
          // Tamaño fijo para la barra de aplicación
          child: SizedBox(
            width: double.infinity, // Ancho total disponible
            height: 90, // Altura fija
            // Row para organizar los elementos horizontalmente
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: SvgPicture.asset(
                    'assets/icons/perfil.svg',
                    width: 33,
                    height: 33,
                  ),
                  onPressed: () {},
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 0,
                    vertical: 8,
                  ),
                  // Columna para el texto de saludo y nombre
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Texto de saludo
                      Text(
                        'Hola,',
                        style: textStyle.titleSmall!.copyWith(
                          color: colors.onPrimary, // Color del texto
                        ),
                      ),
                      // Nombre del usuario
                      Text(
                        'Pepito',
                        style: textStyle.titleSmall!.copyWith(
                          color: colors.onPrimary, // Color del texto
                        ),
                      ),
                    ],
                  ),
                ),
                // Espaciador para alinear los elementos a los extremos
                const Spacer(),
                // Botón con ícono de ajustes
                IconButton(
                  icon: SvgPicture.asset(
                    'assets/icons/ajustes.svg',
                    width: 30,
                    height: 30,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
