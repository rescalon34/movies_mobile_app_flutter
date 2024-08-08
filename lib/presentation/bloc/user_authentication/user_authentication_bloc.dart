import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'user_authentication_event.dart';

part 'user_authentication_state.dart';

class UserAuthenticationBloc
    extends Bloc<UserAuthenticationEvent, UserAuthenticationState> {
  UserAuthenticationBloc() : super(const UnAuthenticated()) {
    on<OnSignedIn>((event, emit) {
      emit(const Authenticated());
    });
    on<OnLoggedOut>((event, emit) {
      emit(const UnAuthenticated());
    });
  }
}
