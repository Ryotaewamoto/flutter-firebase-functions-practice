import 'package:flutter/material.dart';
import 'package:flutter_firebase_functions_practice/pages/second_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'third_page.dart';

class MainPage extends HookConsumerWidget {
  const MainPage({super.key});

  static const path = '/';
  static const name = 'MainPage';
  static const location = path;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('MainPage')),
      body: Column(
        children: [
          const Text('main page'),
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
    );
  }
}
