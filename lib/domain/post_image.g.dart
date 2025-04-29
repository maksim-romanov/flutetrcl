// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostImage _$PostImageFromJson(Map<String, dynamic> json) => _PostImage(
  id: json['id'] as String,
  imageUrl: json['imageUrl'] as String,
  text: json['text'] as String,
);

Map<String, dynamic> _$PostImageToJson(_PostImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'text': instance.text,
    };
