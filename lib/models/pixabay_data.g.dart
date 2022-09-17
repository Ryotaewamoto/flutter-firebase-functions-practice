// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pixabay_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PixabayData _$$_PixabayDataFromJson(Map<String, dynamic> json) =>
    _$_PixabayData(
      previewURL: json['previewURL'] as String? ?? '',
      user: json['user'] as String? ?? '',
      likes: json['likes'] as int? ?? 0,
    );

Map<String, dynamic> _$$_PixabayDataToJson(_$_PixabayData instance) =>
    <String, dynamic>{
      'previewURL': instance.previewURL,
      'user': instance.user,
      'likes': instance.likes,
    };
