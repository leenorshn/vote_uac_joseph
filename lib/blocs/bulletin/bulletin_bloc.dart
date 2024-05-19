import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:vote_uac_joseph/models/bulletin.dart';
import 'package:vote_uac_joseph/models/candidat.dart';

part 'bulletin_event.dart';
part 'bulletin_state.dart';

class BulletinBloc extends Bloc<BulletinEvent, BulletinState> {
  BulletinBloc() : super(BulletinInitial()) {
    on<BulletinEvent>((event, emit) {
      if (event is LoadBulletinEvent) {
        add(UpdateBulletinEvent(bulletin));
      }
      if (event is UpdateBulletinEvent) {
        emit(BulletinLoadedSuccess(event.bulletin));
      }
      if (event is AddVicePresidentInBulletinEvent) {
        bulletin.add(event.candidat);
      }
      if (event is AddPresidentInBulletinEvent) {
        bulletin.add(event.candidat);
      }

      if (event is VideBulletinEvent) {
        bulletin = [];
      }
    });
  }
}
