import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'firebase_options.dart';
import 'pages/not_found_page.dart';
import 'utils/global_key.dart';
import 'utils/routing/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RootNavigator(),
    );
  }
}

/// ウィジェットツリーの上位にある Navigator を含むウィジェット。
class RootNavigator extends HookConsumerWidget {
  const RootNavigator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Stack(
        children: [
          Navigator(
            key: ref.watch(globalKeyProvider),
            initialRoute: ref.watch(appRouterProvider).initialRoute,
            // Memo(iwamoto): onGenerateRoute: ref.watch(appRouterProvider).onGenerateRoute, としても良い
            onGenerateRoute: (settings) =>
                ref.watch(appRouterProvider).onGenerateRoute(settings),
            onUnknownRoute: (settings) {
              // Memo(iwamoto): https://zenn.dev/inari_sushio/articles/98a094b4faa6cc#route%EF%BC%88%E3%83%AB%E3%83%BC%E3%83%88%EF%BC%89%E5%85%A8%E4%BD%93%E5%83%8F
              // Route (抽象)クラスは、MaterialPageRoute (具象)クラスの親なので戻り値として問題ない。
              final route = MaterialPageRoute<void>(
                settings: settings,
                builder: (context) => const NotFoundPage(),
              );
              return route;
            },
          ),
          // if (ref.watch(overlayLoadingProvider)) const OverlayLoadingWidget(),
        ],
      ),
    );
  }
}
