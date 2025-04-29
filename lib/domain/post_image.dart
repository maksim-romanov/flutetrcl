import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_image.freezed.dart';
part 'post_image.g.dart';

@freezed
abstract class PostImage with _$PostImage {
  const factory PostImage({
    required String id,
    required String imageUrl,
    required String text,
    //
  }) = _PostImage;

  factory PostImage.fromJson(Map<String, dynamic> json) => _$PostImageFromJson(json);
}
