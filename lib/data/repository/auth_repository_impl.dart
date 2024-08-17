import 'package:movies_mobile_app_flutter/data/util/data_state.dart';
import 'package:movies_mobile_app_flutter/domain/model/login_data.dart';
import 'package:movies_mobile_app_flutter/domain/repository/auth_repository.dart';

import '../../domain/model/user_credentials.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<DataState<LoginData>> login(UserCredentials? credentials) async {
    // Mimic an API call
    await Future.delayed(const Duration(seconds: 2));
    return const DataSuccess(
      LoginData(accessToken: "ideally an access token!"),
    );
  }
}
