import 'package:get_it/get_it.dart';
import 'package:movies_mobile_app_flutter/core/util/bloc_stream_to_listenable.dart';

Future<void> setupUtilModule(GetIt getIt) async {
  getIt.registerFactory<StreamToListenable>(() => StreamToListenable());
}
