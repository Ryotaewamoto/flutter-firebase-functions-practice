import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../features/pixabay_images/pixabay_images.dart';
import '../../models/pixabay_res.dart';
import '../../utils/constants/string.dart';
import '../../utils/loading.dart';

// 画像に関する API を使用したミニアプリ
class ImageApiPage extends HookConsumerWidget {
  const ImageApiPage({super.key});

  static const path = '/development/image-api';
  static const name = 'ImageApiPage';
  static const location = path;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<PixabayRes> pictureList =
        ref.watch(searchPixabayImagesResProvider);
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
        error: (error, stackTrace) => Center(
          child: Text(error.toString()),
        ),
        loading: () => const OverlayLoadingWidget(),
      ),
    );
  }
}
