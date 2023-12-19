import 'package:dere_vip_app/src/home/presentation/views/home_screen.dart';
import 'package:dere_vip_app/src/profile/profile.dart';
import 'package:dere_vip_app/src/profile_settings/profile_setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

// Definición de un widget personalizado para la barra de aplicación de la página de inicio
class CustomHomeAppbar extends StatelessWidget {
  const CustomHomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    // Acceso a la configuración de colores y texto del tema actual
    final colors = Theme.of(context).colorScheme;

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
              // Carga dinámicamente los componentes dependiendo de la ruta
              children: _getWidgetsByRoute(context),
            ),
          ),
        ),
      ),
    );
  }

  // Función para validar la ruta actual y retornar el Array de componentes
  List<Widget> _getWidgetsByRoute(BuildContext context) {
    String currentRouteName =
        ModalRoute.of(context)?.settings.name ?? 'Unknown';

    if (currentRouteName == ProfileScreen.name) {
      return _profileWidgets(context);
    } else if (currentRouteName == ProfileSettingsScreen.name) {
      return _profileSettingsWidgets(context);
    }

    return _homeWidgets(context);
  }

  // Array de Widgets de la vista principal
  List<Widget> _homeWidgets(BuildContext context) {
    // Acceso a la configuración de colores y texto del tema actual
    final colors = Theme.of(context).colorScheme;
    final textStyle = Theme.of(context).textTheme;

    return [
      IconButton(
        icon: SvgPicture.asset(
          'assets/icons/perfil.svg',
          width: 33,
          height: 33,
        ),
        onPressed: () => context.pushNamed(ProfileScreen.name),
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
        onPressed: () => context.pushNamed(ProfileSettingsScreen.name),
      ),
    ];
  }

  // Array de Widgets del perfil
  List<Widget> _profileWidgets(BuildContext context) {
    // Acceso a la configuración de colores y texto del tema actual
    final colors = Theme.of(context).colorScheme;

    return [
      IconButton(
        icon: Icon(
          Icons.home_outlined,
          color: colors.secondary,
          size: 40,
        ),
        onPressed: () => context.pushNamed(HomeScreen.name)
      ),
    ];
  }

  // Array de Widgets de la configuración de perfil
  List<Widget> _profileSettingsWidgets(BuildContext context) {
    // Acceso a la configuración de colores y texto del tema actual
    final colors = Theme.of(context).colorScheme;
    final textStyle = Theme.of(context).textTheme;

    return [
      IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: colors.secondary,
          size: 25,
        ),
        onPressed: () => context.pop(),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 0,
          vertical: 13,
        ),
        child: Text(
          'Ajustes',
          style: textStyle.titleMedium!.copyWith(
            color: colors.onPrimary, // Color del texto
          ),
        ),
      )
    ];
  }
}
