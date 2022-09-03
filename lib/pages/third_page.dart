import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../utils/global_key.dart';

class ThirdPage extends HookConsumerWidget {
  const ThirdPage({super.key});

  static const path = '/second/third';
  static const name = 'ThirdPage';
  static const location = path;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('ThirdPage')),
      body: Column(
        children: [
          Text(key.toString()),
          const Text('third page'),
          TextButton(
            onPressed: () {},
            child: const Text('次の画面に進む'),
          ),
          Text(ref.watch(globalKeyProvider).toString()),
          Text(ref.read(globalKeyProvider).currentState.toString())
        ],
      ),
    );
  }
}
