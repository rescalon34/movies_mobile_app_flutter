import 'package:movies_mobile_app_flutter/domain/model/login_data.dart';

import '../../data/util/data_state.dart';
import '../model/user_credentials.dart';

abstract interface class AuthRepository {
  Future<DataState<LoginData>> login(UserCredentials? credentials);
}
