import 'package:go_router/go_router.dart';
import 'package:dere_vip_app/src/home/presentation/views/home_screem.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),



  ]
);