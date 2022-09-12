import 'package:flutter/material.dart';
import 'package:flutter_firebase_functions_practice/pages/second_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// 画像に関する API を使用したミニアプリ
class ImageApiPage extends HookConsumerWidget {
  const ImageApiPage({super.key});

  static const path = '/development/image-api';
  static const name = 'ImageApiPage';
  static const location = path;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('ImageApiPage')),
      body: Column(
        children: [
          const Text('image api page'),
        ],
      ),
    );
  }
}
