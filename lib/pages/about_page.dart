import 'package:flutter/material.dart';
import 'package:flutter_firebase_functions_practice/pages/second_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'third_page.dart';

class AboutPage extends HookConsumerWidget {
  const AboutPage({super.key});

  static const path = '/about';
  static const name = 'AboutPage';
  static const location = path;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('AboutPage')),
      body: Column(
        children: [
          const Text('about page'),
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
