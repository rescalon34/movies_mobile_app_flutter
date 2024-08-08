part of 'user_authentication_bloc.dart';

@immutable
sealed class UserAuthenticationState {
  const UserAuthenticationState();
}

final class Authenticated extends UserAuthenticationState {
  const Authenticated() : super();
}

final class UnAuthenticated extends UserAuthenticationState {
  const UnAuthenticated() : super();
}
