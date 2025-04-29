// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_scroll_controller_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$customScrollControllerHash() =>
    r'a1b9a6afcd86eba1a4ab93f156a6ca6f49f4b45b';

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

/// See also [customScrollController].
@ProviderFor(customScrollController)
const customScrollControllerProvider = CustomScrollControllerFamily();

/// See also [customScrollController].
class CustomScrollControllerFamily extends Family<ScrollController> {
  /// See also [customScrollController].
  const CustomScrollControllerFamily();

  /// See also [customScrollController].
  CustomScrollControllerProvider call({
    required Future<void> Function() onLoadMore,
    double threshold = 200.0,
  }) {
    return CustomScrollControllerProvider(
      onLoadMore: onLoadMore,
      threshold: threshold,
    );
  }

  @override
  CustomScrollControllerProvider getProviderOverride(
    covariant CustomScrollControllerProvider provider,
  ) {
    return call(onLoadMore: provider.onLoadMore, threshold: provider.threshold);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'customScrollControllerProvider';
}

/// See also [customScrollController].
class CustomScrollControllerProvider
    extends AutoDisposeProvider<ScrollController> {
  /// See also [customScrollController].
  CustomScrollControllerProvider({
    required Future<void> Function() onLoadMore,
    double threshold = 200.0,
  }) : this._internal(
         (ref) => customScrollController(
           ref as CustomScrollControllerRef,
           onLoadMore: onLoadMore,
           threshold: threshold,
         ),
         from: customScrollControllerProvider,
         name: r'customScrollControllerProvider',
         debugGetCreateSourceHash:
             const bool.fromEnvironment('dart.vm.product')
                 ? null
                 : _$customScrollControllerHash,
         dependencies: CustomScrollControllerFamily._dependencies,
         allTransitiveDependencies:
             CustomScrollControllerFamily._allTransitiveDependencies,
         onLoadMore: onLoadMore,
         threshold: threshold,
       );

  CustomScrollControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.onLoadMore,
    required this.threshold,
  }) : super.internal();

  final Future<void> Function() onLoadMore;
  final double threshold;

  @override
  Override overrideWith(
    ScrollController Function(CustomScrollControllerRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CustomScrollControllerProvider._internal(
        (ref) => create(ref as CustomScrollControllerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        onLoadMore: onLoadMore,
        threshold: threshold,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<ScrollController> createElement() {
    return _CustomScrollControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CustomScrollControllerProvider &&
        other.onLoadMore == onLoadMore &&
        other.threshold == threshold;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, onLoadMore.hashCode);
    hash = _SystemHash.combine(hash, threshold.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CustomScrollControllerRef on AutoDisposeProviderRef<ScrollController> {
  /// The parameter `onLoadMore` of this provider.
  Future<void> Function() get onLoadMore;

  /// The parameter `threshold` of this provider.
  double get threshold;
}

class _CustomScrollControllerProviderElement
    extends AutoDisposeProviderElement<ScrollController>
    with CustomScrollControllerRef {
  _CustomScrollControllerProviderElement(super.provider);

  @override
  Future<void> Function() get onLoadMore =>
      (origin as CustomScrollControllerProvider).onLoadMore;
  @override
  double get threshold => (origin as CustomScrollControllerProvider).threshold;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
