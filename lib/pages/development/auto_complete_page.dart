import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Autocomplete : 検索内容に対して候補をサジェストしてくれる Widget
class AutoCompletePage extends HookConsumerWidget {
  const AutoCompletePage({super.key});

  static const path = '/development/auto-complete';
  static const name = 'AutoCompletePage';
  static const location = path;

  static const List<String> listItems = <String>[
    'りんご',
    'ばなな',
    'れもん',
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
                // 入力がない場合には空の Iterable<String> を返す
                if (textEditingValue.text == '') {
                  return const Iterable<String>.empty();
                }

                // 入力した文字を含むテキストがあった場合にその Iterable<String> を返す
                return listItems.where(
                  (String item) {
                    return item.contains(textEditingValue.text.toLowerCase());
                  },
                );
              },
              onSelected: (String item) {
                // 候補内のテキストが押された時の処理
                ref
                    .watch(autoCompleteSelectedTextProvider.notifier)
                    .update((state) => item);
              },
            ),
            const Gap(16),
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
