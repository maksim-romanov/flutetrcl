import 'package:flutter/material.dart';
import 'package:test_routing/models/post.dart';

class PostActionsWidget extends StatelessWidget {
  const PostActionsWidget({super.key, required this.child, required this.post});

  final Widget child;
  final Post post;

  @override
  Widget build(BuildContext context) {
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
              Icon(Icons.favorite_border, color: Theme.of(context).colorScheme.outline, size: 21),
              Text(post.likesCount.toString()),

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
