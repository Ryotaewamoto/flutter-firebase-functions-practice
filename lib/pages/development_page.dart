import 'package:flutter/material.dart';
import 'package:flutter_firebase_functions_practice/utils/global_key.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DevelopmentPage extends HookConsumerWidget {
  const DevelopmentPage({super.key});

  static const path = '/development';
  static const name = 'DevelopmentPage';
  static const location = path;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('DevelopmentPage')),
      body: Column(
        children: [
          Text(key.toString()),
          const Text('development page'),
          Text(ref.watch(globalKeyProvider).toString()),
          Text(ref.read(globalKeyProvider).currentState.toString())
        ],
      ),
    );
  }
}
