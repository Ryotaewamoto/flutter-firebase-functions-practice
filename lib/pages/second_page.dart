import 'package:flutter/material.dart';
import 'package:flutter_firebase_functions_practice/pages/third_page.dart';
import 'package:flutter_firebase_functions_practice/utils/global_key.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SecondPage extends HookConsumerWidget {
  const SecondPage({super.key});

  static const path = '/second';
  static const name = 'SecondPage';
  static const location = path;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('SecondPage')),
      body: Column(
        children: [
          Text(key.toString()),
          const Text('second page'),
          TextButton(
            onPressed: () {
              Navigator.pushNamed<void>(
                context,
                ThirdPage.location,
              );
            },
            child: const Text('次の画面に進む'),
          ),
          TextButton(
            onPressed: () {
              ref
                  .watch(globalKeyProvider)
                  .currentState!
                  .pushNamed('/second/third');
            },
            child: const Text('初めの画面に進む'),
          ),
          Text(ref.watch(globalKeyProvider).toString()),
          Text(ref.read(globalKeyProvider).currentState.toString())
        ],
      ),
    );
  }
}
