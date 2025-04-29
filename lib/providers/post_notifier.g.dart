// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postNotifierHash() => r'f13c64a653a9114cdd71f758c042230473c9b11d';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$PostNotifier extends BuildlessAutoDisposeAsyncNotifier<Post> {
  late final String id;

  FutureOr<Post> build(String id);
}

/// See also [PostNotifier].
@ProviderFor(PostNotifier)
const postNotifierProvider = PostNotifierFamily();

/// See also [PostNotifier].
class PostNotifierFamily extends Family<AsyncValue<Post>> {
  /// See also [PostNotifier].
  const PostNotifierFamily();

  /// See also [PostNotifier].
  PostNotifierProvider call(String id) {
    return PostNotifierProvider(id);
  }

  @override
  PostNotifierProvider getProviderOverride(
    covariant PostNotifierProvider provider,
  ) {
    return call(provider.id);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'postNotifierProvider';
}

/// See also [PostNotifier].
class PostNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<PostNotifier, Post> {
  /// See also [PostNotifier].
  PostNotifierProvider(String id)
    : this._internal(
        () => PostNotifier()..id = id,
        from: postNotifierProvider,
        name: r'postNotifierProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$postNotifierHash,
        dependencies: PostNotifierFamily._dependencies,
        allTransitiveDependencies:
            PostNotifierFamily._allTransitiveDependencies,
        id: id,
      );

  PostNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  FutureOr<Post> runNotifierBuild(covariant PostNotifier notifier) {
    return notifier.build(id);
  }

  @override
  Override overrideWith(PostNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: PostNotifierProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PostNotifier, Post> createElement() {
    return _PostNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostNotifierProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PostNotifierRef on AutoDisposeAsyncNotifierProviderRef<Post> {
  /// The parameter `id` of this provider.
  String get id;
}

class _PostNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PostNotifier, Post>
    with PostNotifierRef {
  _PostNotifierProviderElement(super.provider);

  @override
  String get id => (origin as PostNotifierProvider).id;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
