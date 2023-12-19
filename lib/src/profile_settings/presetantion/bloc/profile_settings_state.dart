part of 'profile_settings_bloc.dart';

sealed class ProfileSettingsState extends Equatable {
  const ProfileSettingsState();
  
  @override
  List<Object> get props => [];
}

final class ProfileSettingsInitial extends ProfileSettingsState {}
