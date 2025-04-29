import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_routing/models/post.dart';
import 'package:test_routing/providers/post_repository_provider.dart';

part 'my_posts_notifier.g.dart';

@riverpod
class MyPostsNotifier extends _$MyPostsNotifier {
  @override
  Future<List<Post>> build() {
    return ref.read(postRepositoryProvider).fetchMyPosts();
  }

  // add new post

  // delete post
}
