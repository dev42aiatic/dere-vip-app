import 'package:dere_vip_app/src/high_court/presetantion/high_court.dart';
import 'package:dere_vip_app/src/home/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

// Definición de la clase HomeScreen, que hereda de StatelessWidget.
class HomeScreen extends StatelessWidget {
  // Declaración de una constante de clase llamada 'name' para enrutar las screens.
  static const String name = 'home_screen';

  // Constructor de la clase HomeScreen.
  const HomeScreen({super.key});

  // Método build, obligatorio para las clases que heredan de StatelessWidget.
  @override
  Widget build(BuildContext context) {
    // Devuelve un Scaffold, que es un marco visual básico de la aplicación.
    return const Scaffold(
      // Configuración del cuerpo de la pantalla, que contiene un widget HighCourt.
      body: Column(
        children: [
          CustomHomeAppbar(),
          Expanded(
            child: HighCourtScreen(),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
