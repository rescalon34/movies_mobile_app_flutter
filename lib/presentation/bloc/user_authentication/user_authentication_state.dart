part of 'user_authentication_bloc.dart';

/// Represents the UI state of the login screen.
@immutable
class UserAuthenticationState extends Equatable {
  final String? username;
  final String? password;
  final bool isLoading;
  final bool isObscurePassword;
  final bool isAuthenticated;
  final bool isValidForm;

  const UserAuthenticationState(
      {this.username = '',
      this.password = '',
      this.isLoading = false,
      this.isObscurePassword = true,
      this.isAuthenticated = false,
      this.isValidForm = false});

  @override
  List<Object?> get props => [
        username,
        password,
        isLoading,
        isObscurePassword,
        isAuthenticated,
        isValidForm,
      ];

  UserAuthenticationState copyWith({
    String? username,
    String? password,
    bool? isLoading,
    bool? isObscurePassword,
    bool? isAuthenticated,
    bool? isValidForm,
  }) {
    return UserAuthenticationState(
      username: username ?? this.username,
      password: password ?? this.password,
      isLoading: isLoading ?? this.isLoading,
      isObscurePassword: isObscurePassword ?? this.isObscurePassword,
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      isValidForm: isValidForm ?? this.isValidForm,
    );
  }
}
