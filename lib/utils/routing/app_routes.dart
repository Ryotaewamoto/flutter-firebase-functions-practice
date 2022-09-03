import 'package:flutter/material.dart';
import 'package:flutter_firebase_functions_practice/pages/second_page.dart';
import 'package:flutter_firebase_functions_practice/pages/third_page.dart';

import '../../pages/main_page.dart';
import 'app_route.dart';

/// AppRoute インスタンスの一覧
/// 各ページのコンストラクタに引数を渡さない済むように、そのような場合は ProviderScope.override で
/// appRouterStateProvider の値をオーバーライドして、各画面を AppState をオーバーライドされた
/// Provider 経由で取得するようにする。
final appRoutes = <AppRoute>[
  AppRoute(
    path: MainPage.path,
    name: MainPage.name,
    builder: (context, state) => const MainPage(key: ValueKey(MainPage.name)),
  ),
  AppRoute(
    path: SecondPage.path,
    name: SecondPage.name,
    builder: (context, state) => const SecondPage(key: ValueKey(SecondPage.name)),
  ),
  AppRoute(
    path: ThirdPage.path,
    name: ThirdPage.name,
    builder: (context, state) => const ThirdPage(key: ValueKey(ThirdPage.name)),
  ),
  // AppRoute(
  //   path: RoomPage.path,
  //   name: RoomPage.name,
  //   builder: (context, state) => ProviderScope(
  //     overrides: <Override>[appRouterStateProvider.overrideWithValue(state)],
  //     child: const RoomPage(
  //       key: ValueKey(RoomPage.name),
  //     ),
  //   ),
  // ),
  // AppRoute(
  //   path: NotFoundPage.path,
  //   name: NotFoundPage.name,
  //   builder: (context, state) =>
  //       const NotFoundPage(key: ValueKey(NotFoundPage.name)),
  // ),
  // AppRoute(
  //   path: TestNotificationPage.path,
  //   name: TestNotificationPage.name,
  //   builder: (context, state) =>
  //       const TestNotificationPage(key: ValueKey(TestNotificationPage.name)),
  // ),
  // AppRoute(
  //   path: VotingPage.path,
  //   name: VotingPage.name,
  //   builder: (context, state) => ProviderScope(
  //     overrides: <Override>[appRouterStateProvider.overrideWithValue(state)],
  //     child: const VotingPage(key: ValueKey(VotingPage.name)),
  //   ),
  // ),
  // AppRoute(
  //   path: ResultPage.path,
  //   name: ResultPage.name,
  //   builder: (context, state) => ProviderScope(
  //     overrides: <Override>[appRouterStateProvider.overrideWithValue(state)],
  //     child: const ResultPage(key: ValueKey(ResultPage.name)),
  //   ),
  // ),
];
