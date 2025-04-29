import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

extension CacheForExtension on Ref {
  /// Keeps the provider alive for [duration].
  void cacheFor(Duration duration) {
    final link = keepAlive();

    final timer = Timer(duration, link.close);

    onDispose(timer.cancel);
  }
}

extension InvalidateAfterExtension on Ref {
  /// schedule a manual invalidate() after [duration]
  void invalidateAfter(Duration duration) {
    final timer = Timer(duration, () {
      invalidateSelf();
    });

    onDispose(timer.cancel);
  }
}
