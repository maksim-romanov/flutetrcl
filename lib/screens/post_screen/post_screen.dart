import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_routing/providers/post_notifier.dart';
import 'package:test_routing/screens/post_screen/post_actions.dart';
import 'package:test_routing/screens/post_screen/post_info.dart';
import 'package:test_routing/widgets/wardrobe_image.dart';

class PostScreen extends ConsumerWidget {
  final String postId;
  const PostScreen({super.key, required this.postId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postAsync = ref.watch(postNotifierProvider(postId));

    return Scaffold(
      appBar: AppBar(title: null),
      body: postAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text(error.toString())),
        data:
            (post) => Padding(
              padding: const EdgeInsets.all(16.0),
              child: SafeArea(
                child: PostActionsWidget(
                  post: post,
                  child: Column(
                    children: [
                      WardrobeImageWidget(image: post.image),
                      const SizedBox(height: 32),
                      PostInfoWidget(post: post),
                      //
                    ],
                  ),
                ),
              ),
            ),
      ),
    );
  }
}
