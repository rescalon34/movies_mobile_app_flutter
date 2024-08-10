import 'package:movies_mobile_app_flutter/core/util/usecase.dart';
import 'package:movies_mobile_app_flutter/data/util/data_state.dart';
import 'package:movies_mobile_app_flutter/domain/model/login_data.dart';
import 'package:movies_mobile_app_flutter/domain/model/user_credentials.dart';
import 'package:movies_mobile_app_flutter/domain/repository/auth_repository.dart';

class LoginUseCase implements UseCase<DataState<LoginData>, UserCredentials> {

   final AuthRepository _authRepository;

   LoginUseCase(this._authRepository);


  @override
  Future<DataState<LoginData>> call({UserCredentials? params}) {
    return _authRepository.login(params);
  }
}
