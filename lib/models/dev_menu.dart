import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dev_menu.freezed.dart';

@freezed
class DevMenu with _$DevMenu {
  const factory DevMenu({
    @Default('title') String title,
    @Default('description') String description,
    @Default(Colors.lightGreen) Color color,
    required String location,
  }) = _DevMenu;
}
