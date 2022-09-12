import 'package:flutter/material.dart';
import 'package:flutter_firebase_functions_practice/pages/second_page.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../third_page.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  static const path = '/home';
  static const name = 'HomePage';
  static const location = path;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('HomePage')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: const [
                Text(
                  'このアプリについて',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Gap(8),
            const Text(
              '''
このアプリは Riverpod, Flutter Hooks, Firebae を使用した開発向けアプリです。

基本的な Riverpod の使い方から、Firebase との連携、Web API の利用, Flutter Hooksの使い方や
あまり知られていない便利な Widget など、Flutter でアプリ開発をする上で必要な知識をこの一個のアプリに詰まっています。
ぜひ皆さんの Flutter アプリ開発に役立ててください！
''',
              softWrap: true,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed<void>(
                  context,
                  SecondPage.location,
                );
              },
              child: const Text('次の画面に進む'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed<void>(
                  context,
                  ThirdPage.location,
                );
              },
              child: const Text('ふたつ先の画面に進む'),
            ),
          ],
        ),
      ),
    );
  }
}
