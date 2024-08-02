part of 'user_authentication_bloc.dart';

@immutable
sealed class UserAuthenticationEvent {
  const UserAuthenticationEvent();
}

class LoggedIn extends UserAuthenticationEvent {
  const LoggedIn();
}

class LoggedOut extends UserAuthenticationEvent {
  const LoggedOut();
}
