import 'package:dere_vip_app/src/auth/prentation/bloc/autentication_bloc.dart';
import 'package:flutter/material.dart';

import 'package:dere_vip_app/core/router/app_router.dart';
import 'package:dere_vip_app/core/theme/app_theme.dart';

void main() async {
  //Inicializar la conf para firebase.
  WidgetsFlutterBinding.ensureInitialized();
  await AutenticationBloc.initializeFirebase();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'DereVip App',
      // se establece la config del router en core
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      // se estable la config de los estilos de la aplicación en core
      theme: AppTheme().getTheme(),
    );
  }
}
