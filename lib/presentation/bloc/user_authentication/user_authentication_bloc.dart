import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:movies_mobile_app_flutter/domain/usecase/login_use_case.dart';

import '../../../data/util/data_state.dart';

part 'user_authentication_event.dart';

part 'user_authentication_state.dart';

class UserAuthenticationBloc extends Bloc<UserAuthenticationEvent, UserAuthenticationState> {
  final LoginUseCase _loginUseCase;

  /// MARK: - initial constructor, it will set the default state by passing UserAuthenticationState()
  UserAuthenticationBloc(this._loginUseCase) : super(const UserAuthenticationState()) {
    on<UserAuthenticationEvent>((event, emit) async {
      await onScreenUiEvent(event, emit);
    });
  }

  /// MARK: - main function to handle all screen UI events.
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
  }

  /// MARK: - Password TextField value changed event
  Future onPasswordChanged(
    String? password,
    Emitter<UserAuthenticationState> emit,
  ) async {
    debugPrint("UserAuthenticationBloc: password: $password");
    emit(state.copyWith(password: password));
  }

  /// MARK: - Show/hide password from TextField event
  Future togglePassword(
    bool? isObscurePassword,
    Emitter<UserAuthenticationState> emit,
  ) async {
    emit(state.copyWith(isObscurePassword: isObscurePassword));
  }

  /// MARK: - perform the login API call.
  Future executeLogin(
    Emitter<UserAuthenticationState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    debugPrint(
        "UserAuthenticationBloc: STATE for login: username:${state.username} password:${state.password}");

    final dataState = await _loginUseCase();
    debugPrint("trying to fetch data...");

    if (dataState is DataSuccess) {
      emit(state.copyWith(isLoading: false));
      debugPrint("DataSuccess data: ${dataState.data}");
      emit(state.copyWith(isAuthenticated: true));
    } else if (dataState is DataFailure) {
      emit(state.copyWith(isLoading: false));
      debugPrint("DataSuccess error: ${dataState.error}");
      emit(state.copyWith(isAuthenticated: false));
    }
  }
}
