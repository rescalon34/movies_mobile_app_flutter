part of 'user_authentication_bloc.dart';

@immutable
sealed class UserAuthenticationState extends Equatable {
  final String username;
  final String password;
  final bool isLoading;
  final bool isObscurePassword;

  const UserAuthenticationState({
    this.username = '',
    this.password = '',
    this.isLoading = false,
    this.isObscurePassword = true,
  });

  @override
  List<Object?> get props => [isLoading, isObscurePassword];
}

final class Loading extends UserAuthenticationState {
  const Loading(bool isLoading) : super(isLoading: isLoading);
}

final class ObscurePassword extends UserAuthenticationState {
  const ObscurePassword(bool isObscurePassword)
      : super(isObscurePassword: isObscurePassword);
}

// TODO: Create state + events to handle TextField Inputs values and validations
final class Authenticated extends UserAuthenticationState {
  const Authenticated() : super();
}

final class UnAuthenticated extends UserAuthenticationState {
  const UnAuthenticated() : super();
}
