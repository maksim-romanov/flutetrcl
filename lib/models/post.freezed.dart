// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Post {

 String get id; User get author; PostImage get image; int get likesCount; int get commentsCount;
/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostCopyWith<Post> get copyWith => _$PostCopyWithImpl<Post>(this as Post, _$identity);

  /// Serializes this Post to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Post&&(identical(other.id, id) || other.id == id)&&(identical(other.author, author) || other.author == author)&&(identical(other.image, image) || other.image == image)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount)&&(identical(other.commentsCount, commentsCount) || other.commentsCount == commentsCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,author,image,likesCount,commentsCount);

@override
String toString() {
  return 'Post(id: $id, author: $author, image: $image, likesCount: $likesCount, commentsCount: $commentsCount)';
}


}

/// @nodoc
abstract mixin class $PostCopyWith<$Res>  {
  factory $PostCopyWith(Post value, $Res Function(Post) _then) = _$PostCopyWithImpl;
@useResult
$Res call({
 String id, User author, PostImage image, int likesCount, int commentsCount
});


$UserCopyWith<$Res> get author;$PostImageCopyWith<$Res> get image;

}
/// @nodoc
class _$PostCopyWithImpl<$Res>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._self, this._then);

  final Post _self;
  final $Res Function(Post) _then;

/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? author = null,Object? image = null,Object? likesCount = null,Object? commentsCount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as User,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as PostImage,likesCount: null == likesCount ? _self.likesCount : likesCount // ignore: cast_nullable_to_non_nullable
as int,commentsCount: null == commentsCount ? _self.commentsCount : commentsCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get author {
  
  return $UserCopyWith<$Res>(_self.author, (value) {
    return _then(_self.copyWith(author: value));
  });
}/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostImageCopyWith<$Res> get image {
  
  return $PostImageCopyWith<$Res>(_self.image, (value) {
    return _then(_self.copyWith(image: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Post implements Post {
  const _Post({required this.id, required this.author, required this.image, this.likesCount = 0, this.commentsCount = 0});
  factory _Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

@override final  String id;
@override final  User author;
@override final  PostImage image;
@override@JsonKey() final  int likesCount;
@override@JsonKey() final  int commentsCount;

/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostCopyWith<_Post> get copyWith => __$PostCopyWithImpl<_Post>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Post&&(identical(other.id, id) || other.id == id)&&(identical(other.author, author) || other.author == author)&&(identical(other.image, image) || other.image == image)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount)&&(identical(other.commentsCount, commentsCount) || other.commentsCount == commentsCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,author,image,likesCount,commentsCount);

@override
String toString() {
  return 'Post(id: $id, author: $author, image: $image, likesCount: $likesCount, commentsCount: $commentsCount)';
}


}

/// @nodoc
abstract mixin class _$PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$PostCopyWith(_Post value, $Res Function(_Post) _then) = __$PostCopyWithImpl;
@override @useResult
$Res call({
 String id, User author, PostImage image, int likesCount, int commentsCount
});


@override $UserCopyWith<$Res> get author;@override $PostImageCopyWith<$Res> get image;

}
/// @nodoc
class __$PostCopyWithImpl<$Res>
    implements _$PostCopyWith<$Res> {
  __$PostCopyWithImpl(this._self, this._then);

  final _Post _self;
  final $Res Function(_Post) _then;

/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? author = null,Object? image = null,Object? likesCount = null,Object? commentsCount = null,}) {
  return _then(_Post(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as User,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as PostImage,likesCount: null == likesCount ? _self.likesCount : likesCount // ignore: cast_nullable_to_non_nullable
as int,commentsCount: null == commentsCount ? _self.commentsCount : commentsCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get author {
  
  return $UserCopyWith<$Res>(_self.author, (value) {
    return _then(_self.copyWith(author: value));
  });
}/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostImageCopyWith<$Res> get image {
  
  return $PostImageCopyWith<$Res>(_self.image, (value) {
    return _then(_self.copyWith(image: value));
  });
}
}

// dart format on
