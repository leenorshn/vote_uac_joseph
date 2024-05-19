import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/candidat.dart';

part 'vice_president_event.dart';
part 'vice_president_state.dart';

class VicePresidentBloc extends Bloc<VicePresidentEvent, VicePresidentState> {
  VicePresidentBloc() : super(VicePresidentInitial()) {
    on<VicePresidentEvent>((event, emit) {
      if (event is LoadVicePresidentEvent) {
        add(UpdateVicePresidentEvent(listCandidatVices));
      }

      if (event is UpdateVicePresidentEvent) {
        emit(VicePresidentLoadedSuccess(event.data));
      }
    });
  }
}
