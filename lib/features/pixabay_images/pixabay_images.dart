import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/pixabay_res.dart';
import '../../repositories/api/pixabay_repository.dart';
import '../../utils/exceptions/base.dart';

/// Pixabay リポジトリの検索キーワードの TextEditingController を提供する Provider。
final searchWordTextEditingControllerProvider =
    Provider.autoDispose<TextEditingController>(
  (ref) => TextEditingController()..text = ref.watch(searchWordProvider),
);

/// Pixabay リポジトリの検索キーワードを管理する StateProvider。
final searchWordProvider =
    StateProvider.autoDispose<String>((_) => 'yellow+flower');

/// Pixabay の Images API をコールし、
/// そのレスポンスを提供する FutureProvider。
final searchPixabayImagesResProvider = FutureProvider.autoDispose<PixabayRes>((ref) async {
  final q = ref.watch(searchWordTextEditingControllerProvider).value.text;
  if (q.isEmpty) {
    throw const AppException(message: 'キーワードを入力してください。');
  }
  final pixabayRes = await ref.read(pixabayRepositoryProvider).searchPixabayImages(q: q);
  return pixabayRes;
});
