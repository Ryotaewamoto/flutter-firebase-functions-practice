// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pixabay_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PixabayImage _$$_PixabayImageFromJson(Map<String, dynamic> json) =>
    _$_PixabayImage(
      previewURL: json['previewURL'] as String? ?? '',
      user: json['user'] as String? ?? '',
      likes: json['likes'] as int? ?? 0,
    );

Map<String, dynamic> _$$_PixabayImageToJson(_$_PixabayImage instance) =>
    <String, dynamic>{
      'previewURL': instance.previewURL,
      'user': instance.user,
      'likes': instance.likes,
    };
