import 'package:get_it/get_it.dart';
import 'package:movies_mobile_app_flutter/core/di/bloc_module.dart';
import 'package:movies_mobile_app_flutter/core/di/navigation_module.dart';
import 'package:movies_mobile_app_flutter/core/di/repository_module.dart';
import 'package:movies_mobile_app_flutter/core/di/usecases_module.dart';

import 'networking_module.dart';

/// Main module file for DI, it contains all di functions and each 'module' is responsible
/// for creating instance of its corresponding set of objects.
///
final getIt = GetIt.instance;

Future<void> setupDependencyModules() async {
  setupNetworkingModule(getIt);
  setupRepositoryModule(getIt);
  setupUseCasesModule(getIt);
  setupBlocModule(getIt);
  setupNavigationModule(getIt);
}
