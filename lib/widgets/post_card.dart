import 'package:flutter/material.dart';
import 'package:test_routing/models/post.dart';

class FeedListItem extends StatelessWidget {
  final Post item;

  const FeedListItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final image = item.image;

    return Card(
      elevation: 0,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          // Image section
          Expanded(child: Image.network(image.imageUrl, fit: BoxFit.cover)),

          // Author and interaction section
          Padding(padding: const EdgeInsets.all(12), child: FeedItemInfo(item: item)),
        ],
      ),
    );
  }
}

class FeedItemInfo extends StatelessWidget {
  const FeedItemInfo({super.key, required this.item});

  final Post item;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Author avatar and name
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: CircleAvatar(radius: 16, backgroundImage: NetworkImage(item.author.avatarUrl)),
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
                          TextSpan(text: item.author.name),
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
                  Text(item.likesCount.toString(), style: Theme.of(context).textTheme.bodySmall),
                  SizedBox(width: 8),
                  Icon(Icons.comment, size: 16, color: Theme.of(context).colorScheme.onSurface),
                  SizedBox(width: 4),
                  Text(item.commentsCount.toString(), style: Theme.of(context).textTheme.bodySmall),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
