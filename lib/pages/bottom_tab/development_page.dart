import 'package:flutter/material.dart';
import 'package:flutter_firebase_functions_practice/features/dev_menus/dev_menus.dart';
import 'package:flutter_firebase_functions_practice/utils/extensions/string.dart';
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
      body: ListView.builder(
        itemCount: devMenus.length,
        itemBuilder: (context, index) {
          final devMenu = devMenus[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed<void>(
                context,
                devMenu.location,
              );
            },
            child: ListTile(
              title: Text(devMenu.title),
              subtitle: Text(devMenu.description.truncated(40)),
              leading: CircleAvatar(radius: 16, backgroundColor: devMenu.color),
            ),
          );
        },
      ),
    );
  }
}
