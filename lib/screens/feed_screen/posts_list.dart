import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_routing/models/post.dart';
import 'package:test_routing/screens/feed_screen/post_card.dart';

class PostsList extends StatelessWidget {
  const PostsList({super.key, required this.posts, this.scrollController});

  final List<Post> posts;
  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.65,
            mainAxisSpacing: 24,
            crossAxisSpacing: 0,
          ),
          delegate: SliverChildBuilderDelegate((context, index) {
            final post = posts[index];

            return GestureDetector(
              onTap: () {
                context.push('/posts/${post.id}');
                // context.router.navigate(PostRoute(postId: item.id));
              },
              child: PostCard(post: post),
            );
          }, childCount: posts.length),
        ),
      ],
    );
  }
}
