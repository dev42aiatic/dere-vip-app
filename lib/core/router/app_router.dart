import 'package:dere_vip_app/src/high_court/presetantion/high_court.dart';
import 'package:dere_vip_app/src/home/presentation/views/home_screen.dart';
import 'package:dere_vip_app/src/profile/profile.dart';
import 'package:dere_vip_app/src/profile_settings/profile_setting.dart';
import 'package:go_router/go_router.dart';

// Definición de un enrutador de la aplicación llamado appRouter mediante Go_router.
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/', 
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/hight-court',
      name: HighCourtScreen.name,
      builder: (context, state) => const HighCourtScreen(),
    ),
    GoRoute(
      path: '/profile',
      name: ProfileScreen.name,
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: '/profile-settings',
      name: ProfileSettingsScreen.name,
      builder: (context, state) => const ProfileSettingsScreen(),
    ),
  ],
);

