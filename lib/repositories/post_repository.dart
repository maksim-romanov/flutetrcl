import 'package:dio/dio.dart';

import 'package:test_routing/models/post.dart';

class PostRepository {
  final Dio _dio;
  PostRepository(this._dio);

  Future<List<Post>> fetchPosts() async {
    final resp = await _dio.get('/posts');
    final data = resp.data as List<dynamic>;
    return data.map((json) => Post.fromJson(json as Map<String, dynamic>)).toList();
  }

  Future<Post> fetchPost(String id) async {
    final resp = await _dio.get('/posts/$id');
    return Post.fromJson(resp.data as Map<String, dynamic>);
  }
}
