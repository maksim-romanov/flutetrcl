import 'package:freezed_annotation/freezed_annotation.dart';

import 'post_image.dart';
import 'user.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
abstract class Post with _$Post {
  const factory Post({
    required String id,
    required User author,
    required List<PostImage> images,

    @Default(0) int likesCount,
    @Default(0) int commentsCount,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
