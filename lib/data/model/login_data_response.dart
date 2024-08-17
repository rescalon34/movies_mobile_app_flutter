import 'package:movies_mobile_app_flutter/domain/model/login_data.dart';

class LoginDataResponse {
  final String accessToken;

  const LoginDataResponse({required this.accessToken});

  factory LoginDataResponse.fromJson(Map<String, dynamic> map) {
    return LoginDataResponse(
      accessToken: map['access_token'],
    );
  }

  LoginData toDomain() {
    return LoginData(
      accessToken: accessToken,
    );
  }
}
