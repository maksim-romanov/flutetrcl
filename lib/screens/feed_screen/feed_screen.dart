import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_routing/core/providers/custom_scroll_controller_provider.dart';
import 'package:test_routing/providers/posts_notifier.dart';
import 'package:test_routing/widgets/blured_app_bar.dart';

import './widgets/posts_list.dart';

class FeedScreen extends ConsumerWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postsAsync = ref.watch(postsNotifierProvider);

    final scrollController = ref.watch(
      customScrollControllerProvider(
        onLoadMore: () async {
          print('load more');
          await Future.delayed(const Duration(seconds: 2));
        },
      ),
    );

    return Scaffold(
      body: postsAsync.when(
        data:
            (posts) => CustomScrollView(
              controller: scrollController,
              slivers: [BluredAppBarWidget(title: 'Feed'), PostsList(posts: posts)],
            ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text(error.toString())),
      ),
    );
  }
}
