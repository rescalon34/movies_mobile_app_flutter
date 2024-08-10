part of 'user_authentication_bloc.dart';

@immutable
sealed class UserAuthenticationState extends Equatable {
  final bool isLoading;
  const UserAuthenticationState({this.isLoading = false});

  @override
  List<Object?> get props => [isLoading];
}

final class Loading extends UserAuthenticationState {
  const Loading(bool isLoading) : super(isLoading: isLoading);
}

// TODO: Create state + events to handle TextField Inputs values and validations
final class Authenticated extends UserAuthenticationState {
  const Authenticated() : super();
}

final class UnAuthenticated extends UserAuthenticationState {
  const UnAuthenticated() : super();
}
