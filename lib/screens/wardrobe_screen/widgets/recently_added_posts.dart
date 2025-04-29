import 'package:flutter/material.dart';
import 'package:test_routing/models/post.dart';
import 'package:test_routing/screens/wardrobe_screen/widgets/post_image.dart';

class RecentlyAddedPostsWidget extends StatelessWidget {
  const RecentlyAddedPostsWidget({super.key, required this.posts});

  final List<Post> posts;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.65,
          mainAxisSpacing: 24,
          crossAxisSpacing: 24,
        ),
        delegate: SliverChildBuilderDelegate((context, index) {
          final post = posts[index];
          return PostImageWidget(post: post);
        }, childCount: posts.length),
      ),
    );
  }
}
