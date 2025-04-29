import 'package:flutter/material.dart';
import 'package:test_routing/models/post.dart';
import 'package:test_routing/widgets/wardrobe_image.dart';

class PostCard extends StatelessWidget {
  final Post post;

  const PostCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    final image = post.image;

    return Card(
      elevation: 0,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          WardrobeImageWidget(image: image),

          // Author and interaction section
          Padding(padding: const EdgeInsets.all(12), child: PostCardInfo(post: post)),
        ],
      ),
    );
  }
}

class PostCardInfo extends StatelessWidget {
  const PostCardInfo({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Author avatar and name
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: CircleAvatar(radius: 16, backgroundImage: NetworkImage(post.author.avatarUrl)),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.bodyMedium,
                        children: [
                          TextSpan(text: post.author.name),
                          WidgetSpan(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4),
                              child: Icon(Icons.circle, size: 4, color: Theme.of(context).colorScheme.onSurface),
                            ),
                            alignment: PlaceholderAlignment.middle,
                          ),
                          TextSpan(text: "17h", style: Theme.of(context).textTheme.bodySmall),
                        ],
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              Text(
                "Vacation Style",
                style: Theme.of(context).textTheme.labelSmall,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 6),
              Row(
                children: [
                  Icon(Icons.favorite, size: 16, color: Theme.of(context).colorScheme.onSurface),
                  SizedBox(width: 4),
                  Text(post.likesCount.toString(), style: Theme.of(context).textTheme.bodySmall),
                  SizedBox(width: 8),
                  Icon(Icons.comment, size: 16, color: Theme.of(context).colorScheme.onSurface),
                  SizedBox(width: 4),
                  Text(post.commentsCount.toString(), style: Theme.of(context).textTheme.bodySmall),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
