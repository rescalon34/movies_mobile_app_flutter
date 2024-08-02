import 'package:get_it/get_it.dart';
import 'package:movies_mobile_app_flutter/core/di/bloc_module.dart';
import 'package:movies_mobile_app_flutter/core/di/navigation_module.dart';
import 'package:movies_mobile_app_flutter/core/di/repository_module.dart';
import 'package:movies_mobile_app_flutter/core/di/usecases_module.dart';
import 'package:movies_mobile_app_flutter/core/di/util_module.dart';

import 'networking_module.dart';

/// Main module file for DI, it contains all di functions and each 'module' is responsible
/// for creating instance of its corresponding set of objects.
///
/// Note: Dependency order matters, according to the GetIt documentation: 'Dependencies must be registered in the correct order.'
/// Otherwise, it will throw an exception as follow:
/// Unhandled Exception: Bad state: GetIt: Object/factory with type StreamToListenable is not registered inside GetIt.
///
final getIt = GetIt.instance;

Future<void> setupDependencyModules() async {
  setupUtilModule(getIt);
  setupNetworkingModule(getIt);
  setupRepositoryModule(getIt);
  setupUseCasesModule(getIt);
  setupBlocModule(getIt);
  setupNavigationModule(getIt);
}
