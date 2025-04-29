import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../core/network/dio_client.dart';
import '../repositories/post_repository.dart';

part 'post_repository_provider.g.dart';

@riverpod
PostRepository postRepository(Ref ref) {
  final dio = ref.watch(dioClientProvider);
  return PostRepository(dio);
}
