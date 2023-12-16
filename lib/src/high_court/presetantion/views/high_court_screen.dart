import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/widgets.dart';

// Define la clase HighCourt como un widget sin estado.
class HighCourt extends StatelessWidget {
  // Nombre estático para referencia en rutas o navegación.
  static const name = 'high_court';

  // Constructor de HighCourt con una clave opcional.
  const HighCourt({super.key});

  @override
  Widget build(BuildContext context) {
    // Define una constante para determinar si el usuario es premium.
    const isPremium = true;

    // SingleChildScrollView permite un desplazamiento si el contenido es demasiado largo.
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            // Contenedor para el logo, con un tamaño y márgenes definidos.
            Container(
              width: 110,
              height: 110,
              margin: const EdgeInsets.only(top: 20, bottom: 15),
              // Usa SvgPicture para mostrar un gráfico vectorial desde los assets.
              child: SvgPicture.asset(
                'assets/images/logoDereVIP.svg',
                fit: BoxFit.cover,
              ),
            ),
            // Condición que muestra CustomLabel si isPremium es verdadero.
            if (isPremium)
              GestureDetector(
                onTap: () => _showPremiumDialog(context),
                child: const CustomLabel(
                  text: 'Hazte Premium',
                ),
              ),
            // Botones HighCourtButton con texto personalizado.
            const HighCourtButton(
              text: 'Consejo Superior de la Judicatura',
            ),
            const HighCourtButton(
              text: 'Corte Suprema de Justicia',
            ),
            const HighCourtButton(
              text: 'Consejo de Estado',
            ),
            const HighCourtButton(
              text: 'Corte Constitucional',
            ),
            const HighCourtButton(
              text: 'Comisión nacional de Disciplina Judicial',
            ),
          ],
        ),
      ),
    );
  }

  void _showPremiumDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const CustomDialog(
          message:
              '¡Accede de forma ilimitada a las consultas de Jurisprudenciales de las altas cortes!',
          buttonLabel: 'Hacerme Premium',
        );
      },
    );
  }
}
