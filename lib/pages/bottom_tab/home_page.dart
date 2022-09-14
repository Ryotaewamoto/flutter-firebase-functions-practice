import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
            const Gap(16),
            Row(
              children: const [
                Text(
                  'これから実装予定',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                Text(
                  '''
・Stripe
・Algolia
''',
                  softWrap: true,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
