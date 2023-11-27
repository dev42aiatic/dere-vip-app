part of 'autentication_bloc.dart';

sealed class AutenticationState extends Equatable {
  const AutenticationState();
  
  @override
  List<Object> get props => [];
}

final class AutenticationInitial extends AutenticationState {}
