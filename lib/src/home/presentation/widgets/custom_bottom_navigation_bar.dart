import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// Definición de un widget de estado para una barra de navegación personalizada
class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  // Creando el estado asociado con este StatefulWidget
  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

// Estado asociado con CustomBottomNavigationBar
class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  // Índice seleccionado actual para la navegación
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // Acceso a la configuración de colores y texto del tema actual
    final colors = Theme.of(context).colorScheme;
    final textStyle = Theme.of(context).textTheme;

    // Usando un Stack para superponer elementos visuales
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SizedBox(
          height: 75, // Definir altura para BottomNavigationBar
          // Widget BottomNavigationBar para la navegación
          child: BottomNavigationBar(
            // Establece el color de fondo
            backgroundColor: colors.primary,
            // Color del ítem seleccionado (para el texto)
            selectedItemColor: colors.secondary,
            // Color del ítem no seleccionado (para el texto)
            unselectedItemColor: colors.onPrimary,
            // Estilo del texto para ítems seleccionados
            selectedLabelStyle: textStyle.titleSmall,
            // Estilo del texto para ítems no seleccionados
            unselectedLabelStyle: textStyle.titleSmall!.copyWith(
              color: colors.onPrimary,
            ),
            // Definición de los ítems de la barra de navegación
            items: [
              getBarItem('Altas Cortes', 'corte'),
              getBarItem('Consultar', 'search'),
              getBarItem('Vippy', 'vippy'),
            ],
            // Índice del ítem actualmente seleccionado
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ),
        Positioned(
          // Posición superior del indicador
          top: 0,
          // Calcula la posición del indicador basada en el índice seleccionado
          left: MediaQuery.of(context).size.width / 3 * _selectedIndex,
          child: Container(
            height: 3, // Altura del indicador
            width: MediaQuery.of(context).size.width / 3, // Ancho del indicador
            color: colors.secondary, // Color del indicador
          ),
        ),
      ],
    );
  }

  // Método para crear un BottomNavigationBarItem
  BottomNavigationBarItem getBarItem(String label, String icon) {
    return BottomNavigationBarItem(
      // Icono estándar para el ítem
      icon: CustomBarItemIcon(icon: icon),
      // Icono cuando el ítem está activo
      activeIcon: CustomBarItemIcon(icon: icon, isActive: true),
      label: label, // Etiqueta de texto para el ítem
    );
  }

  // Actualizar el estado al seleccionar un ítem
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

// Widget para representar el icono de un ítem en la barra de navegación
class CustomBarItemIcon extends StatelessWidget {
  // Nombre del archivo del icono
  final String icon;
  // Indica si el ítem está activo
  final bool isActive;

  // Constructor con parámetros requeridos y opcional para el estado activo
  const CustomBarItemIcon({
    super.key,
    required this.icon,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    // Acceso a la configuración de colores del tema actual
    final colors = Theme.of(context).colorScheme;
    // Ruta del archivo del icono
    String url = 'assets/icons/$icon.svg';

    return Padding(
      padding: const EdgeInsets.only(bottom: 3),
      child: SvgPicture.asset(
        url,
        height: 20,
        colorFilter: ColorFilter.mode(
          // Filtro de color para cambiar el color del icono basado en el estado activo
          isActive ? colors.secondary : colors.onPrimary,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
