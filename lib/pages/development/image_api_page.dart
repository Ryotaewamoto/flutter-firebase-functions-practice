import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_firebase_functions_practice/models/pixabay_data.dart';
import 'package:flutter_firebase_functions_practice/models/pixabay_res.dart';
import 'package:flutter_firebase_functions_practice/utils/constants/string.dart';
import 'package:flutter_firebase_functions_practice/utils/dio/dio.dart';
import 'package:flutter_firebase_functions_practice/utils/loading.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// 画像に関する API を使用したミニアプリ
class ImageApiPage extends HookConsumerWidget {
  const ImageApiPage({super.key});

  static const path = '/development/image-api';
  static const name = 'ImageApiPage';
  static const location = path;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<PixabayData>> pictureList =
        ref.watch(pictureListProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('ImageApiPage')),
      body: pictureList.when(
        data: (data) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4),
            itemCount: data.length,
            itemBuilder: (context, index) {
              final pixabayData = data[index];
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

// AsyncValue を使った書き方の方が良さそうやね
final pictureListProvider = FutureProvider<List<PixabayData>>((ref) async {
  // TODO: レスポンスが失敗した時の処理も書いておきたい
  // TODO: 書くとしたら Repository 層を作って書きたい

  // final response = await ref.watch(dioProvider(ApiType.pixabay)).get<dynamic>(
  //     'https://pixabay.com/api/?key=${dotenv.get('PIXABAY_APIKEY', fallback: null)}&q=yellow+flowers&image_type=photo');
  // 以下のようにも書ける
  final response = await ref.watch(dioProvider(ApiType.pixabay)).get<dynamic>(
    '/api',
    queryParameters: {
      'key': dotenv.get('PIXABAY_APIKEY', fallback: null),
      'q': 'yellow+flower',
      'image_type': 'photo'
    },
  );
  final pixabayRes = PixabayRes.fromJson(response.data);
  return pixabayRes.hits;
});
