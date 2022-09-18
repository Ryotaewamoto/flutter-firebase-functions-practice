import 'package:flutter_firebase_functions_practice/models/pixabay_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/api.dart';

part 'pixabay_res.freezed.dart';

@freezed
class PixabayRes with _$PixabayRes {
  factory PixabayRes({
    @Default(true) bool isSuccess,
    @Default('') String message,
    @Default(0) int total,
    @Default(0) int totalHits,
    @Default(<PixabayData>[]) List<PixabayData> hits,
  }) = _PixabayRes;


  factory PixabayRes.fromJson({
    required Map<String, dynamic> json,
    bool isSuccess = true,
    String message = '',
  }) {
    if (!isSuccess){

    }
    /// hits データに関する型変換を行ってからインスタンスを生成する。
    /// json['hits'] は HTTP レスポンスで dynamic 型で返ってくるので、
    /// リストに変換後、要素を Map<String, dynamic> 型を経由して PixabayData 型に変換する。
    final dynamicHits = json['hits'] as List<dynamic>;
    final hits = dynamicHits.map((e) => toResponseJson(e)).toList();
    final pixabayDataList =
        hits.map((data) => PixabayData.fromJson(data)).toList();

    return PixabayRes(
      isSuccess: isSuccess,
      message: message,
      total: json['total'],
      totalHits: json['totalHits'],
      hits: pixabayDataList,
    );
  }
}
