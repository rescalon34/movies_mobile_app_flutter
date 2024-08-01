import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'user_authentication_event.dart';
part 'user_authentication_state.dart';

class UserAuthenticationBloc extends Bloc<UserAuthenticationEvent, UserAuthenticationState> {
  UserAuthenticationBloc() : super(const UnAuthenticated()) {
    on<LoggedIn>((event, emit) {
      emit(const Loading());
      emit(const Authenticated());
    });
    on<LoggedOut>((event, emit) {
      emit(const Loading());
      emit(const UnAuthenticated());
    });
  }
}
