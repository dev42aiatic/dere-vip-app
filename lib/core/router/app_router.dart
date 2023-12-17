import 'package:dere_vip_app/src/home/presentation/views/home_screen.dart';
import 'package:dere_vip_app/src/profile/profile.dart';
import 'package:go_router/go_router.dart';

// Definición de un enrutador de la aplicación llamado appRouter mediante Go_router.
final appRouter = GoRouter(
  //initialLocation: '/', // Ubicación inicial al cargar la aplicación. Lo pueden usar para abrir la sreen deseada cuando compilen el proyecto
  routes: [
    // Definición de una ruta llamada '/'.
    GoRoute(
      path: '/', // Ruta de la ubicación.
      // Constructor que devuelve una instancia de HomeScreen.
      // Nombre asociado a la ruta, en este caso, el nombre de la clase HomeScreen.
      name: HomeScreen.name,
      // Constructor que devuelve una instancia de HomeScreen.
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/profile',
      name: ProfileScreen.name,
      builder: (context, state) => const ProfileScreen(),
    ),
  ],
);
