part of 'user_authentication_bloc.dart';

@immutable
sealed class UserAuthenticationEvent {
  const UserAuthenticationEvent();
}

class OnSubmitLogin extends UserAuthenticationEvent {
  final UserCredentials? credentials;

  const OnSubmitLogin({this.credentials});
}

class OnObscurePassword extends UserAuthenticationEvent {
  final bool? isObscurePassword;
  const OnObscurePassword({this.isObscurePassword});
}

class OnLoggedOutClick extends UserAuthenticationEvent {
  const OnLoggedOutClick();
}
