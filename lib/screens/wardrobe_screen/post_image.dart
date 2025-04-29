import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_routing/models/post.dart';
import 'package:test_routing/widgets/wardrobe_image.dart';

class PostImageWidget extends StatelessWidget {
  const PostImageWidget({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push("/posts/${post.id}");
      },
      child: WardrobeImageWidget(image: post.image),
    );
  }
}
