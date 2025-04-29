import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_routing/models/post.dart';
import 'package:test_routing/providers/post_notifier.dart';

class PostActionsWidget extends ConsumerWidget {
  const PostActionsWidget({super.key, required this.child, required this.post});

  final Widget child;
  final Post post;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(postNotifierProvider(post.id).notifier);

    return Stack(
      fit: StackFit.expand,
      children: [
        child,
        Positioned(
          right: 8,
          bottom: 32,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: notifier.likePost,
                child: Column(
                  children: [
                    Icon(Icons.favorite_border, color: Theme.of(context).colorScheme.outline, size: 21),
                    Text(post.likesCount.toString()),
                  ],
                ),
              ),

              SizedBox(height: 16),

              Icon(Icons.chat_bubble_outline, color: Theme.of(context).colorScheme.outline, size: 21),
              Text(post.commentsCount.toString()),

              SizedBox(height: 16),

              Icon(Icons.all_inclusive, color: Theme.of(context).colorScheme.outline, size: 21),
              Text('0'),

              SizedBox(height: 16),

              Icon(Icons.send, color: Theme.of(context).colorScheme.outline, size: 21),
              Text('0'),
            ],
          ),
        ),
      ],
    );
  }
}
