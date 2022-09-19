import 'package:freezed_annotation/freezed_annotation.dart';

part 'pixabay_image.freezed.dart';
part 'pixabay_image.g.dart';

@freezed
class PixabayImage with _$PixabayImage {
  factory PixabayImage({
    // このコンストラクタに渡す引数の名前は HTTP レスポンスで返ってくる JSON データの
    // key の名前と一致させる必要がある。
    @Default('') String previewURL,
    @Default('') String user,
    @Default(0) int likes,
    // List<> hits,
  }) = _PixabayImage;

  factory PixabayImage.fromJson(Map<String, dynamic> json) =>
      _$PixabayImageFromJson(json);
}
