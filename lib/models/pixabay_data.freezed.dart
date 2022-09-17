// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pixabay_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PixabayData _$PixabayDataFromJson(Map<String, dynamic> json) {
  return _PixabayData.fromJson(json);
}

/// @nodoc
mixin _$PixabayData {
  String get previewURL => throw _privateConstructorUsedError;
  String get user => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PixabayDataCopyWith<PixabayData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PixabayDataCopyWith<$Res> {
  factory $PixabayDataCopyWith(
          PixabayData value, $Res Function(PixabayData) then) =
      _$PixabayDataCopyWithImpl<$Res>;
  $Res call({String previewURL, String user, int likes});
}

/// @nodoc
class _$PixabayDataCopyWithImpl<$Res> implements $PixabayDataCopyWith<$Res> {
  _$PixabayDataCopyWithImpl(this._value, this._then);

  final PixabayData _value;
  // ignore: unused_field
  final $Res Function(PixabayData) _then;

  @override
  $Res call({
    Object? previewURL = freezed,
    Object? user = freezed,
    Object? likes = freezed,
  }) {
    return _then(_value.copyWith(
      previewURL: previewURL == freezed
          ? _value.previewURL
          : previewURL // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_PixabayDataCopyWith<$Res>
    implements $PixabayDataCopyWith<$Res> {
  factory _$$_PixabayDataCopyWith(
          _$_PixabayData value, $Res Function(_$_PixabayData) then) =
      __$$_PixabayDataCopyWithImpl<$Res>;
  @override
  $Res call({String previewURL, String user, int likes});
}

/// @nodoc
class __$$_PixabayDataCopyWithImpl<$Res> extends _$PixabayDataCopyWithImpl<$Res>
    implements _$$_PixabayDataCopyWith<$Res> {
  __$$_PixabayDataCopyWithImpl(
      _$_PixabayData _value, $Res Function(_$_PixabayData) _then)
      : super(_value, (v) => _then(v as _$_PixabayData));

  @override
  _$_PixabayData get _value => super._value as _$_PixabayData;

  @override
  $Res call({
    Object? previewURL = freezed,
    Object? user = freezed,
    Object? likes = freezed,
  }) {
    return _then(_$_PixabayData(
      previewURL: previewURL == freezed
          ? _value.previewURL
          : previewURL // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PixabayData implements _PixabayData {
  _$_PixabayData({this.previewURL = '', this.user = '', this.likes = 0});

  factory _$_PixabayData.fromJson(Map<String, dynamic> json) =>
      _$$_PixabayDataFromJson(json);

  @override
  @JsonKey()
  final String previewURL;
  @override
  @JsonKey()
  final String user;
  @override
  @JsonKey()
  final int likes;

  @override
  String toString() {
    return 'PixabayData(previewURL: $previewURL, user: $user, likes: $likes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PixabayData &&
            const DeepCollectionEquality()
                .equals(other.previewURL, previewURL) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.likes, likes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(previewURL),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(likes));

  @JsonKey(ignore: true)
  @override
  _$$_PixabayDataCopyWith<_$_PixabayData> get copyWith =>
      __$$_PixabayDataCopyWithImpl<_$_PixabayData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PixabayDataToJson(
      this,
    );
  }
}

abstract class _PixabayData implements PixabayData {
  factory _PixabayData(
      {final String previewURL,
      final String user,
      final int likes}) = _$_PixabayData;

  factory _PixabayData.fromJson(Map<String, dynamic> json) =
      _$_PixabayData.fromJson;

  @override
  String get previewURL;
  @override
  String get user;
  @override
  int get likes;
  @override
  @JsonKey(ignore: true)
  _$$_PixabayDataCopyWith<_$_PixabayData> get copyWith =>
      throw _privateConstructorUsedError;
}
