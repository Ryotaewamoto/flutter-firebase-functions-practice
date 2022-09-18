import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_firebase_functions_practice/models/pixabay_res.dart';
import 'package:flutter_firebase_functions_practice/utils/constants/string.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../utils/dio/dio.dart';
import '../../utils/exceptions/api.dart';

final pixabayRepositoryProvider = Provider.autoDispose(
  (ref) => PixabayRepository(
    dio: ref.watch(dioProvider(ApiType.pixabay)),
  ),
);

class PixabayRepository {
  const PixabayRepository({
    required this.dio,
  });

  final Dio dio;

  Future<PixabayRes> searchPixabayImages({
    required String q,
  }) async {
    try {
      final response = await dio.get<dynamic>(
        '/api',
        queryParameters: {
          'key': dotenv.get('PIXABAY_API_KEY', fallback: null),
          'q': q,
          'image_type': 'photo'
        },
      );
      final statusCode = response.statusCode;
      final statusMessage = response.statusMessage;

      if (statusCode == 400) {
        throw ApiException(message: statusMessage);
      }
      if (statusCode == 401) {
        throw UnauthorizedException(message: statusMessage);
      }
      if (statusCode == 403) {
        throw ForbiddenException(message: statusMessage);
      }
      if (statusCode == 404) {
        throw ApiNotFoundException(message: statusMessage);
      }
      // statusCode が null のときはとりあえず 400 番扱いで良いか確認が必要
      // そもそも、それがどのような場合かは特定できていない。
      if ((statusCode ?? 400) >= 400) {
        throw ApiException(message: statusMessage);
      }
      final pixabayRes = PixabayRes.fromJson(json: response.data);
      return pixabayRes;
    } on ApiException catch (e) {
      return PixabayRes.fromJson(
        json: {},
        isSuccess: false,
        message: e.message ?? generalExceptionMessage,
      );
    }
  }
}
