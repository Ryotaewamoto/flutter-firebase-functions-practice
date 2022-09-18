import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


final dioProvider = Provider.family<Dio, ApiType>((ref, apiType) {
  final dio = Dio()
    ..options = BaseOptions(
      baseUrl: apiType.baseUrl,
      connectTimeout: 5000,
      receiveTimeout: 3000,
      validateStatus: (_) => true,
    );
  return dio;
});

enum ApiType {
  pixabay(baseUrl: 'https://pixabay.com');

  const ApiType({
    required this.baseUrl,
  });

  final String baseUrl;
}
