part of 'user_authentication_bloc.dart';

@immutable
sealed class UserAuthenticationState {
  const UserAuthenticationState();
}

final class Loading extends UserAuthenticationState {
  const Loading() : super();
}

final class Authenticated extends UserAuthenticationState {
  const Authenticated() : super();
}

final class UnAuthenticated extends UserAuthenticationState {
  const UnAuthenticated() : super();
}
