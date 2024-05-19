import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/candidat.dart';

part 'president_event.dart';
part 'president_state.dart';

class PresidentBloc extends Bloc<PresidentEvent, PresidentState> {
  PresidentBloc() : super(PresidentInitial()) {
    on<PresidentEvent>((event, emit) {
      if (event is LoadPresidentEvent) {
        emit(PresidentIsLoading());
        add(UpdatePresidentEvent(listCandidats));
      }

      if (event is UpdatePresidentEvent) {
        emit(PresidentLoadedSuccess(event.data));
      }
    });
  }
}
