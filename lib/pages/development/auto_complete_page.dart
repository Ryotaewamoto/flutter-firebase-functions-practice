import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Autocomplete : 検索内容に対して候補をサジェストしてくれる Widget
class AutoCompletePage extends HookConsumerWidget {
  const AutoCompletePage({super.key});

  static const path = '/development/auto-complete';
  static const name = 'AutoCompletePage';
  static const location = path;

  static const List<String> listItems = <String>[
    'apple',
    'banana',
    'melon',
    'lemon',
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('AutoCompletePage')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Autocomplete<String>(
              optionsBuilder: (textEditingValue) {
                if (textEditingValue.text == '') {
                  return const Iterable<String>.empty();
                }
                return listItems.where(
                  (String item) {
                    return item.contains(textEditingValue.text.toLowerCase());
                  },
                );
              },
              onSelected: (String item) {
                ref
                    .watch(autoCompleteSelectedTextProvider.notifier)
                    .update((state) => item);
              },
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              '検索内容: ${ref.watch(autoCompleteSelectedTextProvider)}',
            ),
          ],
        ),
      ),
    );
  }
}

final autoCompleteSelectedTextProvider = StateProvider<String>((ref) => '');
