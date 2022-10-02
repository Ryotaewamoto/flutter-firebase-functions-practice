import 'package:flutter/material.dart';
import 'package:flutter_firebase_functions_practice/pages/development/auto_complete_page.dart';
import 'package:flutter_firebase_functions_practice/pages/development/image_api_page.dart';
import 'package:flutter_firebase_functions_practice/pages/development/pagination_page.dart';
import 'package:flutter_firebase_functions_practice/pages/development/printing_page.dart';
import 'package:flutter_firebase_functions_practice/pages/development/riverpod_practice.dart';
import 'package:flutter_firebase_functions_practice/pages/second_page.dart';
import 'package:flutter_firebase_functions_practice/pages/third_page.dart';

import '../../pages/bottom_tab/about_page.dart';
import '../../pages/bottom_tab/development_page.dart';
import '../../pages/bottom_tab/home_page.dart';
import '../../pages/development/storage_printing_page.dart';
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
    path: HomePage.path,
    name: HomePage.name,
    builder: (context, state) => const HomePage(key: ValueKey(HomePage.name)),
  ),
  AppRoute(
    path: DevelopmentPage.path,
    name: DevelopmentPage.name,
    builder: (context, state) =>
        const DevelopmentPage(key: ValueKey(DevelopmentPage.name)),
  ),
  AppRoute(
    path: AboutPage.path,
    name: AboutPage.name,
    builder: (context, state) => const AboutPage(key: ValueKey(AboutPage.name)),
  ),
  AppRoute(
    path: ImageApiPage.path,
    name: ImageApiPage.name,
    builder: (context, state) => const ImageApiPage(
      key: ValueKey(ImageApiPage.name),
    ),
  ),
  AppRoute(
    path: PrintingPage.path,
    name: PrintingPage.name,
    builder: (context, state) =>
        const PrintingPage(key: ValueKey(PrintingPage.name)),
  ),
  AppRoute(
    path: StoragePrintingPage.path,
    name: StoragePrintingPage.name,
    builder: (context, state) =>
        const StoragePrintingPage(key: ValueKey(StoragePrintingPage.name)),
  ),
  AppRoute(
    path: AutoCompletePage.path,
    name: AutoCompletePage.name,
    builder: (context, state) =>
        const AutoCompletePage(key: ValueKey(AutoCompletePage.name)),
  ),
  AppRoute(
    path: PaginationPage.path,
    name: PaginationPage.name,
    builder: (context, state) =>
        const PaginationPage(key: ValueKey(PaginationPage.name)),
  ),
  AppRoute(
    path: RiverpodPracticePage.path,
    name: RiverpodPracticePage.name,
    builder: (context, state) =>
        const RiverpodPracticePage(key: ValueKey(RiverpodPracticePage.name)),
  ),
  AppRoute(
    path: SecondPage.path,
    name: SecondPage.name,
    builder: (context, state) =>
        const SecondPage(key: ValueKey(SecondPage.name)),
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
