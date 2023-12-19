part of 'high_court_bloc.dart';

sealed class HighCourtState extends Equatable {
  const HighCourtState();
  
  @override
  List<Object> get props => [];
}

final class HighCourtInitial extends HighCourtState {}
