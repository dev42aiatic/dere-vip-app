import 'package:dere_vip_app/src/home/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  // Define un nombre estático para ser utilizado en la navegación y en la definición de rutas.
  static const name = 'profile';

  // Constructor básico con una clave opcional.
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Accede al esquema de colores actual basado en el tema de la aplicación.
    final colors = Theme.of(context).colorScheme;
    // Accede a la configuración de estilo de texto basado en el tema de la aplicación.
    final textStyle = Theme.of(context).textTheme;

    // Crea la estructura principal de la pantalla utilizando Scaffold.
    return Scaffold(
      // Columna para organizar los widgets verticalmente.
      body: Column(
        children: [
          // Widget personalizado para la barra de la aplicación.
          const CustomHomeAppbar(),
          // Columna anidada para más elementos.
          Column(
            children: [
              // Padding para proporcionar espacio alrededor de los widgets.
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 80,
                ),
                // Row para organizar los widgets horizontalmente.
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Widget CircleAvatar para mostrar una imagen o icono circular.
                    CircleAvatar(
                      backgroundColor: colors.tertiaryContainer,
                      radius: 25,
                    ),
                    // Espaciador horizontal.
                    const SizedBox(width: 10),
                    // Texto con el nombre del usuario.
                    Text(
                      'Pepito Perez',
                      style: textStyle.titleMedium!.copyWith(
                        color: colors.onPrimaryContainer,
                      ),
                    )
                  ],
                ),
              ),
              // Padding para proporcionar espacio alrededor del contenedor.
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                // Contenedor para agrupar widgets y aplicar estilos.
                child: Container(
                  decoration: BoxDecoration(
                    color: colors.tertiaryContainer,
                  ),
                  width: double.infinity,
                  // Columna para organizar los elementos de la sección Premium.
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Espaciador vertical.
                      const SizedBox(height: 40),
                      // Texto indicando el estado Premium del usuario.
                      Text(
                        'Premium',
                        textAlign: TextAlign.center,
                        style: textStyle.titleMedium!.copyWith(
                          color: colors.onPrimaryContainer,
                        ),
                      ),
                      // Espaciador vertical.
                      const SizedBox(height: 16),
                      // Descripción de los beneficios Premium.
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 45),
                        child: Text(
                          '¡Accede a la lista de todas las sentencias y Jurisprudencias de forma ilimitada!',
                          style: textStyle.bodyMedium,
                        ),
                      ),
                      // Espaciador vertical.
                      const SizedBox(height: 16),
                      // Botón personalizado para descubrir más sobre DereVip Premium.
                      const CustomButton(
                        buttonLabel: 'Descubre DereVip Premium',
                        horizontal: 50,
                        vertical: 10,
                      ),
                      // Espaciador vertical.
                      const SizedBox(height: 17),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
