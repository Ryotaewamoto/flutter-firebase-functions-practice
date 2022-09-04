import 'package:flutter/material.dart';
import 'package:flutter_firebase_functions_practice/pages/second_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'third_page.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  static const path = '/home';
  static const name = 'HomePage';
  static const location = path;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('HomePage')),
      body: Column(
        children: [
          const Text('home page'),
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
