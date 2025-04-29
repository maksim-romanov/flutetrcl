// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Post _$PostFromJson(Map<String, dynamic> json) => _Post(
  id: json['id'] as String,
  author: User.fromJson(json['author'] as Map<String, dynamic>),
  images:
      (json['images'] as List<dynamic>)
          .map((e) => PostImage.fromJson(e as Map<String, dynamic>))
          .toList(),
  likesCount: (json['likesCount'] as num?)?.toInt() ?? 0,
  commentsCount: (json['commentsCount'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$PostToJson(_Post instance) => <String, dynamic>{
  'id': instance.id,
  'author': instance.author,
  'images': instance.images,
  'likesCount': instance.likesCount,
  'commentsCount': instance.commentsCount,
};
