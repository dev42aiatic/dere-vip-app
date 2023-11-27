
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:dere_vip_app/firebase_options.dart';

part 'autentication_event.dart';
part 'autentication_state.dart';

class AutenticationBloc extends Bloc<AutenticationEvent, AutenticationState> {

  static Future<void> initializeFirebase() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }



  AutenticationBloc() : super(AutenticationInitial()) {
    on<AutenticationEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
