import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'profile_settings_event.dart';
part 'profile_settings_state.dart';

class ProfileSettingsBloc extends Bloc<ProfileSettingsEvent, ProfileSettingsState> {
  ProfileSettingsBloc() : super(ProfileSettingsInitial()) {
    on<ProfileSettingsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
