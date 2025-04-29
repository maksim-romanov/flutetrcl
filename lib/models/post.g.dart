// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Post _$PostFromJson(Map<String, dynamic> json) => _Post(
  id: json['id'] as String,
  author: User.fromJson(json['author'] as Map<String, dynamic>),
  image: PostImage.fromJson(json['image'] as Map<String, dynamic>),
  likesCount: (json['likesCount'] as num?)?.toInt() ?? 0,
  commentsCount: (json['commentsCount'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$PostToJson(_Post instance) => <String, dynamic>{
  'id': instance.id,
  'author': instance.author,
  'image': instance.image,
  'likesCount': instance.likesCount,
  'commentsCount': instance.commentsCount,
};
