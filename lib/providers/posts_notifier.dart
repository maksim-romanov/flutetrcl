import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_routing/models/post.dart';
import 'package:test_routing/providers/post_repository_provider.dart';

part 'posts_notifier.g.dart';

@riverpod
class PostsNotifier extends _$PostsNotifier {
  @override
  Future<List<Post>> build() {
    return ref.read(postRepositoryProvider).fetchPosts();
  }

  // add new post

  // delete post
}
