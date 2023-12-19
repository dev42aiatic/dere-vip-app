import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'high_court_event.dart';
part 'high_court_state.dart';

class HighCourtBloc extends Bloc<HighCourtEvent, HighCourtState> {
  HighCourtBloc() : super(HighCourtInitial()) {
    on<HighCourtEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
