import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_routing/providers/posts_notifier.dart';
import 'package:test_routing/screens/feed_screen/posts_list.dart';

class FeedScreen extends ConsumerWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postsAsync = ref.watch(postsNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Feed')),
      body: postsAsync.when(
        data: (posts) => PostsList(posts: posts),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text(error.toString())),
      ),
    );
  }
}
