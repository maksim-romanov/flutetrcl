import './post_image.dart';
import './user.dart';

class Post {
  Post({
    required this.id,
    required this.likesCount,
    required this.commentsCount,
    required this.images,
    required this.author,
  });

  final String id;
  final int likesCount;
  final int commentsCount;
  final List<PostImage> images;
  final User author;
}
