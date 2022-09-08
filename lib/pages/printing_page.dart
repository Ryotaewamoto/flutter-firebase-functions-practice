import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PrintingPage extends HookConsumerWidget {
  const PrintingPage({super.key});

  static const path = '/development/printing';
  static const name = 'PrintingPage';
  static const location = path;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('PrintingPage')),
      body: Column(
        children: [
          const Text('printing page'),
        ],
      ),
    );
  }
}
