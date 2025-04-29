import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_routing/core/extensions/riverpod_cache.dart';
import 'package:test_routing/models/post.dart';
import 'package:test_routing/providers/post_repository_provider.dart';

part 'post_notifier.g.dart';

@riverpod
class PostNotifier extends _$PostNotifier {
  @override
  Future<Post> build(String id) {
    ref.cacheFor(const Duration(minutes: 10));
    // ref.invalidateAfter(const Duration(minutes: 5));

    return ref.read(postRepositoryProvider).fetchPost(id);
  }

  // update post

  // add comment
}
