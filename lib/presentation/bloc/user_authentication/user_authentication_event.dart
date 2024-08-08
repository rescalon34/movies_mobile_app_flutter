part of 'user_authentication_bloc.dart';

@immutable
sealed class UserAuthenticationEvent {
  const UserAuthenticationEvent();
}

class OnSignedIn extends UserAuthenticationEvent {
  const OnSignedIn();
}

class OnLoggedOut extends UserAuthenticationEvent {
  const OnLoggedOut();
}
