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

  /// Pixabay でがぞうを検索する関数
  /// String のパラメータ q は検索する文字列
  Future<PixabayRes> searchPixabayImages({
    required String q,
  }) async {
    try {
      // q にスペースが含まれる場合、クエリパラメータとして適切な文字列に変換する。
      final queryParameter = _validateQueryParameter(q);
      final response = await dio.get<dynamic>(
        '/api',
        queryParameters: {
          'key': dotenv.get('PIXABAY_API_KEY', fallback: null),
          'q': queryParameter,
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

  String _validateQueryParameter(String text) {
    // テキストの始めと終わりにあるスペースを削除する。
    final trimmedText = text.trim();

    // スペースが含まれない場合はそのまま返す。
    if (!trimmedText.contains(' ') && !trimmedText.contains('　')) {
      return trimmedText;
    }

    // 半角スペースが含まれる場合
    if (!trimmedText.contains('　')) {
      final separatedTexts = trimmedText.split(' ');
      String q = separatedTexts[0];
      for (final text in separatedTexts) {
        if (text == q) {
          // 初めの文字に対して処理を行わない。
        } else {
          q = '$q\+$text';
        }
      }
      return q;
    }

    // 全角スペースが含まれる場合
    final weekSeparatedTexts = trimmedText.split(' ');
    List<String> strengthSeparatedTexts = [];
    for (final text in weekSeparatedTexts) {
      if (text.contains('　')) {
        final elementSeparatedTexts = text.split('　');
        for (final text in elementSeparatedTexts) {
          strengthSeparatedTexts.add(text);
        }
      } else {
        strengthSeparatedTexts.add(text);
      }
    }
    String q = strengthSeparatedTexts[0];
    for (final text in strengthSeparatedTexts) {
      if (text == q) {
        // 初めの文字に対して処理を行わない。
      } else {
        q = '$q\+$text';
      }
    }
    print('queryParameter: $q');
    return q;
  }
}
