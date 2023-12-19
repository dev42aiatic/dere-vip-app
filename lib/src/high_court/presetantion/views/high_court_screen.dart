import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/widgets.dart';
import 'package:dere_vip_app/src/high_court/bloc/high_court_bloc.dart';

// Define la clase HighCourt como un widget sin estado.
class HighCourtScreen extends StatelessWidget {
  // Nombre estático para referencia en rutas o navegación.
  static const name = 'high_court_screen';

  // Constructor de HighCourt con una clave opcional.
  const HighCourtScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
              create: (_) => HighCourtBloc(), 
              child: const _HighCourtView(),
              );

  }
  
}

class _HighCourtView extends StatelessWidget {

  static const isPremium = true;

  const _HighCourtView();

  
  @override
  Widget build(BuildContext context) {

     return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            // Contenedor para el logo, con un tamaño y márgenes definidos.
            const AppLogoContainer(),
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
