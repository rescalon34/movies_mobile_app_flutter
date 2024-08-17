part of 'user_authentication_bloc.dart';

/// Contains all the events triggered from the login screen.
@immutable
sealed class UserAuthenticationEvent {
  const UserAuthenticationEvent();
}

class OnUsernameChange extends UserAuthenticationEvent {
  final String? username;

  const OnUsernameChange({this.username});
}

class OnPasswordChange extends UserAuthenticationEvent {
  final String? password;

  const OnPasswordChange({this.password});
}

class OnObscurePassword extends UserAuthenticationEvent {
  final bool? isObscurePassword;

  const OnObscurePassword({this.isObscurePassword});
}

class OnSubmitLogin extends UserAuthenticationEvent {
  const OnSubmitLogin();
}
