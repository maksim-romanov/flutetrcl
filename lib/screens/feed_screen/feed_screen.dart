import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_routing/providers/posts_notifier.dart';
import 'package:test_routing/screens/feed_screen/posts_list.dart';
import 'package:test_routing/widgets/blured_app_bar.dart';

class FeedScreen extends ConsumerWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postsAsync = ref.watch(postsNotifierProvider);

    return Scaffold(
      body: postsAsync.when(
        data: (posts) => CustomScrollView(slivers: [BluredAppBarWidget(title: 'Feed'), PostsList(posts: posts)]),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text(error.toString())),
      ),
    );
  }
}
