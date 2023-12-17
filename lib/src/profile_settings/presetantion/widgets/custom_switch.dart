import 'package:flutter/material.dart';

// Definición de un StatefulWidget CustomSwitch para crear un switch personalizable.
class CustomSwitch extends StatefulWidget {
  // Constructor con clave opcional para inicializar el estado.
  const CustomSwitch({super.key});

  @override
  // Creación del estado asociado con CustomSwitch.
  CustomSwitchState createState() => CustomSwitchState();
}

class CustomSwitchState extends State<CustomSwitch> {
  // Variable para rastrear el estado actual del switch (encendido/apagado).
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    // Accede al esquema de colores y estilo de texto actual basado en el tema de la aplicación.
    final colors = Theme.of(context).colorScheme;

    // Widget SizedBox para proporcionar un tamaño fijo al switch.
    return SizedBox(
      height: 35,
      // FittedBox para asegurar que el switch se adapte dentro del tamaño definido.
      child: FittedBox(
        // Hace que el contenido (switch) llene completamente el espacio asignado.
        fit: BoxFit.fill,
        // Widget Switch, el núcleo de este componente.
        child: Switch(
          value: isSwitched,
          onChanged: (value) {
            // Actualiza el estado del widget para reflejar el nuevo valor del switch.
            setState(() {
              isSwitched = value;
            });
          },
          // Color del track del switch cuando está activo.
          activeTrackColor: colors.tertiaryContainer,
          // Color del pulgar del switch cuando está activo.
          activeColor: colors.secondary,
          // Color del track del switch cuando está inactivo.
          inactiveTrackColor: colors.tertiaryContainer,
          // trackOutlineColor define el color del borde del track del switch.
          trackOutlineColor: MaterialStateProperty.resolveWith(
            (final Set<MaterialState> states) {
              // Condición para modificar el color del borde basado en el estado del switch.
              if (states.contains(MaterialState.selected)) {
                // Retorna null para no aplicar un color de borde diferente cuando está seleccionado.
                return null;
              }
              // Color del borde del track cuando el switch está inactivo.
              return colors.primary;
            },
          ),
        ),
      ),
    );
  }
}
