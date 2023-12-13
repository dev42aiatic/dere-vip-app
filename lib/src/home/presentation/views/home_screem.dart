
// Importación de la biblioteca de Flutter que proporciona widgets para construir interfaces de usuario.
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
    return Scaffold(
      // Configuración de la barra de aplicación.
      appBar: AppBar(
        title: const Text("DereVip App"), // Título de la barra de aplicación.
      ),
      // Configuración del cuerpo de la pantalla, que contiene un widget _HomeView.
      body: const _HomeView(),
    );
  }
}

// Definición de la clase _HomeView, que hereda de StatelessWidget. Recuerden que esta widget se puede extrar y colocar en la carpeta widget.
class _HomeView extends StatelessWidget {

  // Constructor de la clase _HomeView.
  const _HomeView({super.key});

  // Método build, obligatorio para las clases que heredan de StatelessWidget.
  @override
  Widget build(BuildContext context) {
    // Devuelve un widget Center que alinea su hijo en el centro de la pantalla.
    return const Center(child: Text('¡Hola DereVip!')); // Muestra un texto centrado.
  }
}
