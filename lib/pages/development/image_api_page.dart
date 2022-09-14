import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
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
    final AsyncValue<List<dynamic>?> pictureList =
        ref.watch(pictureListProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('ImageApiPage')),
      body: pictureList.when(
        data: (data) => GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4),
            itemCount: ref.watch(pictureListProvider).value!.length,
            itemBuilder: (context, index) {
              Map<String, dynamic> hit =
                  ref.watch(pictureListProvider).value![index];
              return Image.network(hit['previewURL']);
            }),
        error: (error, stackTrace) =>
            const Center(child: Text(generalExceptionMessage)),
        loading: () => const OverlayLoadingWidget(),
      ),
    );
  }
}

// AsyncValue を使った書き方の方が良さそうやね
final pictureListProvider = FutureProvider<List<dynamic>?>((ref) async {
  // レスポンスが失敗した時の処理も書いておきたい
  final response = await ref.watch(dioProvider(ApiType.pixabay)).get(
      'https://pixabay.com/api/?key=${dotenv.get('PIXABAY_APIKEY', fallback: null)}&q=yellow+flowers&image_type=photo');
  return response.data['hits'];
});
