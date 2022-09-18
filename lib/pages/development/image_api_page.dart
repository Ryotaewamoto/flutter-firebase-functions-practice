import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_firebase_functions_practice/models/pixabay_res.dart';
import 'package:flutter_firebase_functions_practice/utils/constants/string.dart';
import 'package:flutter_firebase_functions_practice/utils/dio/dio.dart';
import 'package:flutter_firebase_functions_practice/utils/loading.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../utils/exceptions/base.dart';

// 画像に関する API を使用したミニアプリ
class ImageApiPage extends HookConsumerWidget {
  const ImageApiPage({super.key});

  static const path = '/development/image-api';
  static const name = 'ImageApiPage';
  static const location = path;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<PixabayRes> pictureList =
        ref.watch(searchPixabayResProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('ImageApiPage')),
      body: pictureList.when(
        data: (data) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4),
            itemCount: data.hits.length,
            itemBuilder: (context, index) {
              final pixabayData = data.hits[index];
              return Image.network(pixabayData.previewURL);
            },
          );
        },
        error: (error, stackTrace) => const Center(
          child: Text(generalExceptionMessage),
        ),
        loading: () => const OverlayLoadingWidget(),
      ),
    );
  }
}

/// Pixabay リポジトリの検索キーワードの TextEditingController を提供する Provider。
final searchWordTextEditingControllerProvider =
    Provider.autoDispose<TextEditingController>(
  (ref) => TextEditingController()..text = ref.watch(searchWordProvider),
);

/// Pixabay リポジトリの検索キーワードを管理する StateProvider。
final searchWordProvider =
    StateProvider.autoDispose<String>((_) => 'yellow+flower');

/// Pixabay の Images API をコールし、
/// そのレスポンスを提供する FutureProvider。
final searchPixabayResProvider = FutureProvider.autoDispose<PixabayRes>((ref) async {
  // TODO: レスポンスが失敗した時の処理も書いておきたい

  final q = ref.watch(searchWordTextEditingControllerProvider).value.text;
  if (q.isEmpty) {
    throw const AppException(message: 'キーワードを入力してください。');
  }
  final response = await ref.watch(dioProvider(ApiType.pixabay)).get<dynamic>(
    '/api',
    queryParameters: {
      'key': dotenv.get('PIXABAY_API_KEY', fallback: null),
      'q': q,
      'image_type': 'photo'
    },
  );
  // 上記は以下のようにも書ける
  // final response = await ref.watch(dioProvider(ApiType.pixabay)).get<dynamic>(
  //     'https://pixabay.com/api/?key=${dotenv.get('PIXABAY_APIKEY', fallback: null)}&q=yellow+flowers&image_type=photo');

  // TODO: 上記を以下のようなに変更する
  // final response = await ref.read(pixabayRepositoryProvider).searchPixabayImages(q: q, page: page);
  final pixabayRes = PixabayRes.fromJson(response.data);
  return pixabayRes;
});
