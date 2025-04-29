import 'package:flutter/material.dart';
import 'package:test_routing/models/post_image.dart';

class WardrobeImageWidget extends StatelessWidget {
  const WardrobeImageWidget({super.key, required this.image});

  final PostImage image;

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.network(image.imageUrl, fit: BoxFit.fill));
  }
}
