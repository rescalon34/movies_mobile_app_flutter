import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:movies_mobile_app_flutter/domain/model/user_credentials.dart';
import 'package:movies_mobile_app_flutter/domain/usecase/login_use_case.dart';

import '../../../data/util/data_state.dart';

part 'user_authentication_event.dart';

part 'user_authentication_state.dart';

class UserAuthenticationBloc
    extends Bloc<UserAuthenticationEvent, UserAuthenticationState> {
  final LoginUseCase _loginUseCase;

  UserAuthenticationBloc(this._loginUseCase) : super(const UnAuthenticated()) {
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
        await executeLogin((event).credentials, emit);
        break;
      case OnLoggedOutClick _:
        debugPrint("OnLoggedOutClick");
        break;
      default:
        debugPrint("default statement");
    }
  }

  /// MARK: - perform the login API call.
  Future executeLogin(
    UserCredentials? credentials,
    Emitter<UserAuthenticationState> emit,
  ) async {
    final dataState = await _loginUseCase();
    debugPrint("trying to fetch data...");

    if (dataState is DataSuccess) {
      debugPrint("DataSuccess data: ${dataState.data}");
      emit(const Authenticated());
    } else if (dataState is DataFailure) {
      debugPrint("DataSuccess error: ${dataState.error}");
      emit(const UnAuthenticated());
    }
  }
}
