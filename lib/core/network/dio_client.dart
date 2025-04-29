import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_routing/core/env/env.dart';

part 'dio_client.g.dart';

@riverpod
class DioClient extends _$DioClient {
  static final BaseOptions options = BaseOptions(
    baseUrl: Env.apiUrl,
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 15),
    headers: {'Content-Type': 'application/json'},
  );

  static final interceptors = [LogInterceptor(request: true, requestHeader: true, responseBody: true, error: true)];

  @override
  Dio build() {
    final dio = Dio(options);
    // dio.interceptors.addAll(interceptors);
    return dio;
  }
}
