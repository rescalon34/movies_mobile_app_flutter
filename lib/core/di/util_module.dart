import 'package:get_it/get_it.dart';
import 'package:movies_mobile_app_flutter/core/util/bloc_stream_to_listenable.dart';
import 'package:movies_mobile_app_flutter/core/util/shared_pref_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> setupUtilModule(GetIt getIt) async {
  getIt.registerFactory<StreamToListenable>(() => StreamToListenable());

  /// MARK: - Shared Preferences
  getIt.registerSingletonAsync<SharedPreferences>(
    () => SharedPreferences.getInstance(),
  );

  getIt.registerLazySingleton<SharedPrefHelper>(
    () => SharedPrefHelperImpl(getIt()),
  );
}
