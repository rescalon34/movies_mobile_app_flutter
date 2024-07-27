
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../data/networking/network_service.dart';

Future<void> setupNetworkingModule(GetIt getIt) async {
  // Network service
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<NetworkService>(NetworkService(getIt()));
}
