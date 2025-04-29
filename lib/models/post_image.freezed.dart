// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostImage {

 String get id; String get imageUrl; String get text;
/// Create a copy of PostImage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostImageCopyWith<PostImage> get copyWith => _$PostImageCopyWithImpl<PostImage>(this as PostImage, _$identity);

  /// Serializes this PostImage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostImage&&(identical(other.id, id) || other.id == id)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,imageUrl,text);

@override
String toString() {
  return 'PostImage(id: $id, imageUrl: $imageUrl, text: $text)';
}


}

/// @nodoc
abstract mixin class $PostImageCopyWith<$Res>  {
  factory $PostImageCopyWith(PostImage value, $Res Function(PostImage) _then) = _$PostImageCopyWithImpl;
@useResult
$Res call({
 String id, String imageUrl, String text
});




}
/// @nodoc
class _$PostImageCopyWithImpl<$Res>
    implements $PostImageCopyWith<$Res> {
  _$PostImageCopyWithImpl(this._self, this._then);

  final PostImage _self;
  final $Res Function(PostImage) _then;

/// Create a copy of PostImage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? imageUrl = null,Object? text = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PostImage implements PostImage {
  const _PostImage({required this.id, required this.imageUrl, required this.text});
  factory _PostImage.fromJson(Map<String, dynamic> json) => _$PostImageFromJson(json);

@override final  String id;
@override final  String imageUrl;
@override final  String text;

/// Create a copy of PostImage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostImageCopyWith<_PostImage> get copyWith => __$PostImageCopyWithImpl<_PostImage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostImageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostImage&&(identical(other.id, id) || other.id == id)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,imageUrl,text);

@override
String toString() {
  return 'PostImage(id: $id, imageUrl: $imageUrl, text: $text)';
}


}

/// @nodoc
abstract mixin class _$PostImageCopyWith<$Res> implements $PostImageCopyWith<$Res> {
  factory _$PostImageCopyWith(_PostImage value, $Res Function(_PostImage) _then) = __$PostImageCopyWithImpl;
@override @useResult
$Res call({
 String id, String imageUrl, String text
});




}
/// @nodoc
class __$PostImageCopyWithImpl<$Res>
    implements _$PostImageCopyWith<$Res> {
  __$PostImageCopyWithImpl(this._self, this._then);

  final _PostImage _self;
  final $Res Function(_PostImage) _then;

/// Create a copy of PostImage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? imageUrl = null,Object? text = null,}) {
  return _then(_PostImage(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
