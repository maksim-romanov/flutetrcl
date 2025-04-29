import 'package:flutter/material.dart';
import 'package:test_routing/models/post.dart';

class PostInfoWidget extends StatelessWidget {
  const PostInfoWidget({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(radius: 16, backgroundImage: NetworkImage(post.author.avatarUrl)),
            const SizedBox(width: 8),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(post.author.name, style: Theme.of(context).textTheme.titleSmall),
                Transform.translate(
                  offset: const Offset(0, 0),
                  child: Text("1 day ago", style: Theme.of(context).textTheme.bodySmall),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(post.image.text, style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}
