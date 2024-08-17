import 'package:equatable/equatable.dart';

class LoginData extends Equatable {
  final String accessToken;

  const LoginData({required this.accessToken});

  @override
  List<Object?> get props => [accessToken];
}
