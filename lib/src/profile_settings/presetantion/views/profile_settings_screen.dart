import 'package:dere_vip_app/src/high_court/presetantion/widgets/widgets.dart';
import 'package:dere_vip_app/src/home/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileSettingsScreen extends StatelessWidget {
  // Define un nombre estático para ser utilizado en la navegación y en la definición de rutas.
  static const name = 'profile_settings';

  // Constructor básico con una clave opcional.
  const ProfileSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Crea la estructura principal de la pantalla utilizando Scaffold.
    return Scaffold(
      // Columna para organizar los widgets verticalmente.
      body: Column(
        children: [
          // Widget personalizado para la barra de la aplicación.
          const CustomHomeAppbar(),
          // Expanded para ocupar el espacio restante en la pantalla.
          Expanded(
            // SingleChildScrollView para permitir desplazamiento si el contenido es muy largo.
            child: SingleChildScrollView(
              // Columna para organizar los elementos de configuración.
              child: Column(
                children: [
                  // Paneles de configuración para distintas secciones.
                  _ConfigurationPanel(
                    label: 'Configuración',
                    content: _notifications(context),
                  ),
                  _ConfigurationPanel(
                    label: 'Datos personales',
                    content: _personalData(context),
                  ),
                  _ConfigurationPanel(
                    label: 'Menciones legales',
                    content: _legalMentions(context),
                  ),
                  // Contenedor para el logo, con un tamaño y márgenes definidos.
                  const AppLogoContainer(),
                  // Botón personalizado para cerrar sesión.
                  const CustomButton(
                    buttonLabel: 'Cerrar Sesión',
                    horizontal: 100,
                    vertical: 15,
                  ),
                  // Espaciador vertical.
                  const SizedBox(height: 50),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  // Array de Widgets de Notificaciones
  List<Widget> _notifications(BuildContext context) {
    // Configuración de la sección de notificaciones con icono y texto.
    return [
      const _SettingText(text: 'Notificaciones'),
      // Espaciador para alinear los elementos a los extremos.
      const Spacer(),
      // Icono de notificaciones.
      SvgPicture.asset(
        'assets/icons/notification.svg',
        height: 23,
      ),
    ];
  }

  // Array de Widgets de Datos personales
  List<Widget> _personalData(BuildContext context) {
    // Configuración de la sección de datos personales con icono y texto.
    return [
      const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _SettingText(text: 'Mis datos de usuario DereVip'),
          _SettingText(text: 'f252710-78Ad-2138bN-D2D6N-001AS'),
        ],
      ),
      // Espaciador para alinear los elementos a los extremos.
      const Spacer(),
      // Icono de datos personales.
      SvgPicture.asset(
        'assets/icons/datos.svg',
        height: 30,
      ),
    ];
  }

  // Array de Widgets de Menciones legales
  List<Widget> _legalMentions(BuildContext context) {
    // Configuración de la sección de menciones legales con texto.
    return [
      const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _SettingText(text: 'Condiciones generales de uso'),
          SizedBox(height: 5),
          _SettingText(text: 'Política de privacidad'),
          SizedBox(height: 5),
          _SettingText(text: 'Política de cookies'),
        ],
      ),
    ];
  }
}

class _ConfigurationPanel extends StatelessWidget {
  final List<Widget> content; // Contenido del panel de configuración.
  final String label; // Etiqueta del panel de configuración.

  // Constructor con parámetros requeridos para contenido y etiqueta.
  const _ConfigurationPanel({
    super.key,
    required this.content,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    // Accede al esquema de colores y estilo de texto actual basado en el tema de la aplicación.
    final colors = Theme.of(context).colorScheme;
    final textStyle = Theme.of(context).textTheme;

    // Contenedor para cada panel de configuración.
    return Container(
      // Decoración para el contenedor, incluyendo un borde inferior.
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.2,
            color: colors.primary,
          ),
        ),
      ),
      // Padding para el contenido del panel.
      child: Padding(
        padding: const EdgeInsets.only(
          top: 35,
          bottom: 35,
          left: 50,
          right: 40,
        ),
        // SizedBox para dar un ancho definido.
        child: SizedBox(
          width: double.infinity,
          // Columna para organizar los elementos del panel verticalmente.
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Texto de la etiqueta del panel.
              Text(
                label,
                style: textStyle.titleSmall!.copyWith(
                  color: colors.primary,
                ),
              ),
              // Espaciador vertical.
              const SizedBox(height: 25),
              // Fila para organizar el contenido del panel.
              Row(
                children: content,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SettingText extends StatelessWidget {
  final String text; // Texto de la configuración.

  // Constructor con parámetro requerido para el texto.
  const _SettingText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    // Accede a la configuración de estilo de texto basado en el tema de la aplicación.
    final textStyle = Theme.of(context).textTheme;

    // Widget Text para mostrar el texto de configuración.
    return Text(
      text,
      // Aplica el estilo de texto del tema.
      style: textStyle.bodyLarge,
    );
  }
}
