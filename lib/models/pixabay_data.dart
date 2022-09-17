import 'package:freezed_annotation/freezed_annotation.dart';

part 'pixabay_data.freezed.dart';
part 'pixabay_data.g.dart';

@freezed
class PixabayData with _$PixabayData {
  factory PixabayData({
    // このコンストラクタに渡す引数の名前は HTTP レスポンスで返ってくる JSON データの
    // key の名前と一致させる必要がある。
    @Default('') String previewURL,
    @Default('') String user,
    @Default(0) int likes,
    // List<> hits,
  }) = _PixabayData;

  factory PixabayData.fromJson(Map<String, dynamic> json) => _$PixabayDataFromJson(json);
}
