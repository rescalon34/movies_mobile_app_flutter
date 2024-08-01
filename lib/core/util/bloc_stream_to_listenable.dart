import 'dart:async';

import 'package:flutter/cupertino.dart';

/// to convert stream to listenable subscriptions.
/// Refer to this question for more info: https://github.com/felangel/bloc/issues/3747
class StreamToListenable extends ChangeNotifier {
  List<StreamSubscription>? _subscriptions;

  /// Every time the [Stream] receives an event this [ChangeNotifier] will
  /// notify its listeners.
  Listenable addStream(List<Stream> streams) {
    _subscriptions = [];
    for (var stream in streams) {
      _subscriptions?.add(stream.asBroadcastStream().listen(_listener));
    }
    return this;
  }

  @override
  void dispose() {
    if (_subscriptions != null) {
      for (var stream in _subscriptions ?? []) {
        stream.cancel();
      }
      _subscriptions = null;
    }
    super.dispose();
  }

  void _listener(event) => notifyListeners();
}
