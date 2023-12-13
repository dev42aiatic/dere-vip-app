import 'package:go_router/go_router.dart';
import 'package:dere_vip_app/src/home/presentation/views/home_screem.dart';

// Definición de un enrutador de la aplicación llamado appRouter mediante Go_router.
final appRouter = GoRouter(
  //initialLocation: '/', // Ubicación inicial al cargar la aplicación. Lo pueden usar para abrir la sreen deseada cuando compilen el proyecto
  routes: [
    // Definición de una ruta llamada '/'.
    GoRoute(
      path: '/', // Ruta de la ubicación.
      name: HomeScreen.name, // Nombre asociado a la ruta, en este caso, el nombre de la clase HomeScreen.
      builder: (context, state) => const HomeScreen(), // Constructor que devuelve una instancia de HomeScreen.
    ),
    // Pueden añadirse más rutas según las necesidades de la aplicación.
    //To do
    //Incorporar las rutas de las diferentes screens que vayan a crear.
  ],
);
