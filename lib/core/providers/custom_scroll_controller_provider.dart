import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'custom_scroll_controller_provider.g.dart';

typedef LoadMoreCallback = Future<void> Function();

@riverpod
ScrollController customScrollController(Ref ref, {required LoadMoreCallback onLoadMore, double threshold = 200.0}) {
  final controller = ScrollController();
  double lastOffset = 0.0;
  bool isLoading = false;

  void listener() {
    if (!controller.hasClients) return;
    final pos = controller.position;
    final offset = pos.pixels;

    final nearBottom = offset > pos.maxScrollExtent - threshold;
    final scrollingDown = offset > lastOffset;

    if (scrollingDown && nearBottom && !isLoading) {
      isLoading = true;
      onLoadMore().whenComplete(() {
        isLoading = false;
      });
    }

    lastOffset = offset;
  }

  controller.addListener(listener);

  ref.onDispose(() {
    controller.removeListener(listener);
    controller.dispose();
  });

  return controller;
}
