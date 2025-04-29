import 'package:flutter/material.dart';
import 'package:test_routing/models/post.dart';
import 'package:test_routing/screens/wardrobe_screen/card_placeholder.dart';
import 'package:test_routing/screens/wardrobe_screen/post_image.dart';

class MyPostsWidget extends StatelessWidget {
  const MyPostsWidget({super.key, required this.posts, required this.isLoading});

  final List<Post> posts;
  final bool isLoading;

  List<Widget> get slivers => [];

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.65,
          mainAxisSpacing: 24,
          crossAxisSpacing: 24,
        ),
        delegate: SliverChildBuilderDelegate((context, index) {
          if (index == 0) {
            if (isLoading) return const Center(child: CircularProgressIndicator());
            return CardPlaceholderWidget(onTap: () {});
          }

          final post = posts[index - 1];
          return PostImageWidget(post: post);
        }, childCount: posts.length + 1),
      ),
    );
  }
}
