import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:movies_mobile_app_flutter/domain/usecase/login_use_case.dart';

import '../../../data/util/data_state.dart';

part 'user_authentication_event.dart';

part 'user_authentication_state.dart';

/// This class will handle business logic for the login screen, it will be responsible
/// to collect UI events and execute the corresponding action, as well as updating the UI state
/// of the login screen.
class UserAuthenticationBloc
    extends Bloc<UserAuthenticationEvent, UserAuthenticationState> {
  final LoginUseCase _loginUseCase;

  /// MARK: - initial constructor, it will set the default state by passing UserAuthenticationState()
  UserAuthenticationBloc(this._loginUseCase)
      : super(const UserAuthenticationState()) {
    on<UserAuthenticationEvent>((event, emit) async {
      await onScreenUiEvent(event, emit);
    });
  }

  /// MARK: - Main function to handle all screen UI events.
  Future onScreenUiEvent(
    UserAuthenticationEvent event,
    Emitter<UserAuthenticationState> emit,
  ) async {
    switch (event) {
      case OnSubmitLogin _:
        await executeLogin(emit);
        break;
      case OnObscurePassword _:
        togglePassword(event.isObscurePassword, emit);
        break;
      case OnUsernameChange _:
        onUsernameChanged(event.username, emit);
        break;
      case OnPasswordChange _:
        onPasswordChanged(event.password, emit);
        break;
      default:
        debugPrint("default statement");
    }
  }

  /// MARK: - Username TextField value changed event
  Future onUsernameChanged(
    String? username,
    Emitter<UserAuthenticationState> emit,
  ) async {
    debugPrint("UserAuthenticationBloc: username: $username");
    emit(state.copyWith(username: username));
    validateForm(emit);
  }

  /// MARK: - Password TextField value changed event
  Future onPasswordChanged(
    String? password,
    Emitter<UserAuthenticationState> emit,
  ) async {
    debugPrint("UserAuthenticationBloc: password: $password");
    emit(state.copyWith(password: password));
    validateForm(emit);
  }

  /// MARK: - Show/hide password from TextField event
  Future togglePassword(
    bool? isObscurePassword,
    Emitter<UserAuthenticationState> emit,
  ) async {
    emit(state.copyWith(isObscurePassword: isObscurePassword));
  }

  /// MARK: - Validate Login form by checking if values are not empty
  void validateForm(Emitter<UserAuthenticationState> emit) {
    bool isValidForm = state.username?.isNotEmpty == true &&
        state.password?.isNotEmpty == true;

    emit(state.copyWith(isValidForm: isValidForm));
  }

  /// MARK: - perform the login API call.
  Future executeLogin(
    Emitter<UserAuthenticationState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final dataState = await _loginUseCase();
    debugPrint("trying to fetch data...");

    if (dataState is DataSuccess) {
      debugPrint("DataSuccess data: ${dataState.data}");
      emit(state.copyWith(isLoading: false, isAuthenticated: true));
    } else if (dataState is DataFailure) {
      debugPrint("DataSuccess error: ${dataState.error}");
      emit(state.copyWith(isLoading: false, isAuthenticated: false));
    }
  }
}
